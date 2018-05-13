// Code your testbench here
// or browse Examples

class atomic;
  rand int e;
endclass

class sub;
  rand int c;
  rand int d;
  rand atomic u_atomic = new();
endclass

class top;
  rand int a;
  rand int b;
  rand sub u_sub_1;				// new by new function
  rand sub u_sub_2 = new();		// new with declare
  rand sub u_sub_3;				// new by dedicated task 
  sub u_sub_4 = new();			// without rand
  task create;
    u_sub_3 = new();
  endtask
  function new();
    u_sub_1 = new();
  endfunction  
endclass


program test;
  top top = new();	
  //new() -> invoke the new function of class recursively
 initial begin 

   $display("top.a == %h", top.a);
   $display("top.u_sub_1.c == %h", top.u_sub_1.c);
   $display("top.u_sub_2.c == %h", top.u_sub_2.c);
   //there is only handle for u_sub_3, exec below cmd to create object of u_sub_3
   top.u_sub_3 = new();
   $display("top.u_sub_3.c == %h", top.u_sub_3.c);
   
   top.randomize(); 
   // randomize will rand all the members with rand recursively 
   
   
   $display("top.u_sub_1.c == %h", top.u_sub_1.c);
   $display("top.u_sub_2.c == %h", top.u_sub_2.c);
   $display("top.u_sub_3.c == %h", top.u_sub_3.c);
   $display("top.u_sub_4.c == %h", top.u_sub_4.c);
   
   $display("top.u_sub_1.u_atomic.e == %h", top.u_sub_1.u_atomic.e);
   
   
 end
endprogram

