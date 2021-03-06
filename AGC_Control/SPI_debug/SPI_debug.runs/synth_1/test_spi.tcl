# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/project/SPI_debug/SPI_debug.cache/wt [current_project]
set_property parent.project_path D:/project/SPI_debug/SPI_debug.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths d:/project/ip_repo/SPI_AGC_1.0 [current_project]
set_property ip_output_repo d:/project/SPI_debug/SPI_debug.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/project/SPI_debug/SPI_debug.srcs/sources_1/imports/project/spi.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top test_spi -part xc7z020clg484-1


write_checkpoint -force -noxdef test_spi.dcp

catch { report_utilization -file test_spi_utilization_synth.rpt -pb test_spi_utilization_synth.pb }
