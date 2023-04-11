# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "clk_freq" -parent ${Page_0}
  ipgui::add_param $IPINST -name "out_off_mask" -parent ${Page_0}
  ipgui::add_param $IPINST -name "out_on_mask" -parent ${Page_0}
  ipgui::add_param $IPINST -name "out_size" -parent ${Page_0}


}

proc update_PARAM_VALUE.clk_freq { PARAM_VALUE.clk_freq } {
	# Procedure called to update clk_freq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk_freq { PARAM_VALUE.clk_freq } {
	# Procedure called to validate clk_freq
	return true
}

proc update_PARAM_VALUE.out_off_mask { PARAM_VALUE.out_off_mask } {
	# Procedure called to update out_off_mask when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.out_off_mask { PARAM_VALUE.out_off_mask } {
	# Procedure called to validate out_off_mask
	return true
}

proc update_PARAM_VALUE.out_on_mask { PARAM_VALUE.out_on_mask } {
	# Procedure called to update out_on_mask when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.out_on_mask { PARAM_VALUE.out_on_mask } {
	# Procedure called to validate out_on_mask
	return true
}

proc update_PARAM_VALUE.out_size { PARAM_VALUE.out_size } {
	# Procedure called to update out_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.out_size { PARAM_VALUE.out_size } {
	# Procedure called to validate out_size
	return true
}


proc update_MODELPARAM_VALUE.clk_freq { MODELPARAM_VALUE.clk_freq PARAM_VALUE.clk_freq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clk_freq}] ${MODELPARAM_VALUE.clk_freq}
}

proc update_MODELPARAM_VALUE.out_size { MODELPARAM_VALUE.out_size PARAM_VALUE.out_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.out_size}] ${MODELPARAM_VALUE.out_size}
}

proc update_MODELPARAM_VALUE.out_off_mask { MODELPARAM_VALUE.out_off_mask PARAM_VALUE.out_off_mask } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.out_off_mask}] ${MODELPARAM_VALUE.out_off_mask}
}

proc update_MODELPARAM_VALUE.out_on_mask { MODELPARAM_VALUE.out_on_mask PARAM_VALUE.out_on_mask } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.out_on_mask}] ${MODELPARAM_VALUE.out_on_mask}
}

