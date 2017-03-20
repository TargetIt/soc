//----------------------------------------------------------------------
//----------------------------------------------------------------------


/* 
About: producer_consumer
*/

`include "uvm_macros.svh"

//----------------------------------------------------------------------
// module top
//----------------------------------------------------------------------
module test;

  import uvm_pkg::*;
  
  //----------------------------------------------------------------------
  // class producer
  //----------------------------------------------------------------------
  class producer extends uvm_component;

    uvm_blocking_put_port#(int) put_port;
    
    function new(string name, uvm_component p = null);
      super.new(name,p);
      put_port = new("put_port", this);
      
    endfunction
    
    task run_phase(uvm_phase phase);
      
      int randval;
      
      for(int i = 0; i < 10; i++)
        begin
          randval = $random % 100;
	  #10;
          `uvm_info("producer", $sformatf("sending   %4d", randval), UVM_MEDIUM)
          put_port.put(randval);
        end
    endtask
    
  endclass : producer
  
  //----------------------------------------------------------------------
  // class consumer
  //----------------------------------------------------------------------
  class consumer extends uvm_component;

    uvm_blocking_put_export#(int) put_export;
    uvm_blocking_put_imp#(int) put_imp;
    
    function new(string name, uvm_component p = null);
      super.new(name,p);
      put_export = new("put_export", this);
    endfunction
   function put(int randval);
        `uvm_info("consumer", $sformatf("receiving %4d", randval), UVM_MEDIUM)
        //randval.print();
   endfunction
   function connect_phase(uvm_phase phase);
       super.connect_phase(phase);
       put_export.connect(put_imp);
   endfunction
    task run_phase(uvm_phase phase);
    endtask
    
  endclass : consumer
  
  //----------------------------------------------------------------------
  // class env
  //----------------------------------------------------------------------
  class env extends uvm_env;
    producer p;
    consumer c;
    
    function new(string name = "env");
      super.new(name);
      p = new("producer", this);
      c = new("consumer", this);
    endfunction
    
    function void connect_phase(uvm_phase phase);
      p.put_port.connect(c.put_export);
    endfunction
    
    task run_phase(uvm_phase phase);
      phase.raise_objection(this);
      #1000;
      phase.drop_objection(this);
    endtask
    
  endclass
  
  // Main body of module top:
  env e;
  
  initial begin
    e = new();
    run_test();
    //$finish;
  end

endmodule // test

