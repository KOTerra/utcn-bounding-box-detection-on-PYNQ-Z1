# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "G_AXIS_IN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_AXIS_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_LUT_OFFSET_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_MAX_HEIGHT_PIX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_MAX_LABELS_PER_SLICE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_MAX_WIDTH_PIX" -parent ${Page_0}


}

proc update_PARAM_VALUE.G_AXIS_IN_WIDTH { PARAM_VALUE.G_AXIS_IN_WIDTH } {
	# Procedure called to update G_AXIS_IN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_AXIS_IN_WIDTH { PARAM_VALUE.G_AXIS_IN_WIDTH } {
	# Procedure called to validate G_AXIS_IN_WIDTH
	return true
}

proc update_PARAM_VALUE.G_AXIS_OUT_WIDTH { PARAM_VALUE.G_AXIS_OUT_WIDTH } {
	# Procedure called to update G_AXIS_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_AXIS_OUT_WIDTH { PARAM_VALUE.G_AXIS_OUT_WIDTH } {
	# Procedure called to validate G_AXIS_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.G_LUT_OFFSET_SHIFT { PARAM_VALUE.G_LUT_OFFSET_SHIFT } {
	# Procedure called to update G_LUT_OFFSET_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_LUT_OFFSET_SHIFT { PARAM_VALUE.G_LUT_OFFSET_SHIFT } {
	# Procedure called to validate G_LUT_OFFSET_SHIFT
	return true
}

proc update_PARAM_VALUE.G_MAX_HEIGHT_PIX { PARAM_VALUE.G_MAX_HEIGHT_PIX } {
	# Procedure called to update G_MAX_HEIGHT_PIX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_MAX_HEIGHT_PIX { PARAM_VALUE.G_MAX_HEIGHT_PIX } {
	# Procedure called to validate G_MAX_HEIGHT_PIX
	return true
}

proc update_PARAM_VALUE.G_MAX_LABELS_PER_SLICE { PARAM_VALUE.G_MAX_LABELS_PER_SLICE } {
	# Procedure called to update G_MAX_LABELS_PER_SLICE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_MAX_LABELS_PER_SLICE { PARAM_VALUE.G_MAX_LABELS_PER_SLICE } {
	# Procedure called to validate G_MAX_LABELS_PER_SLICE
	return true
}

proc update_PARAM_VALUE.G_MAX_WIDTH_PIX { PARAM_VALUE.G_MAX_WIDTH_PIX } {
	# Procedure called to update G_MAX_WIDTH_PIX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_MAX_WIDTH_PIX { PARAM_VALUE.G_MAX_WIDTH_PIX } {
	# Procedure called to validate G_MAX_WIDTH_PIX
	return true
}


proc update_MODELPARAM_VALUE.G_AXIS_IN_WIDTH { MODELPARAM_VALUE.G_AXIS_IN_WIDTH PARAM_VALUE.G_AXIS_IN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_AXIS_IN_WIDTH}] ${MODELPARAM_VALUE.G_AXIS_IN_WIDTH}
}

proc update_MODELPARAM_VALUE.G_AXIS_OUT_WIDTH { MODELPARAM_VALUE.G_AXIS_OUT_WIDTH PARAM_VALUE.G_AXIS_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_AXIS_OUT_WIDTH}] ${MODELPARAM_VALUE.G_AXIS_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.G_MAX_WIDTH_PIX { MODELPARAM_VALUE.G_MAX_WIDTH_PIX PARAM_VALUE.G_MAX_WIDTH_PIX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_MAX_WIDTH_PIX}] ${MODELPARAM_VALUE.G_MAX_WIDTH_PIX}
}

proc update_MODELPARAM_VALUE.G_MAX_HEIGHT_PIX { MODELPARAM_VALUE.G_MAX_HEIGHT_PIX PARAM_VALUE.G_MAX_HEIGHT_PIX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_MAX_HEIGHT_PIX}] ${MODELPARAM_VALUE.G_MAX_HEIGHT_PIX}
}

proc update_MODELPARAM_VALUE.G_MAX_LABELS_PER_SLICE { MODELPARAM_VALUE.G_MAX_LABELS_PER_SLICE PARAM_VALUE.G_MAX_LABELS_PER_SLICE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_MAX_LABELS_PER_SLICE}] ${MODELPARAM_VALUE.G_MAX_LABELS_PER_SLICE}
}

proc update_MODELPARAM_VALUE.G_LUT_OFFSET_SHIFT { MODELPARAM_VALUE.G_LUT_OFFSET_SHIFT PARAM_VALUE.G_LUT_OFFSET_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_LUT_OFFSET_SHIFT}] ${MODELPARAM_VALUE.G_LUT_OFFSET_SHIFT}
}

