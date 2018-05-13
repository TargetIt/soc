/* This is a demo of String manipulation methods in svlib_pkg.
 *
 * Other utilities of svlib include:
 * - Regular expression processing
 * - File pathname manipulation
 * - Querying properties of files
 * - Querying directories and environment variables
 * - Querying wall-clock time and other operating system properties
 * - Document Object Model
 * - many others
 *
 * svlib was developed at Verilab by Jonathan Bromley and André Winkelmann
 */

`include "svlib_macros.svh"
import svlib_pkg::*;

function automatic void Str_demo();

  // Create Str instance
  Str str1 = Str::create("string1");

  // Make a copy
  Str str2 = str1.copy();
  $display("str1:%s len:%0d", str1.get(), str1.len());
  $display("str2:%s", str2.get());
  
  // Set a new string
  str2.set("string2");
  $display("str2:%s", str2.get());
  
  // Append to string
  str1.append(" plus appended string");
  $display("str1:%s", str1.get());
  
  // Search for index of substring
  $display("first 'tri' is at index %0d",
    str1.first("tri", 0));
  $display("last 'tri' is at index %0d",
    str1.last("tri", 0));
    
  // Split the string
  begin
    string q[$] = str1.split(" ", 0);
    $display("str1 in parts:");
    foreach(q[i]) $display(q[i]);
  end
  
  // Join strings
  str2.set("--");
  $display("join: %s", str2.sjoin({"svlib", "really", "rocks"}));
  
  // Get a substring
  $display("substring: %s", str1.range(6, 20, Str::START));
  
  // Insert a substring
  $display("str1 before insertion: %s", str1.get());
  str1.replace("INSERT", 7, 0, Str::START);
  $display("str1 after insertion: %s", str1.get());
  // Replace a substring
  str1.replace("REPLACE", 19, 7, Str::START);
  $display("str1 after replace: %s", str1.get());
  
  // Pad string
  str1.pad(50, Str::BOTH);
  $display("str1(padded):[%s]", str1.get());
  
  // Trim string
  str1.trim(Str::LEFT);
  $display("str1(left-trimmed):[%s]", str1.get());

endfunction

module test;
  initial begin
    Str_demo();
  end
endmodule
