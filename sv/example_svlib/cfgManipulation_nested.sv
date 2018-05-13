`include "svlib_macros.svh"
import svlib_pkg::*;

class GlobalCfg extends ...;
	LocalCfg leftCfg;
	LocalCfg rightCfg;
	string label;
	`SVLIB_DOM_UTILS_BEGIN(GlobalCfg)
	`SVLIB_DOM_FIELD_OBJECT(leftCfg)
	`SVLIB_DOM_FIELD_OBJECT(rightCfg)
	`SVLIB_DOM_FIELD_STRING(label)
	`SVLIB_DOM_UTILS_END
endclass

program test;
	cfgNodeMap cfg_DOM; // A generic DOM object (no need for “new”)
	cfgFileINI cfg_file_ini = cfgFileINI::create(); // file container
	cfgFileYAML cfg_file_yaml = cfgFileYAML::create(); // file container
	cfgError_enum err;
	GlobalCfg cfg = new; // The user configuration object of interest

	err = cfg_file.openR(“global_file.ini”); // Open file for reading
	err = cfg_file.deserialize(cfg_DOM); // Read the file into a DOM
	err = cfg_file.close(); // finalize the file
	cfg.fromDOM(cfg_DOM); // Copy DOM representation into user objects
	
	//Modify the cfg object
	cfg.leftCfg.label  = "Left Local Configuration";
	cfg.rightCfg.label = "Right Local Configuration";
	
	cfg_DOM = cfg.toDOM(“Newcfg”);
	err = cfg_file_yaml.openW(“global_file.yaml”); // Open the file for writing
	err = cfg_file_yaml.serialize(cfg_DOM); // Write the DOM to the file
	err = cfg_file_yaml.close(); // finalize the file	
endprogram
