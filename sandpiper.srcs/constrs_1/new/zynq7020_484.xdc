## Audio clock @44.100KHz (/512 of clkaudio at 22591KHz)
## create_generated_clock -name audiosampleclock -source [get_pins blockone_i/audiomodule_0/inst/audiocoreInst/audiosampleclk] -divide_by 512 -add -master_clock [get_clocks -of_objects [get_pins blockone_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]]

set_property -dict {PACKAGE_PIN N22 IOSTANDARD TMDS_33} [get_ports HDMI_CLK_p_0]
set_property -dict {PACKAGE_PIN P22 IOSTANDARD TMDS_33} [get_ports HDMI_CLK_n_0]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD TMDS_33} [get_ports {HDMI_TMDS_p_0[0]}]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD TMDS_33} [get_ports {HDMI_TMDS_n_0[0]}]
set_property -dict {PACKAGE_PIN L21 IOSTANDARD TMDS_33} [get_ports {HDMI_TMDS_p_0[1]}]
set_property -dict {PACKAGE_PIN L22 IOSTANDARD TMDS_33} [get_ports {HDMI_TMDS_n_0[1]}]
set_property -dict {PACKAGE_PIN J21 IOSTANDARD TMDS_33} [get_ports {HDMI_TMDS_p_0[2]}]
set_property -dict {PACKAGE_PIN J22 IOSTANDARD TMDS_33} [get_ports {HDMI_TMDS_n_0[2]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports UART_0_0_rxd]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports UART_0_0_txd]
# Clock: 50MHz external crystal for PL clock
# set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports clk_50_MHz]

# HDMI

# Realtek ETH PHY: RTL8211E
set_property PACKAGE_PIN G21 [get_ports MDIO_PHY_0_mdc]
set_property PACKAGE_PIN H22 [get_ports MDIO_PHY_0_mdio_io]
set_property PACKAGE_PIN A22 [get_ports {RGMII_0_rd[0]}]
set_property PACKAGE_PIN A18 [get_ports {RGMII_0_rd[1]}]
set_property PACKAGE_PIN A19 [get_ports {RGMII_0_rd[2]}]
set_property PACKAGE_PIN B20 [get_ports {RGMII_0_rd[3]}]
set_property PACKAGE_PIN A21 [get_ports RGMII_0_rx_ctl]
set_property PACKAGE_PIN B19 [get_ports RGMII_0_rxc]
set_property PACKAGE_PIN E21 [get_ports {RGMII_0_td[0]}]
set_property PACKAGE_PIN F21 [get_ports {RGMII_0_td[1]}]
set_property PACKAGE_PIN F22 [get_ports {RGMII_0_td[2]}]
set_property PACKAGE_PIN G20 [get_ports {RGMII_0_td[3]}]
set_property PACKAGE_PIN G22 [get_ports RGMII_0_tx_ctl]
set_property PACKAGE_PIN D21 [get_ports RGMII_0_txc]

set_property IOSTANDARD LVCMOS33 [get_ports MDIO_PHY_0_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_PHY_0_mdio_io]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_rd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_rd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_rd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_rd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports RGMII_0_rx_ctl]
set_property IOSTANDARD LVCMOS33 [get_ports RGMII_0_rxc]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_td[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_td[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_td[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGMII_0_td[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports RGMII_0_tx_ctl]
set_property IOSTANDARD LVCMOS33 [get_ports RGMII_0_txc]

set_property SLEW FAST [get_ports {RGMII_0_td[0]}]
set_property SLEW FAST [get_ports {RGMII_0_td[1]}]
set_property SLEW FAST [get_ports {RGMII_0_td[2]}]
set_property SLEW FAST [get_ports {RGMII_0_td[3]}]
set_property SLEW FAST [get_ports RGMII_0_tx_ctl]
set_property SLEW FAST [get_ports RGMII_0_txc]
set_property SLEW FAST [get_ports MDIO_PHY_0_mdc]
set_property SLEW FAST [get_ports MDIO_PHY_0_mdio_io]

create_clock -period 8.000 -name RGMII_0_rxc -waveform {0.000 4.000} [get_ports RGMII_0_rxc]
set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {gmii_clk_25m_out gmii_clk_2_5m_out}] -group [get_clocks -include_generated_clocks gmii_clk_125m_out]

# UART PHY: FT2232H

# LCD (172 X 320)
# set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports LCD_RES]
# set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports LCD_SDA]
# set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports LCD_SCL]
# set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports LCD_CS]
# set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports LCD_BLK]
# set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports LCD_DC]

# USB OTG PHY: USB3320C
# set_property -dict {PACKAGE_PIN E8 IOSTANDARD LVCMOS33} [get_ports OTG_DIR]		# MIO29
# set_property -dict {PACKAGE_PIN A11 IOSTANDARD LVCMOS33} [get_ports OTG_STP]		# MIO30
# set_property -dict {PACKAGE_PIN F9 IOSTANDARD LVCMOS33} [get_ports OTG_NXT]		# MIO31
# set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports OTG_CLK]		# MIO36
# set_property -dict {PACKAGE_PIN D12 IOSTANDARD LVCMOS33} [get_ports OTG_RST]		# MIO46
# set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports OTG_DATA[0]]	# MIO32
# set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports OTG_DATA[1]]	# MIO33
# set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports OTG_DATA[2]]	# MIO34
# set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports OTG_DATA[3]]	# MIO35
# set_property -dict {PACKAGE_PIN A12 IOSTANDARD LVCMOS33} [get_ports OTG_DATA[4]]	# MIO28
# set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVCMOS33} [get_ports OTG_DATA[5]]	# MIO37
# set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports OTG_DATA[6]]	# MIO38
# set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports OTG_DATA{7]]	# MIO39

# SD card
# MIO40
## set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS33} [get_ports SD_CLK]
# MIO41
## set_property -dict {PACKAGE_PIN C8 IOSTANDARD LVCMOS33} [get_ports SD_CMD]
# MIO42
## set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports SD_D0]
# MIO43
## set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports SD_D1]
# MIO44
## set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports SD_D2]
# MIO45
## set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS33} [get_ports SD_D3]
# MIO47
## set_property -dict {PACKAGE_PIN B10 IOSTANDARD LVCMOS33} [get_ports SD_CD]

# FPGA JTAG
# set_property -dict {PACKAGE_PIN G12 IOSTANDARD LVCMOS33} [get_ports FPGA_TMS]
# set_property -dict {PACKAGE_PIN G11 IOSTANDARD LVCMOS33} [get_ports FPGA_TCK]
# set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports FPGA_TDI]
# set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports FPGA_TDO]

# RAM: MT41K256M16 (256M x 16bits, 512MB)

# LCD SPI (3-wire)
## LCD_SCL - SCLK
## set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports LCD_SCL]
## LCD_SDA - MOSI
## set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports LCD_SDA]
## LCD_CS  - CS
## set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports LCD_CS]

# LCD Control
## LCD_DC
## set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports {GPIO_0_0_tri_io[0]}]
## LCD_RES
## set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {GPIO_0_0_tri_io[1]}]
## LCD_BLK
## set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {GPIO_0_0_tri_io[2]}]

# LEDs
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {GPIO_0_0_tri_io[0]}]
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports {GPIO_0_0_tri_io[1]}]
set_property SLEW SLOW [get_ports {GPIO_0_0_tri_io[0]}]
set_property SLEW SLOW [get_ports {GPIO_0_0_tri_io[1]}]
set_property DRIVE 4 [get_ports {GPIO_0_0_tri_io[0]}]
set_property DRIVE 4 [get_ports {GPIO_0_0_tri_io[1]}]

# Buttons
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS33} [get_ports {GPIO_0_0_tri_io[2]}]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports {GPIO_0_0_tri_io[3]}]
set_property SLEW SLOW [get_ports {GPIO_0_0_tri_io[2]}]
set_property SLEW SLOW [get_ports {GPIO_0_0_tri_io[3]}]
set_property DRIVE 4 [get_ports {GPIO_0_0_tri_io[2]}]
set_property DRIVE 4 [get_ports {GPIO_0_0_tri_io[3]}]

# Keyboard scan matrix (14 columns by 5 rows, no onboard controller, columns drive, rows are read)
# set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports {keyboardrows[4]}]
# set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports {keyboardrows[3]}]
# set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports {keyboardrows[2]}]
# set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports {keyboardrows[1]}]
# set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports {keyboardrows[0]}]

# set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[13]}]
# set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[12]}]
# set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[11]}]
# set_property -dict {PACKAGE_PIN E20 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[10]}]
# set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[9]}]
# set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[8]}]
# set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[7]}]
# set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[6]}]
# set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[5]}]
# set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[4]}]
# set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[3]}]
# set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[2]}]
# set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[1]}]
# set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports {keyboardcolumns[0]}]

# set_property SLEW SLOW [get_ports {keyboardcolumns[13]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[12]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[11]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[10]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[9]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[8]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[7]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[6]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[5]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[4]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[3]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[2]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[1]}]
# set_property SLEW SLOW [get_ports {keyboardcolumns[0]}]

# set_property DRIVE 4 [get_ports {keyboardcolumns[13]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[12]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[11]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[10]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[9]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[8]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[7]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[6]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[5]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[4]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[3]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[2]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[1]}]
# set_property DRIVE 4 [get_ports {keyboardcolumns[0]}]

## ------------------------------------------------------------------------------------------------------
## Clock groups - all clocks are detached
## ------------------------------------------------------------------------------------------------------

set_clock_groups -name grpA -asynchronous -group [get_clocks clk_fpga_1] -group [get_clocks clk_fpga_0]
set_clock_groups -name grpB -asynchronous -group [get_clocks -of_objects [get_pins blockone_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]] -group [get_clocks clk_fpga_0]
set_clock_groups -name grpC -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks clk_fpga_1]
set_clock_groups -name grpD -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks -of_objects [get_pins blockone_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]]
set_clock_groups -name grpE -asynchronous -group [get_clocks -of_objects [get_pins blockone_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks clk_fpga_0]
set_clock_groups -name grpF -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks -of_objects [get_pins blockone_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]]

## ------------------------------------------------------------------------------------------------------
## Programming
## Important: Make sure to use bitstream compression to avoid excessively long boot times on the board
## ------------------------------------------------------------------------------------------------------

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLDOWN [current_design]
