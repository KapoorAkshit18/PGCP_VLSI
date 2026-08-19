# Zynq-7000 EMIO GPIO LED Control using PetaLinux

This project demonstrates the integration of a **Zynq-7000 Processing System (PS) GPIO routed through EMIO to a PL I/O pin**, with the final objective of controlling an external LED from a **PetaLinux userspace C application**.

The project follows the complete hardware/software flow:

**Vivado hardware design → PS GPIO/EMIO → PL external port → T22 LED → XSA → PetaLinux → Linux GPIO → C application**

The hardware portion has been successfully implemented and verified: the LED connected to **T22 blinks when the FPGA design is loaded**. The remaining work is to complete Linux boot/login and verify userspace GPIO control from the PetaLinux application.

---

## Project Status

| Component                       | Status                     |
| ------------------------------- | -------------------------- |
| Zynq-7000 PS configuration      | Completed                  |
| PS GPIO through EMIO            | Completed                  |
| EMIO GPIO routed to PL          | Completed                  |
| External LED connection         | Completed                  |
| T22 pin assignment              | Completed                  |
| Vivado bitstream generation     | Completed                  |
| XSA generation                  | Completed                  |
| PetaLinux hardware update       | Completed                  |
| `BOOT.BIN` generation           | Completed                  |
| `image.ub` generation           | Completed                  |
| SD card preparation             | Completed                  |
| FPGA configuration from SD card | Verified                   |
| LED hardware operation          | **Verified**               |
| PetaLinux Linux login           | **Not yet reached**        |
| Linux GPIO enumeration          | Pending                    |
| Userspace C LED application     | Pending final verification |

---

# Part 1: Vivado Hardware Design

## 1. Configure the Zynq Processing System

Open the Vivado Block Design and double-click:

**ZYNQ7 Processing System**

Navigate to:

**MIO Configuration → I/O Peripherals → GPIO**

Configure the GPIO to use **EMIO** rather than an MIO pin.

For this project, at least one GPIO output is required for controlling the LED.

The intended signal path is:

```text
ZYNQ7 Processing System
        |
        | GPIO EMIO
        v
     GPIO Output
        |
        v
   PL External Port
        |
        v
      T22
        |
       LED
```

The exact name of the generated external port depends on the Vivado block-design configuration.

Therefore, the port name must be taken from the actual Vivado design rather than assumed.

---

## 2. Remove the Previous RTL Blink Generator

The original LED demonstration used a dedicated RTL blink generator.

Conceptually, the previous architecture was:

```text
Processing System
       |
       v
 led_blink_0
       |
       v
      LED
```

For the PetaLinux-based implementation, the RTL blink generator is removed.

The new architecture is:

```text
Processing System
       |
   PS GPIO
       |
      EMIO
       |
       v
   PL GPIO Port
       |
       v
      T22
       |
      LED
```

This allows the LED to eventually be controlled by software running on the ARM processor.

---

## 3. Connect the EMIO GPIO to the External Port

Expose the required GPIO output from the Zynq PS as an external port.

The resulting connection should conceptually be:

```text
ZYNQ7 Processing System
          |
          | GPIO EMIO
          |
          v
       GPIO_O
          |
          v
    External Port
          |
          v
         T22
```

Run:

**Validate Design**

and resolve any connectivity errors before generating the bitstream.

---

## 4. Assign the T22 FPGA Pin

The external LED port must be assigned to the physical FPGA pin T22.

For example, if the generated external port is `led_0`:

```tcl
set_property PACKAGE_PIN T22 [get_ports led_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_0]
```

The actual port name must match the Vivado-generated top-level port.

Do not assume that the port will always be named:

```text
led_0_tri_io[0]
```

Check the generated wrapper/top-level ports in Vivado before applying the constraint.

---

## 5. Generate the Hardware

After completing the hardware design:

1. Validate the block design.
2. Create the HDL wrapper.
3. Set the wrapper as the top-level module.
4. Run synthesis/implementation as required.
5. Generate the bitstream.
6. Export the hardware platform.
7. Include the generated bitstream in the XSA.

The resulting file is typically:

```text
led_blink_ps.xsa
```

The XSA contains the hardware handoff information required by PetaLinux.

---

# Part 2: Update PetaLinux Hardware

Enter the PetaLinux project:

```bash
cd <your-petalinux-project>
```

Update the hardware description using the generated XSA.

Depending on the installed PetaLinux version, use either:

```bash
petalinux-config --get-hw-description=/path/to/led_blink_ps.xsa
```

or:

```bash
petalinux-config --get-hw-description=/path/to/xsa_directory/
```

After the configuration menu opens:

1. Verify that the Zynq hardware is detected.
2. Keep unrelated settings unchanged.
3. Save the configuration.
4. Exit.

---

# Part 3: Create the PetaLinux LED Application

The intended userspace application is called:

```text
blinkled
```

Create it using:

```bash
petalinux-create -t apps --name blinkled --enable
```

The application is created under:

```text
project-spec/meta-user/recipes-apps/blinkled/
```

The source file is normally placed under:

```text
project-spec/meta-user/recipes-apps/blinkled/files/
```

For example:

```text
blinkled.c
```

---

# Part 4: Linux GPIO Application

The initial implementation uses the Linux GPIO sysfs interface because it provides a simple userspace demonstration.

Example application:

```c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    FILE *fd;
    char path[128];
    const char *gpio;

    if (argc != 2) {
        printf("Usage: %s <gpio_number>\n", argv[0]);
        return 1;
    }

    gpio = argv[1];

    /* Export GPIO */
    fd = fopen("/sys/class/gpio/export", "w");

    if (fd == NULL) {
        perror("Failed to open GPIO export");
        return 1;
    }

    fprintf(fd, "%s", gpio);
    fclose(fd);

    /* Configure GPIO as output */
    snprintf(path, sizeof(path),
             "/sys/class/gpio/gpio%s/direction", gpio);

    fd = fopen(path, "w");

    if (fd == NULL) {
        perror("Failed to open GPIO direction");
        return 1;
    }

    fprintf(fd, "out");
    fclose(fd);

    /* GPIO value path */
    snprintf(path, sizeof(path),
             "/sys/class/gpio/gpio%s/value", gpio);

    printf("Blinking GPIO %s. Press Ctrl+C to stop.\n", gpio);

    while (1) {

        fd = fopen(path, "w");

        if (fd != NULL) {
            fprintf(fd, "1");
            fclose(fd);
        }

        usleep(500000);

        fd = fopen(path, "w");

        if (fd != NULL) {
            fprintf(fd, "0");
            fclose(fd);
        }

        usleep(500000);
    }

    return 0;
}
```

The intended behavior is:

```text
LED ON
   |
500 ms
   |
LED OFF
   |
500 ms
   |
repeat
```

### Important Linux note

`/sys/class/gpio` is a **legacy GPIO userspace interface**. Its availability depends on the kernel configuration and PetaLinux version.

If sysfs GPIO is not available in the final image, the application should instead use the Linux GPIO character-device interface, such as `libgpiod`.

Therefore, the GPIO interface should be checked on the actual running PetaLinux system before finalizing the application.

---

# Part 5: Build the PetaLinux Application

Build the application with:

```bash
petalinux-build -c blinkled
```

For a complete system build:

```bash
petalinux-build
```

After modifying the Vivado hardware/XSA, a complete build is recommended:

```bash
petalinux-build
```

---

# Part 6: Generate BOOT.BIN

After a successful PetaLinux build:

```bash
petalinux-package --boot \
--fsbl images/linux/zynq_fsbl.elf \
--fpga images/linux/system.bit \
--u-boot \
--force
```

The generated files are placed under:

```text
images/linux/
```

Important files include:

```text
BOOT.BIN
image.ub
```

A `boot.scr` file may also be generated or used depending on the PetaLinux/U-Boot configuration.

---

# Part 7: Prepare the SD Card

Prepare the SD card with the required boot partition/filesystem according to the PetaLinux boot configuration.

The main boot files are:

```text
BOOT.BIN
image.ub
```

If the generated boot configuration requires `boot.scr`, copy it as well:

```text
BOOT.BIN
image.ub
boot.scr
```

The files should be placed in the appropriate boot partition/root directory expected by the generated U-Boot configuration.

---

# Part 8: Booting the Zynq-7000 Board

The board is connected to a Windows PC through the USB-UART interface.

**PuTTY** is used as the serial terminal.

Typical serial configuration:

```text
Connection type : Serial
Baud rate       : 115200
Data bits       : 8
Stop bits       : 1
Parity          : None
Flow control    : None
```

The PetaLinux project itself is built from the Ubuntu/Linux environment, which may be running inside Oracle VirtualBox.

The development setup is therefore:

```text
Windows PC
    |
    +---- PuTTY
    |       |
    |       +---- USB-UART
    |               |
    |            Zynq Board
    |
    +---- Oracle VirtualBox
            |
          Ubuntu
            |
         PetaLinux
            |
        BOOT.BIN
        image.ub
```

This setup is valid. PuTTY does not need to run inside the Linux virtual machine.

---

# Part 9: Current Boot Status and Challenge

The hardware configuration has been successfully loaded from the SD card.

One important verification is that the **external LED connected to T22 blinks** after the board boots/configures the FPGA.

This confirms that the hardware path is functioning:

```text
Zynq PS
   |
PS GPIO
   |
EMIO
   |
PL
   |
T22
   |
LED
```

However, the Linux userspace stage has **not yet been completed**.

During boot, U-Boot displays messages such as:

```text
mmc0 is current device
Scanning mmc 0:1...
## Executing script at 03000000
Wrong i...
```

and subsequently:

```text
TIMEOUT !
missing environment variable: pxeuuid
missing environment variable: bootfile
Retrieving file: pxelinux.cfg/00000000
ethernet@e000b000 Waiting for PHY auto negotiation to complete...
```

This indicates that U-Boot is falling through to a **network/PXE boot attempt** instead of successfully completing the expected local Linux boot sequence.

The Ethernet messages do **not** indicate a problem with the LED hardware.

They indicate that the boot process has reached U-Boot's network boot fallback.

At the current stage:

```text
FPGA configuration        → WORKING
T22 LED                   → WORKING
SD card detection         → WORKING
BOOT.BIN                  → Present
image.ub                  → Present
Linux login prompt        → NOT YET REACHED
Linux GPIO enumeration    → NOT YET VERIFIED
blinkled application      → NOT YET VERIFIED
```

Therefore, **the project should not yet claim that the LED is controlled by the Linux C application**.

The current verified result is that the **PS GPIO/EMIO hardware path successfully controls the T22 LED**.

---

# Part 10: Next Debugging Step

The immediate objective is to make U-Boot successfully load and boot `image.ub`.

At the U-Boot prompt, the SD card can be inspected using:

```text
mmc list
```

and:

```text
fatls mmc 0:1
```

The expected output should contain:

```text
BOOT.BIN
image.ub
```

If `image.ub` is visible, its readability can be tested with:

```text
fatload mmc 0:1 0x10000000 image.ub
```

The result will determine whether the problem is:

* SD-card filesystem/partition configuration,
* U-Boot boot-script configuration,
* `image.ub` loading,
* or the subsequent Linux boot stage.

Ethernet is **not required** for the intended SD-card PetaLinux boot.

---

# Part 11: Determine the Linux GPIO Number

Once Linux successfully reaches a login prompt, inspect the available GPIO interfaces.

For legacy sysfs GPIO:

```bash
ls /sys/class/gpio/
```

Inspect GPIO controllers:

```bash
cat /sys/class/gpio/gpiochip*/label
```

and:

```bash
cat /sys/class/gpio/gpiochip*/base
```

and:

```bash
cat /sys/class/gpio/gpiochip*/ngpio
```

A combined check can be performed using:

```bash
for g in /sys/class/gpio/gpiochip*; do
    echo "$g"
    cat "$g/label"
    cat "$g/base"
    cat "$g/ngpio"
done
```

### Do not hard-code GPIO 960

The Linux global GPIO number must be determined from the running system.

Although Zynq GPIO numbering commonly places the EMIO GPIOs after the MIO GPIO range, the exact Linux numbering depends on the GPIO driver/configuration.

Therefore, do **not** assume:

```text
EMIO GPIO 0 = GPIO 960
```

unless the running Linux system confirms it.

---

# Part 12: Run the LED Application

After Linux successfully boots and the GPIO number has been identified:

```bash
blinkled <gpio_number>
```

For example, if the system confirms GPIO 960:

```bash
blinkled 960
```

The expected result is:

```text
Blinking GPIO 960. Press Ctrl+C to stop.
```

and the LED should repeatedly turn ON and OFF.

Terminate the application using:

```text
Ctrl+C
```

---

# Part 13: LED Polarity

The LED may be **active-high or active-low**, depending on the board/wiring.

If:

```bash
echo 1 > /sys/class/gpio/gpio<GPIO>/value
```

turns the LED OFF while:

```bash
echo 0 > /sys/class/gpio/gpio<GPIO>/value
```

turns it ON, the LED is active-low.

The C application must then reverse the logical ON/OFF values.

---

# Part 14: Troubleshooting

## Problem: GPIO interface does not exist

Check:

```bash
ls /sys/class/gpio/
```

If `/sys/class/gpio` is unavailable, verify the kernel GPIO configuration.

If the PetaLinux version uses the modern GPIO character-device interface, consider using `libgpiod` instead of the legacy sysfs interface.

---

## Problem: GPIO export fails

Check whether the GPIO has already been exported:

```bash
ls /sys/class/gpio/
```

If it already exists, configure the existing GPIO instead of exporting it again.

---

## Problem: LED does not respond to Linux GPIO

Verify the complete hardware path:

```text
Linux C application
        |
        v
   Linux GPIO driver
        |
        v
      PS GPIO
        |
        v
       EMIO
        |
        v
     GPIO_O
        |
        v
   PL External Port
        |
        v
       T22
        |
        v
       LED
```

Also verify the XDC constraint:

```tcl
set_property PACKAGE_PIN T22 [get_ports led_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_0]
```

and confirm that `led_0` matches the actual generated top-level port.

---

## Problem: U-Boot enters PXE/network boot

Messages such as:

```text
missing environment variable: pxeuuid
missing environment variable: bootfile
```

followed by:

```text
Waiting for PHY auto negotiation
```

indicate that U-Boot is attempting network boot.

For this project, Ethernet is not required.

First verify that U-Boot can see the SD-card files:

```text
fatls mmc 0:1
```

Expected:

```text
BOOT.BIN
image.ub
```

Then test loading:

```text
fatload mmc 0:1 0x10000000 image.ub
```

---

# Final Architecture

The intended completed architecture is:

```text
                 Zynq-7000
              +-------------+
              |     PS      |
              |             |
              | ARM CPU     |
              |     |       |
              | PS GPIO     |
              +-----|-------+
                    |
                  EMIO
                    |
                    v
              PL GPIO Output
                    |
                    v
              External Port
                    |
                    v
                   T22
                    |
                   LED
                    ^
                    |
             Linux GPIO Driver
                    ^
                    |
              blinkled.c
                    ^
                    |
                PetaLinux
```

The architectural difference from the original RTL implementation is:

```text
Original RTL approach:

Clock
  |
  v
RTL Blink Counter
  |
  v
LED


PetaLinux approach:

Linux C Application
        |
        v
Linux GPIO Driver
        |
        v
     PS GPIO
        |
        v
      EMIO
        |
        v
       T22
        |
        v
       LED
```

## Current Project Conclusion

The **Vivado hardware portion is operational**. The PS GPIO is routed through EMIO to the PL and the T22 LED responds, confirming the FPGA-side implementation.

The remaining integration challenge is the **PetaLinux boot/login stage**. The current U-Boot output shows an SD-card scan followed by a PXE/network-boot attempt, and a Linux login prompt has not yet been reached.

Therefore, the next milestone is:

```text
Fix U-Boot → image.ub loading
          ↓
Reach PetaLinux login
          ↓
Verify Linux GPIO interface
          ↓
Determine actual GPIO number
          ↓
Build/install blinkled
          ↓
Control T22 LED from Linux C
```

Only after these steps are verified should the project be described as a fully **Linux-software-controlled EMIO GPIO LED application**.
