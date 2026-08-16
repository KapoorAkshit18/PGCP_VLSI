program automatic unsynchronized;
class xyz;   // how to make this a parametrized class? 

logic [7:0]addr
logic [16:0]data;
endclass
  class Producer;

    task run;
   
    
      for (int i=1; i<4; i++) begin
 $display("Producer: before put(%0d)", i);
 mbx.put(i);
      end
    endtask
  endclass


   class Consumer;
    task run;
      int i;
      repeat (3) begin
 mbx.get(i);      // Get integer from mbx
 $display("Consumer: after  get(%0d)", i);
      end
    endtask
  endclass
  mailbox mbx;
  Producer p;
  Consumer c;
  xyz XYZ;
  initial begin
    // 
//Construct mailbox, producer, consumer
    mbx = new; 
    XYZ = new;
    p = new;
    c = new;
    
//Run the producer and consumer in parallel
    fork
      p.run;
      c.run;
    join
 end
endprogram
