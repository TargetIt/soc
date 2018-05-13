`include "svlib_macros.svh"
import svlib_pkg::*;

class LocalCfg extends uvm_test;
	int choice;
	string label;
	`SVLIB_DOM_UTILS_BEGIN(LocalCfg)
	`SVLIB_DOM_FIELD_INT(choice)
	`SVLIB_DOM_FIELD_STRING(label)
	`SVLIB_DOM_UTILS_END
endclass

program test;
	cfgNodeMap cfg_DOM; // A generic DOM object (no need for “new”)
	cfgFileINI cfg_file_ini = cfgFileINI::create(); // file container
	cfgFileYAML cfg_file_yaml = cfgFileYAML::create(); // file container
	cfgError_enum err;
	LocalCfg cfg = new; // The user configuration object of interest
	cfg.choice = 42;
	cfg.label = “Local Configuration”;
	cfg_DOM = cfg.toDOM(“cfg”); // Copy user object to DOM representation
	
	err = cfg_file_ini.openW(“user_file.ini”); // Open the file for writing
	err = cfg_file_ini.serialize(cfg_DOM); // Write the DOM to the file
	err = cfg_file_ini.close(); // finalize the file
	
	err = cfg_file_yaml.openW(“user_file.yaml”); // Open the file for writing
	err = cfg_file_yaml.serialize(cfg_DOM); // Write the DOM to the file
	err = cfg_file_yaml.close(); // finalize the file	
	
endprogram
