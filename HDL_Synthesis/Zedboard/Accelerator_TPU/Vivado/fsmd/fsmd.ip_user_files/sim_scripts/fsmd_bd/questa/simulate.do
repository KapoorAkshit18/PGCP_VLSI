onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fsmd_bd_opt

do {wave.do}

view wave
view structure
view signals

do {fsmd_bd.udo}

run -all

quit -force
