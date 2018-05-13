STUBNAME = 
INPUTDIR = .

OUTPUTDIR = WORK_AUTO

help:
	@echo "This is a Makefile "

gentemplate:
	@echo " module "$(STUBNAME)_stub"(               " 		                 > "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo "     /*AUTOINOUTMODULE(\""$(STUBNAME)"\")*/            " 	    >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo " );               " 										        >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo " /*AUTOTIEOFF*/               " 							        >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo " endmodule               " 								        >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo "                " 										        >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo " // Local Variables:               " 					        >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo " // verilog-library-files:(\""$(INPUTDIR)"/"$(STUBNAME)".v\")  " >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
	@echo " // End:               " 								        >> "$(OUTPUTDIR)/$(STUBNAME)_stub".v
		  
checkin:
	@if [ "${STUBNAME}" == "" ] ; then \
		echo "Please input STUBNAME"; \
	 fi
		
buildenv:
	@if [ ! -d "${OUTPUTDIR}" ] ; then \
	  mkdir "${OUTPUTDIR}"; \
	 fi

work: gentemplate 
	emacs -batch -l ~/elisp/verilog-mode.el "$(OUTPUTDIR)/$(STUBNAME)_stub".v -f verilog-batch-auto

checkout: 
	sed -i "s/$(STUBNAME)_stub/$(STUBNAME)/g" $(OUTPUTDIR)/$(STUBNAME)_stub.v
	mv $(OUTPUTDIR)/$(STUBNAME)_stub.v $(OUTPUTDIR)/$(STUBNAME).v

all: checkin buildenv work  checkout
	echo "Hello World!"
	echo "$(STUBNAME)"
	echo "$(OUTPUTDIR)"

clean:
	@if [ -d logs ] ; then \
	  rm -rf logs;  \
	fi
