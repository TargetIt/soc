


qsy.2010 vlogan@2015.09sp1_mx -full64 -work BUF_1 +mindelays +no_notifier +overlap +neg_tchk -negdelay +sdfverbose +transport_path_delays +pulse_e/0 +pulse_r/0 BUF_1.v BUF_2.v -l BUF_1_ana.log
qsy.2010 vlogan@2015.09sp1_mx -full64 -work BUF_2 +mindelays +no_notifier +overlap +neg_tchk -negdelay +sdfverbose +transport_path_delays +pulse_e/0 +pulse_r/0 HD45_LS_BFX14_2.v   HD45_LS_BFX14.v -l BUF_2_ana.log
#qsy.2010 vlogan@2015.09sp1_mx -full64 -work BUF_2 +mindelays +no_notifier +overlap +neg_tchk -negdelay +sdfverbose +transport_path_delays +pulse_e/0 +pulse_r/0  HD45_LS_BFX14_2.v    -l BUF_2_ana.log
#qsy.2010 vlogan@2015.09sp1_mx -full64 -work BUF_2 +mindelays +no_notifier +overlap +neg_tchk -negdelay +sdfverbose +transport_path_delays +pulse_e/0 +pulse_r/0  HD45_LS_BFX14.v -l BUF_2_ana.log
qsy.2010 vlogan@2015.09sp1_mx -full64 -work top +mindelays +no_notifier +overlap +neg_tchk -negdelay +sdfverbose +transport_path_delays +pulse_e/0 +pulse_r/0   -timescale=1ns/1ps dut.v  top.v -l top_ana.log
