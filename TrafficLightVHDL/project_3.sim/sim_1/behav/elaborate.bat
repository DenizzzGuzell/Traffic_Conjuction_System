@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 042dc91cbdd445aa895471e31e58161d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_trafficlight_behav xil_defaultlib.tb_trafficlight -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
