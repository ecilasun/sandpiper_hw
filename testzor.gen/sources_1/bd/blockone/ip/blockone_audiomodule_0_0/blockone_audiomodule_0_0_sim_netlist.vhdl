-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Sun Apr 27 19:59:19 2025
-- Host        : fastturtle running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/repos/testzor/testzor.gen/sources_1/bd/blockone/ip/blockone_audiomodule_0_0/blockone_audiomodule_0_0_sim_netlist.vhdl
-- Design      : blockone_audiomodule_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blockone_audiomodule_0_0_commandqueue is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    re : out STD_LOGIC;
    \FSM_onehot_cmdmode_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_cmdmode_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_cmdmode_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_cmdmode_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_cmdmode_reg[6]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_onehot_cmdmode_reg[0]\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    in13 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \apusourceaddr_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \m_axi_rdata_reg[32]_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blockone_audiomodule_0_0_commandqueue : entity is "commandqueue";
end blockone_audiomodule_0_0_commandqueue;

architecture STRUCTURE of blockone_audiomodule_0_0_commandqueue is
  component blockone_audiomodule_0_0_cmdfifo is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  end component blockone_audiomodule_0_0_cmdfifo;
  signal \^d\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \FSM_onehot_raddrstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_raddrstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_raddrstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_raddrstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_raddrstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_waddrstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_waddrstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_writestate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_writestate[1]_i_1_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \__9/i__n_0\ : STD_LOGIC;
  signal apufifodout : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \^empty\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[10]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[11]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[12]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[13]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[14]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[15]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[16]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[17]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[18]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[19]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[1]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[20]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[21]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[22]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[23]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[24]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[25]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[26]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[27]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[28]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[29]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[2]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[30]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[31]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[3]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[4]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[5]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[6]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[7]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[8]\ : STD_LOGIC;
  signal \fifodin_reg_n_0_[9]\ : STD_LOGIC;
  signal fifofull : STD_LOGIC;
  signal fifowe : STD_LOGIC;
  signal m_axi_arready_i_1_n_0 : STD_LOGIC;
  signal m_axi_awready_i_1_n_0 : STD_LOGIC;
  signal \m_axi_rdata[32]_i_1_n_0\ : STD_LOGIC;
  signal m_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^re\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^valid\ : STD_LOGIC;
  signal waddrstate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal writestate : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_raddrstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_raddrstate[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_raddrstate_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_raddrstate_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_raddrstate_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_waddrstate[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_waddrstate[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES of \FSM_sequential_waddrstate_reg[0]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_waddrstate_reg[1]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,";
  attribute SOFT_HLUTNM of \FSM_sequential_writestate[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_writestate[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_writestate_reg[0]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_writestate_reg[1]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,";
  attribute SOFT_HLUTNM of \apucmd[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \burstsleft[3]_i_1\ : label is "soft_lutpair2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cmdfifoinst : label is "cmdfifo,fifo_generator_v13_2_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cmdfifoinst : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of cmdfifoinst : label is "fifo_generator_v13_2_12,Vivado 2024.2.2";
begin
  D(9 downto 0) <= \^d\(9 downto 0);
  SR(0) <= \^sr\(0);
  empty <= \^empty\;
  re <= \^re\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_rdata(0) <= \^s_axi_rdata\(0);
  valid <= \^valid\;
\FSM_onehot_cmdmode[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^re\,
      I1 => Q(0),
      I2 => Q(7),
      I3 => Q(6),
      I4 => Q(2),
      I5 => \FSM_onehot_cmdmode_reg[0]\,
      O => E(0)
    );
\FSM_onehot_raddrstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFA22"
    )
        port map (
      I0 => \FSM_onehot_raddrstate_reg_n_0_[1]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_rready,
      I3 => \FSM_onehot_raddrstate_reg_n_0_[2]\,
      I4 => \FSM_onehot_raddrstate_reg_n_0_[0]\,
      O => \FSM_onehot_raddrstate[1]_i_1_n_0\
    );
\FSM_onehot_raddrstate[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAF88"
    )
        port map (
      I0 => \FSM_onehot_raddrstate_reg_n_0_[1]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_rready,
      I3 => \FSM_onehot_raddrstate_reg_n_0_[2]\,
      I4 => \FSM_onehot_raddrstate_reg_n_0_[0]\,
      O => \FSM_onehot_raddrstate[2]_i_1_n_0\
    );
\FSM_onehot_raddrstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_raddrstate_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_raddrstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_raddrstate[1]_i_1_n_0\,
      Q => \FSM_onehot_raddrstate_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_raddrstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_raddrstate[2]_i_1_n_0\,
      Q => \FSM_onehot_raddrstate_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_sequential_waddrstate[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => waddrstate(1),
      I1 => s_axi_awvalid,
      I2 => waddrstate(0),
      O => \FSM_sequential_waddrstate[0]_i_1_n_0\
    );
\FSM_sequential_waddrstate[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => waddrstate(1),
      I2 => waddrstate(0),
      O => \FSM_sequential_waddrstate[1]_i_1_n_0\
    );
\FSM_sequential_waddrstate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_waddrstate[0]_i_1_n_0\,
      Q => waddrstate(0),
      R => \^sr\(0)
    );
\FSM_sequential_waddrstate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_waddrstate[1]_i_1_n_0\,
      Q => waddrstate(1),
      R => \^sr\(0)
    );
\FSM_sequential_writestate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFFBBBB"
    )
        port map (
      I0 => s_axi_bready,
      I1 => writestate(1),
      I2 => fifofull,
      I3 => s_axi_wvalid,
      I4 => writestate(0),
      O => \FSM_sequential_writestate[0]_i_1_n_0\
    );
\FSM_sequential_writestate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F200F0"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => fifofull,
      I2 => writestate(1),
      I3 => s_axi_bready,
      I4 => writestate(0),
      O => \FSM_sequential_writestate[1]_i_1_n_0\
    );
\FSM_sequential_writestate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_writestate[0]_i_1_n_0\,
      Q => writestate(0),
      R => \^sr\(0)
    );
\FSM_sequential_writestate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_writestate[1]_i_1_n_0\,
      Q => writestate(1),
      R => \^sr\(0)
    );
\__9/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => writestate(0),
      I1 => s_axi_bready,
      I2 => writestate(1),
      O => \__9/i__n_0\
    );
\apucmd[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(1),
      I1 => \^valid\,
      I2 => \^empty\,
      O => \FSM_onehot_cmdmode_reg[1]\(0)
    );
\apusourceaddr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \apusourceaddr_reg[5]\(0),
      I1 => Q(6),
      I2 => \^d\(0),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(0)
    );
\apusourceaddr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(4),
      I1 => Q(6),
      I2 => apufifodout(10),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(10)
    );
\apusourceaddr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(5),
      I1 => Q(6),
      I2 => apufifodout(11),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(11)
    );
\apusourceaddr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(6),
      I1 => Q(6),
      I2 => apufifodout(12),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(12)
    );
\apusourceaddr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(7),
      I1 => Q(6),
      I2 => apufifodout(13),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(13)
    );
\apusourceaddr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(8),
      I1 => Q(6),
      I2 => apufifodout(14),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(14)
    );
\apusourceaddr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(9),
      I1 => Q(6),
      I2 => apufifodout(15),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(15)
    );
\apusourceaddr[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(10),
      I1 => Q(6),
      I2 => apufifodout(16),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(16)
    );
\apusourceaddr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(11),
      I1 => Q(6),
      I2 => apufifodout(17),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(17)
    );
\apusourceaddr[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(12),
      I1 => Q(6),
      I2 => apufifodout(18),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(18)
    );
\apusourceaddr[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(13),
      I1 => Q(6),
      I2 => apufifodout(19),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(19)
    );
\apusourceaddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \apusourceaddr_reg[5]\(1),
      I1 => Q(6),
      I2 => \^d\(1),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(1)
    );
\apusourceaddr[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(14),
      I1 => Q(6),
      I2 => apufifodout(20),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(20)
    );
\apusourceaddr[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(15),
      I1 => Q(6),
      I2 => apufifodout(21),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(21)
    );
\apusourceaddr[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(16),
      I1 => Q(6),
      I2 => apufifodout(22),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(22)
    );
\apusourceaddr[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(17),
      I1 => Q(6),
      I2 => apufifodout(23),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(23)
    );
\apusourceaddr[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(18),
      I1 => Q(6),
      I2 => apufifodout(24),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(24)
    );
\apusourceaddr[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(19),
      I1 => Q(6),
      I2 => apufifodout(25),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(25)
    );
\apusourceaddr[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(20),
      I1 => Q(6),
      I2 => apufifodout(26),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(26)
    );
\apusourceaddr[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(21),
      I1 => Q(6),
      I2 => apufifodout(27),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(27)
    );
\apusourceaddr[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(22),
      I1 => Q(6),
      I2 => apufifodout(28),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(28)
    );
\apusourceaddr[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(23),
      I1 => Q(6),
      I2 => apufifodout(29),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(29)
    );
\apusourceaddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \apusourceaddr_reg[5]\(2),
      I1 => Q(6),
      I2 => \^d\(2),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(2)
    );
\apusourceaddr[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(24),
      I1 => Q(6),
      I2 => apufifodout(30),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(30)
    );
\apusourceaddr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0080"
    )
        port map (
      I0 => \out\,
      I1 => Q(4),
      I2 => \^valid\,
      I3 => \^empty\,
      I4 => Q(6),
      O => aresetn(0)
    );
\apusourceaddr[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(25),
      I1 => Q(6),
      I2 => apufifodout(31),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(31)
    );
\apusourceaddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \apusourceaddr_reg[5]\(3),
      I1 => Q(6),
      I2 => \^d\(3),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(3)
    );
\apusourceaddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \apusourceaddr_reg[5]\(4),
      I1 => Q(6),
      I2 => \^d\(4),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(4)
    );
\apusourceaddr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \apusourceaddr_reg[5]\(5),
      I1 => Q(6),
      I2 => \^d\(5),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(5)
    );
\apusourceaddr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(0),
      I1 => Q(6),
      I2 => \^d\(6),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(6)
    );
\apusourceaddr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(1),
      I1 => Q(6),
      I2 => \^d\(7),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(7)
    );
\apusourceaddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(2),
      I1 => Q(6),
      I2 => \^d\(8),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(8)
    );
\apusourceaddr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in13(3),
      I1 => Q(6),
      I2 => \^d\(9),
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[6]\(9)
    );
\apuwordcount[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(3),
      I1 => \^valid\,
      I2 => \^empty\,
      O => \FSM_onehot_cmdmode_reg[3]\(0)
    );
\burstsleft[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => Q(7),
      I1 => \^empty\,
      I2 => \^valid\,
      I3 => Q(4),
      O => \FSM_onehot_cmdmode_reg[7]\(0)
    );
cmdfifoinst: component blockone_audiomodule_0_0_cmdfifo
     port map (
      clk => aclk,
      din(31) => \fifodin_reg_n_0_[31]\,
      din(30) => \fifodin_reg_n_0_[30]\,
      din(29) => \fifodin_reg_n_0_[29]\,
      din(28) => \fifodin_reg_n_0_[28]\,
      din(27) => \fifodin_reg_n_0_[27]\,
      din(26) => \fifodin_reg_n_0_[26]\,
      din(25) => \fifodin_reg_n_0_[25]\,
      din(24) => \fifodin_reg_n_0_[24]\,
      din(23) => \fifodin_reg_n_0_[23]\,
      din(22) => \fifodin_reg_n_0_[22]\,
      din(21) => \fifodin_reg_n_0_[21]\,
      din(20) => \fifodin_reg_n_0_[20]\,
      din(19) => \fifodin_reg_n_0_[19]\,
      din(18) => \fifodin_reg_n_0_[18]\,
      din(17) => \fifodin_reg_n_0_[17]\,
      din(16) => \fifodin_reg_n_0_[16]\,
      din(15) => \fifodin_reg_n_0_[15]\,
      din(14) => \fifodin_reg_n_0_[14]\,
      din(13) => \fifodin_reg_n_0_[13]\,
      din(12) => \fifodin_reg_n_0_[12]\,
      din(11) => \fifodin_reg_n_0_[11]\,
      din(10) => \fifodin_reg_n_0_[10]\,
      din(9) => \fifodin_reg_n_0_[9]\,
      din(8) => \fifodin_reg_n_0_[8]\,
      din(7) => \fifodin_reg_n_0_[7]\,
      din(6) => \fifodin_reg_n_0_[6]\,
      din(5) => \fifodin_reg_n_0_[5]\,
      din(4) => \fifodin_reg_n_0_[4]\,
      din(3) => \fifodin_reg_n_0_[3]\,
      din(2) => \fifodin_reg_n_0_[2]\,
      din(1) => \fifodin_reg_n_0_[1]\,
      din(0) => \fifodin_reg_n_0_[0]\,
      dout(31 downto 10) => apufifodout(31 downto 10),
      dout(9 downto 0) => \^d\(9 downto 0),
      empty => \^empty\,
      full => fifofull,
      rd_en => rd_en,
      rst => \^sr\(0),
      valid => \^valid\,
      wr_en => fifowe
    );
\fifodin_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(0),
      Q => \fifodin_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\fifodin_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(10),
      Q => \fifodin_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\fifodin_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(11),
      Q => \fifodin_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\fifodin_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(12),
      Q => \fifodin_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\fifodin_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(13),
      Q => \fifodin_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\fifodin_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(14),
      Q => \fifodin_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\fifodin_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(15),
      Q => \fifodin_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\fifodin_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(16),
      Q => \fifodin_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\fifodin_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(17),
      Q => \fifodin_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\fifodin_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(18),
      Q => \fifodin_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\fifodin_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(19),
      Q => \fifodin_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\fifodin_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(1),
      Q => \fifodin_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\fifodin_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(20),
      Q => \fifodin_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\fifodin_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(21),
      Q => \fifodin_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\fifodin_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(22),
      Q => \fifodin_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\fifodin_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(23),
      Q => \fifodin_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\fifodin_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(24),
      Q => \fifodin_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\fifodin_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(25),
      Q => \fifodin_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\fifodin_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(26),
      Q => \fifodin_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\fifodin_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(27),
      Q => \fifodin_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\fifodin_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(28),
      Q => \fifodin_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\fifodin_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(29),
      Q => \fifodin_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\fifodin_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(2),
      Q => \fifodin_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\fifodin_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(30),
      Q => \fifodin_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\fifodin_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(31),
      Q => \fifodin_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\fifodin_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(3),
      Q => \fifodin_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\fifodin_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(4),
      Q => \fifodin_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\fifodin_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(5),
      Q => \fifodin_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\fifodin_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(6),
      Q => \fifodin_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\fifodin_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(7),
      Q => \fifodin_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\fifodin_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(8),
      Q => \fifodin_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\fifodin_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_wready_i_1_n_0,
      D => s_axi_wdata(9),
      Q => \fifodin_reg_n_0_[9]\,
      R => \^sr\(0)
    );
fifowe_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_wready_i_1_n_0,
      Q => fifowe,
      R => \^sr\(0)
    );
m_axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_raddrstate_reg_n_0_[1]\,
      O => m_axi_arready_i_1_n_0
    );
m_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \out\,
      D => m_axi_arready_i_1_n_0,
      Q => s_axi_arready,
      R => '0'
    );
m_axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF550800"
    )
        port map (
      I0 => \out\,
      I1 => s_axi_awvalid,
      I2 => waddrstate(1),
      I3 => waddrstate(0),
      I4 => \^s_axi_awready\,
      O => m_axi_awready_i_1_n_0
    );
m_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_awready_i_1_n_0,
      Q => \^s_axi_awready\,
      R => '0'
    );
m_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \out\,
      D => \__9/i__n_0\,
      Q => s_axi_bvalid,
      R => '0'
    );
\m_axi_rdata[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \m_axi_rdata_reg[32]_0\,
      I1 => \FSM_onehot_raddrstate_reg_n_0_[2]\,
      I2 => s_axi_rready,
      I3 => \out\,
      I4 => \^s_axi_rdata\(0),
      O => \m_axi_rdata[32]_i_1_n_0\
    );
\m_axi_rdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axi_rdata[32]_i_1_n_0\,
      Q => \^s_axi_rdata\(0),
      R => '0'
    );
m_axi_rlast_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\,
      O => \^sr\(0)
    );
m_axi_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_raddrstate_reg_n_0_[0]\,
      Q => s_axi_rlast,
      R => \^sr\(0)
    );
m_axi_rvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \FSM_onehot_raddrstate_reg_n_0_[2]\,
      O => m_axi_rvalid_i_1_n_0
    );
m_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \out\,
      D => m_axi_rvalid_i_1_n_0,
      Q => s_axi_rvalid,
      R => '0'
    );
m_axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => writestate(1),
      I1 => writestate(0),
      I2 => s_axi_wvalid,
      I3 => fifofull,
      O => m_axi_wready_i_1_n_0
    );
m_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \out\,
      D => m_axi_wready_i_1_n_0,
      Q => s_axi_wready,
      R => '0'
    );
re_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(4),
      I4 => \^valid\,
      I5 => \^empty\,
      O => \^re\
    );
\writeCursor[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF404040"
    )
        port map (
      I0 => \^empty\,
      I1 => \^valid\,
      I2 => Q(4),
      I3 => Q(8),
      I4 => m_axi_rvalid,
      O => \FSM_onehot_cmdmode_reg[4]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blockone_audiomodule_0_0_audiocore is
  port (
    audiosampleclk : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    audioSampleOutputLR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    audioclock : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blockone_audiomodule_0_0_audiocore : entity is "audiocore";
end blockone_audiomodule_0_0_audiocore;

architecture STRUCTURE of blockone_audiomodule_0_0_audiocore is
  component blockone_audiomodule_0_0_samplemem is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component blockone_audiomodule_0_0_samplemem;
  signal \FSM_onehot_cmdmode[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[9]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode[9]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_cmdmode_reg_n_0_[9]\ : STD_LOGIC;
  signal apuburstcount : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal apucmd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal apucmd_1 : STD_LOGIC;
  signal apucommandinterface_n_12 : STD_LOGIC;
  signal apucommandinterface_n_19 : STD_LOGIC;
  signal apucommandinterface_n_23 : STD_LOGIC;
  signal apucommandinterface_n_24 : STD_LOGIC;
  signal apucommandinterface_n_25 : STD_LOGIC;
  signal apucommandinterface_n_26 : STD_LOGIC;
  signal apucommandinterface_n_27 : STD_LOGIC;
  signal apucommandinterface_n_28 : STD_LOGIC;
  signal apucommandinterface_n_29 : STD_LOGIC;
  signal apucommandinterface_n_30 : STD_LOGIC;
  signal apucommandinterface_n_31 : STD_LOGIC;
  signal apucommandinterface_n_32 : STD_LOGIC;
  signal apucommandinterface_n_33 : STD_LOGIC;
  signal apucommandinterface_n_34 : STD_LOGIC;
  signal apucommandinterface_n_35 : STD_LOGIC;
  signal apucommandinterface_n_36 : STD_LOGIC;
  signal apucommandinterface_n_37 : STD_LOGIC;
  signal apucommandinterface_n_38 : STD_LOGIC;
  signal apucommandinterface_n_39 : STD_LOGIC;
  signal apucommandinterface_n_40 : STD_LOGIC;
  signal apucommandinterface_n_41 : STD_LOGIC;
  signal apucommandinterface_n_42 : STD_LOGIC;
  signal apucommandinterface_n_43 : STD_LOGIC;
  signal apucommandinterface_n_44 : STD_LOGIC;
  signal apucommandinterface_n_45 : STD_LOGIC;
  signal apucommandinterface_n_46 : STD_LOGIC;
  signal apucommandinterface_n_47 : STD_LOGIC;
  signal apucommandinterface_n_48 : STD_LOGIC;
  signal apucommandinterface_n_49 : STD_LOGIC;
  signal apucommandinterface_n_50 : STD_LOGIC;
  signal apucommandinterface_n_51 : STD_LOGIC;
  signal apucommandinterface_n_52 : STD_LOGIC;
  signal apucommandinterface_n_53 : STD_LOGIC;
  signal apucommandinterface_n_54 : STD_LOGIC;
  signal apucommandinterface_n_55 : STD_LOGIC;
  signal apucommandinterface_n_56 : STD_LOGIC;
  signal apucommandinterface_n_57 : STD_LOGIC;
  signal apufifodout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal apufifoempty : STD_LOGIC;
  signal apufifovalid : STD_LOGIC;
  signal apusourceaddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \apusourceaddr0_carry__0_n_0\ : STD_LOGIC;
  signal \apusourceaddr0_carry__0_n_1\ : STD_LOGIC;
  signal \apusourceaddr0_carry__0_n_2\ : STD_LOGIC;
  signal \apusourceaddr0_carry__0_n_3\ : STD_LOGIC;
  signal \apusourceaddr0_carry__1_n_0\ : STD_LOGIC;
  signal \apusourceaddr0_carry__1_n_1\ : STD_LOGIC;
  signal \apusourceaddr0_carry__1_n_2\ : STD_LOGIC;
  signal \apusourceaddr0_carry__1_n_3\ : STD_LOGIC;
  signal \apusourceaddr0_carry__2_n_0\ : STD_LOGIC;
  signal \apusourceaddr0_carry__2_n_1\ : STD_LOGIC;
  signal \apusourceaddr0_carry__2_n_2\ : STD_LOGIC;
  signal \apusourceaddr0_carry__2_n_3\ : STD_LOGIC;
  signal \apusourceaddr0_carry__3_n_0\ : STD_LOGIC;
  signal \apusourceaddr0_carry__3_n_1\ : STD_LOGIC;
  signal \apusourceaddr0_carry__3_n_2\ : STD_LOGIC;
  signal \apusourceaddr0_carry__3_n_3\ : STD_LOGIC;
  signal \apusourceaddr0_carry__4_n_0\ : STD_LOGIC;
  signal \apusourceaddr0_carry__4_n_1\ : STD_LOGIC;
  signal \apusourceaddr0_carry__4_n_2\ : STD_LOGIC;
  signal \apusourceaddr0_carry__4_n_3\ : STD_LOGIC;
  signal \apusourceaddr0_carry__5_n_3\ : STD_LOGIC;
  signal apusourceaddr0_carry_i_1_n_0 : STD_LOGIC;
  signal apusourceaddr0_carry_n_0 : STD_LOGIC;
  signal apusourceaddr0_carry_n_1 : STD_LOGIC;
  signal apusourceaddr0_carry_n_2 : STD_LOGIC;
  signal apusourceaddr0_carry_n_3 : STD_LOGIC;
  signal apuwordcount : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal apuwordcount_2 : STD_LOGIC;
  signal aresetnA : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of aresetnA : signal is "true";
  signal aresetnB : STD_LOGIC;
  attribute async_reg of aresetnB : signal is "true";
  signal asampleclk : STD_LOGIC;
  signal bufferSwap : STD_LOGIC;
  signal bufferSwapCDC1 : STD_LOGIC;
  attribute async_reg of bufferSwapCDC1 : signal is "true";
  signal bufferSwapCDC2 : STD_LOGIC;
  attribute async_reg of bufferSwapCDC2 : signal is "true";
  signal bufferSwap_i_1_n_0 : STD_LOGIC;
  signal burstsleft : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \burstsleft[3]_i_3_n_0\ : STD_LOGIC;
  signal \burstsleft_reg_n_0_[0]\ : STD_LOGIC;
  signal \burstsleft_reg_n_0_[1]\ : STD_LOGIC;
  signal \burstsleft_reg_n_0_[2]\ : STD_LOGIC;
  signal \burstsleft_reg_n_0_[3]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in13 : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal inaddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal outaddr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal re : STD_LOGIC;
  signal re_reg_n_0 : STD_LOGIC;
  signal readCursor : STD_LOGIC;
  signal readCursor0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \readCursor0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \readCursor0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \readCursor0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \readCursor0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \readCursor_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \readCursor_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \readCursor_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \readCursor_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \readCursor_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \readCursor_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \readCursor_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal readLowbits : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \readLowbits[1]_i_1_n_0\ : STD_LOGIC;
  signal \readLowbits[1]_i_4_n_0\ : STD_LOGIC;
  signal \readLowbits[1]_i_5_n_0\ : STD_LOGIC;
  signal \readLowbits[1]_i_6_n_0\ : STD_LOGIC;
  signal \readLowbits[1]_i_7_n_0\ : STD_LOGIC;
  signal \readLowbits_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \readLowbits_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \readLowbits_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \readLowbits_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal rstaudion : STD_LOGIC;
  attribute async_reg of rstaudion : signal is "true";
  signal \s_axi_araddr[31]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_rready0_out : STD_LOGIC;
  signal s_axi_rready_i_1_n_0 : STD_LOGIC;
  signal \sampleIn[63]_i_1_n_0\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[0]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[10]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[11]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[12]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[13]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[14]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[15]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[16]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[17]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[18]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[19]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[1]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[20]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[21]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[22]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[23]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[24]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[25]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[26]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[27]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[28]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[29]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[2]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[30]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[31]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[32]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[33]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[34]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[35]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[36]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[37]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[38]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[39]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[3]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[40]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[41]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[42]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[43]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[44]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[45]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[46]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[47]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[48]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[49]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[4]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[50]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[51]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[52]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[53]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[54]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[55]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[56]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[57]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[58]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[59]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[5]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[60]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[61]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[62]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[63]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[6]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[7]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[8]\ : STD_LOGIC;
  signal \sampleIn_reg_n_0_[9]\ : STD_LOGIC;
  signal sampleOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sampleoutputrateselector[0]_i_1_n_0\ : STD_LOGIC;
  signal \sampleoutputrateselector[1]_i_1_n_0\ : STD_LOGIC;
  signal \sampleoutputrateselector[2]_i_1_n_0\ : STD_LOGIC;
  signal \sampleoutputrateselector_reg_n_0_[0]\ : STD_LOGIC;
  signal \sampleoutputrateselector_reg_n_0_[1]\ : STD_LOGIC;
  signal \sampleoutputrateselector_reg_n_0_[2]\ : STD_LOGIC;
  signal samplere : STD_LOGIC;
  signal samplere_i_1_n_0 : STD_LOGIC;
  signal samplewe : STD_LOGIC;
  signal samplewe_reg_n_0 : STD_LOGIC;
  signal \tx_data_lr[31]_i_1_n_0\ : STD_LOGIC;
  signal writeBufferSelect_i_1_n_0 : STD_LOGIC;
  signal \writeCursor[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeCursor[1]_i_1_n_0\ : STD_LOGIC;
  signal \writeCursor[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeCursor[3]_i_1_n_0\ : STD_LOGIC;
  signal \writeCursor[4]_i_1_n_0\ : STD_LOGIC;
  signal \writeCursor[5]_i_1_n_0\ : STD_LOGIC;
  signal \writeCursor[5]_i_2_n_0\ : STD_LOGIC;
  signal \writeCursor[6]_i_1_n_0\ : STD_LOGIC;
  signal \writeCursor[7]_i_2_n_0\ : STD_LOGIC;
  signal \writeCursor[7]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_apusourceaddr0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_apusourceaddr0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_readCursor0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_readCursor_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_cmdmode[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_cmdmode[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_cmdmode[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_cmdmode[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_cmdmode[9]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_cmdmode[9]_i_3\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[0]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[1]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[2]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[3]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[4]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[5]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[6]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[7]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[8]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cmdmode_reg[9]\ : label is "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of apusourceaddr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \apusourceaddr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \apusourceaddr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \apusourceaddr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \apusourceaddr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \apusourceaddr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \apusourceaddr0_carry__5\ : label is 35;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of aresetnA_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aresetnA_reg : label is "yes";
  attribute ASYNC_REG_boolean of aresetnB_reg : label is std.standard.true;
  attribute KEEP of aresetnB_reg : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of audioclockbuffer : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean of bufferSwapCDC1_reg : label is std.standard.true;
  attribute KEEP of bufferSwapCDC1_reg : label is "yes";
  attribute ASYNC_REG_boolean of bufferSwapCDC2_reg : label is std.standard.true;
  attribute KEEP of bufferSwapCDC2_reg : label is "yes";
  attribute SOFT_HLUTNM of bufferSwap_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \readCursor_reg[5]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \readCursor_reg[9]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \readLowbits_reg[1]_i_3\ : label is 35;
  attribute ASYNC_REG_boolean of rstaudion_reg : label is std.standard.true;
  attribute KEEP of rstaudion_reg : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of samplememinst : label is "samplemem,blk_mem_gen_v8_4_10,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of samplememinst : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of samplememinst : label is "blk_mem_gen_v8_4_10,Vivado 2024.2.2";
  attribute SOFT_HLUTNM of writeBufferSelect_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \writeCursor[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \writeCursor[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \writeCursor[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \writeCursor[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \writeCursor[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \writeCursor[7]_i_2\ : label is "soft_lutpair9";
begin
  m_axi_arvalid <= \^m_axi_arvalid\;
  m_axi_rready <= \^m_axi_rready\;
\FSM_onehot_cmdmode[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[0]\,
      I1 => \burstsleft_reg_n_0_[3]\,
      I2 => \burstsleft_reg_n_0_[0]\,
      I3 => \burstsleft_reg_n_0_[1]\,
      I4 => \burstsleft_reg_n_0_[2]\,
      I5 => \FSM_onehot_cmdmode_reg_n_0_[6]\,
      O => \FSM_onehot_cmdmode[1]_i_1_n_0\
    );
\FSM_onehot_cmdmode[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => apucmd(1),
      I1 => apucmd(0),
      I2 => apucmd(3),
      I3 => \FSM_onehot_cmdmode_reg_n_0_[2]\,
      I4 => apucmd(2),
      O => \FSM_onehot_cmdmode[3]_i_1_n_0\
    );
\FSM_onehot_cmdmode[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => apucmd(1),
      I1 => apucmd(2),
      I2 => apucmd(0),
      I3 => apucmd(3),
      I4 => \FSM_onehot_cmdmode_reg_n_0_[2]\,
      O => \FSM_onehot_cmdmode[4]_i_1_n_0\
    );
\FSM_onehot_cmdmode[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => apucmd(1),
      I1 => apucmd(0),
      I2 => apucmd(2),
      I3 => apucmd(3),
      I4 => \FSM_onehot_cmdmode_reg_n_0_[2]\,
      O => \FSM_onehot_cmdmode[5]_i_1_n_0\
    );
\FSM_onehot_cmdmode[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \FSM_onehot_cmdmode[6]_i_2_n_0\,
      I1 => m_axi_rlast,
      I2 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I3 => \FSM_onehot_cmdmode_reg_n_0_[5]\,
      I4 => \FSM_onehot_cmdmode_reg_n_0_[3]\,
      O => \FSM_onehot_cmdmode[6]_i_1_n_0\
    );
\FSM_onehot_cmdmode[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AA88"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[2]\,
      I1 => apucmd(3),
      I2 => apucmd(2),
      I3 => apucmd(1),
      I4 => apucmd(0),
      O => \FSM_onehot_cmdmode[6]_i_2_n_0\
    );
\FSM_onehot_cmdmode[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[4]\,
      I1 => \burstsleft_reg_n_0_[3]\,
      I2 => \burstsleft_reg_n_0_[0]\,
      I3 => \burstsleft_reg_n_0_[1]\,
      I4 => \burstsleft_reg_n_0_[2]\,
      I5 => \FSM_onehot_cmdmode_reg_n_0_[6]\,
      O => \FSM_onehot_cmdmode[7]_i_1_n_0\
    );
\FSM_onehot_cmdmode[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[8]\,
      I1 => m_axi_rlast,
      I2 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      O => \FSM_onehot_cmdmode[9]_i_2_n_0\
    );
\FSM_onehot_cmdmode[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[8]\,
      I1 => m_axi_arready,
      I2 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I3 => m_axi_rvalid,
      O => \FSM_onehot_cmdmode[9]_i_3_n_0\
    );
\FSM_onehot_cmdmode_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => '0',
      Q => \FSM_onehot_cmdmode_reg_n_0_[0]\,
      S => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode[1]_i_1_n_0\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[1]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode_reg_n_0_[1]\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[2]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode[3]_i_1_n_0\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[3]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode[4]_i_1_n_0\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[4]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode[5]_i_1_n_0\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[5]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode[6]_i_1_n_0\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[6]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode[7]_i_1_n_0\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[8]\,
      R => apucommandinterface_n_12
    );
\FSM_onehot_cmdmode_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => apucommandinterface_n_19,
      D => \FSM_onehot_cmdmode[9]_i_2_n_0\,
      Q => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      R => apucommandinterface_n_12
    );
\apuburstcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(2),
      Q => apuburstcount(0),
      R => apucommandinterface_n_12
    );
\apuburstcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(3),
      Q => apuburstcount(1),
      R => apucommandinterface_n_12
    );
\apuburstcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(4),
      Q => apuburstcount(2),
      R => apucommandinterface_n_12
    );
\apuburstcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(5),
      Q => apuburstcount(3),
      R => apucommandinterface_n_12
    );
\apucmd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucmd_1,
      D => apufifodout(0),
      Q => apucmd(0),
      R => apucommandinterface_n_12
    );
\apucmd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucmd_1,
      D => apufifodout(1),
      Q => apucmd(1),
      R => apucommandinterface_n_12
    );
\apucmd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucmd_1,
      D => apufifodout(2),
      Q => apucmd(2),
      R => apucommandinterface_n_12
    );
\apucmd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucmd_1,
      D => apufifodout(3),
      Q => apucmd(3),
      R => apucommandinterface_n_12
    );
apucommandinterface: entity work.blockone_audiomodule_0_0_commandqueue
     port map (
      D(9 downto 0) => apufifodout(9 downto 0),
      E(0) => apucommandinterface_n_19,
      \FSM_onehot_cmdmode_reg[0]\ => \FSM_onehot_cmdmode[9]_i_3_n_0\,
      \FSM_onehot_cmdmode_reg[1]\(0) => apucmd_1,
      \FSM_onehot_cmdmode_reg[3]\(0) => apuwordcount_2,
      \FSM_onehot_cmdmode_reg[4]\(0) => apucommandinterface_n_24,
      \FSM_onehot_cmdmode_reg[6]\(31) => apucommandinterface_n_26,
      \FSM_onehot_cmdmode_reg[6]\(30) => apucommandinterface_n_27,
      \FSM_onehot_cmdmode_reg[6]\(29) => apucommandinterface_n_28,
      \FSM_onehot_cmdmode_reg[6]\(28) => apucommandinterface_n_29,
      \FSM_onehot_cmdmode_reg[6]\(27) => apucommandinterface_n_30,
      \FSM_onehot_cmdmode_reg[6]\(26) => apucommandinterface_n_31,
      \FSM_onehot_cmdmode_reg[6]\(25) => apucommandinterface_n_32,
      \FSM_onehot_cmdmode_reg[6]\(24) => apucommandinterface_n_33,
      \FSM_onehot_cmdmode_reg[6]\(23) => apucommandinterface_n_34,
      \FSM_onehot_cmdmode_reg[6]\(22) => apucommandinterface_n_35,
      \FSM_onehot_cmdmode_reg[6]\(21) => apucommandinterface_n_36,
      \FSM_onehot_cmdmode_reg[6]\(20) => apucommandinterface_n_37,
      \FSM_onehot_cmdmode_reg[6]\(19) => apucommandinterface_n_38,
      \FSM_onehot_cmdmode_reg[6]\(18) => apucommandinterface_n_39,
      \FSM_onehot_cmdmode_reg[6]\(17) => apucommandinterface_n_40,
      \FSM_onehot_cmdmode_reg[6]\(16) => apucommandinterface_n_41,
      \FSM_onehot_cmdmode_reg[6]\(15) => apucommandinterface_n_42,
      \FSM_onehot_cmdmode_reg[6]\(14) => apucommandinterface_n_43,
      \FSM_onehot_cmdmode_reg[6]\(13) => apucommandinterface_n_44,
      \FSM_onehot_cmdmode_reg[6]\(12) => apucommandinterface_n_45,
      \FSM_onehot_cmdmode_reg[6]\(11) => apucommandinterface_n_46,
      \FSM_onehot_cmdmode_reg[6]\(10) => apucommandinterface_n_47,
      \FSM_onehot_cmdmode_reg[6]\(9) => apucommandinterface_n_48,
      \FSM_onehot_cmdmode_reg[6]\(8) => apucommandinterface_n_49,
      \FSM_onehot_cmdmode_reg[6]\(7) => apucommandinterface_n_50,
      \FSM_onehot_cmdmode_reg[6]\(6) => apucommandinterface_n_51,
      \FSM_onehot_cmdmode_reg[6]\(5) => apucommandinterface_n_52,
      \FSM_onehot_cmdmode_reg[6]\(4) => apucommandinterface_n_53,
      \FSM_onehot_cmdmode_reg[6]\(3) => apucommandinterface_n_54,
      \FSM_onehot_cmdmode_reg[6]\(2) => apucommandinterface_n_55,
      \FSM_onehot_cmdmode_reg[6]\(1) => apucommandinterface_n_56,
      \FSM_onehot_cmdmode_reg[6]\(0) => apucommandinterface_n_57,
      \FSM_onehot_cmdmode_reg[7]\(0) => apucommandinterface_n_23,
      Q(8) => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      Q(7) => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      Q(6) => \FSM_onehot_cmdmode_reg_n_0_[6]\,
      Q(5) => \FSM_onehot_cmdmode_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_cmdmode_reg_n_0_[4]\,
      Q(3) => \FSM_onehot_cmdmode_reg_n_0_[3]\,
      Q(2) => \FSM_onehot_cmdmode_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_cmdmode_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_cmdmode_reg_n_0_[0]\,
      SR(0) => apucommandinterface_n_12,
      aclk => aclk,
      \apusourceaddr_reg[5]\(5 downto 0) => apusourceaddr(5 downto 0),
      aresetn(0) => apucommandinterface_n_25,
      empty => apufifoempty,
      in13(25 downto 0) => in13(31 downto 6),
      \m_axi_rdata_reg[32]_0\ => bufferSwapCDC2,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => aresetn,
      rd_en => re_reg_n_0,
      re => re,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(0) => s_axi_rdata(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      valid => apufifovalid
    );
apusourceaddr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => apusourceaddr0_carry_n_0,
      CO(2) => apusourceaddr0_carry_n_1,
      CO(1) => apusourceaddr0_carry_n_2,
      CO(0) => apusourceaddr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => apusourceaddr(7),
      DI(0) => '0',
      O(3 downto 0) => in13(9 downto 6),
      S(3 downto 2) => apusourceaddr(9 downto 8),
      S(1) => apusourceaddr0_carry_i_1_n_0,
      S(0) => apusourceaddr(6)
    );
\apusourceaddr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => apusourceaddr0_carry_n_0,
      CO(3) => \apusourceaddr0_carry__0_n_0\,
      CO(2) => \apusourceaddr0_carry__0_n_1\,
      CO(1) => \apusourceaddr0_carry__0_n_2\,
      CO(0) => \apusourceaddr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in13(13 downto 10),
      S(3 downto 0) => apusourceaddr(13 downto 10)
    );
\apusourceaddr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \apusourceaddr0_carry__0_n_0\,
      CO(3) => \apusourceaddr0_carry__1_n_0\,
      CO(2) => \apusourceaddr0_carry__1_n_1\,
      CO(1) => \apusourceaddr0_carry__1_n_2\,
      CO(0) => \apusourceaddr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in13(17 downto 14),
      S(3 downto 0) => apusourceaddr(17 downto 14)
    );
\apusourceaddr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \apusourceaddr0_carry__1_n_0\,
      CO(3) => \apusourceaddr0_carry__2_n_0\,
      CO(2) => \apusourceaddr0_carry__2_n_1\,
      CO(1) => \apusourceaddr0_carry__2_n_2\,
      CO(0) => \apusourceaddr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in13(21 downto 18),
      S(3 downto 0) => apusourceaddr(21 downto 18)
    );
\apusourceaddr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \apusourceaddr0_carry__2_n_0\,
      CO(3) => \apusourceaddr0_carry__3_n_0\,
      CO(2) => \apusourceaddr0_carry__3_n_1\,
      CO(1) => \apusourceaddr0_carry__3_n_2\,
      CO(0) => \apusourceaddr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in13(25 downto 22),
      S(3 downto 0) => apusourceaddr(25 downto 22)
    );
\apusourceaddr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \apusourceaddr0_carry__3_n_0\,
      CO(3) => \apusourceaddr0_carry__4_n_0\,
      CO(2) => \apusourceaddr0_carry__4_n_1\,
      CO(1) => \apusourceaddr0_carry__4_n_2\,
      CO(0) => \apusourceaddr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in13(29 downto 26),
      S(3 downto 0) => apusourceaddr(29 downto 26)
    );
\apusourceaddr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \apusourceaddr0_carry__4_n_0\,
      CO(3 downto 1) => \NLW_apusourceaddr0_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \apusourceaddr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_apusourceaddr0_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in13(31 downto 30),
      S(3 downto 2) => B"00",
      S(1 downto 0) => apusourceaddr(31 downto 30)
    );
apusourceaddr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => apusourceaddr(7),
      O => apusourceaddr0_carry_i_1_n_0
    );
\apusourceaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_57,
      Q => apusourceaddr(0),
      R => '0'
    );
\apusourceaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_47,
      Q => apusourceaddr(10),
      R => '0'
    );
\apusourceaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_46,
      Q => apusourceaddr(11),
      R => '0'
    );
\apusourceaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_45,
      Q => apusourceaddr(12),
      R => '0'
    );
\apusourceaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_44,
      Q => apusourceaddr(13),
      R => '0'
    );
\apusourceaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_43,
      Q => apusourceaddr(14),
      R => '0'
    );
\apusourceaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_42,
      Q => apusourceaddr(15),
      R => '0'
    );
\apusourceaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_41,
      Q => apusourceaddr(16),
      R => '0'
    );
\apusourceaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_40,
      Q => apusourceaddr(17),
      R => '0'
    );
\apusourceaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_39,
      Q => apusourceaddr(18),
      R => '0'
    );
\apusourceaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_38,
      Q => apusourceaddr(19),
      R => '0'
    );
\apusourceaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_56,
      Q => apusourceaddr(1),
      R => '0'
    );
\apusourceaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_37,
      Q => apusourceaddr(20),
      R => '0'
    );
\apusourceaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_36,
      Q => apusourceaddr(21),
      R => '0'
    );
\apusourceaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_35,
      Q => apusourceaddr(22),
      R => '0'
    );
\apusourceaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_34,
      Q => apusourceaddr(23),
      R => '0'
    );
\apusourceaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_33,
      Q => apusourceaddr(24),
      R => '0'
    );
\apusourceaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_32,
      Q => apusourceaddr(25),
      R => '0'
    );
\apusourceaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_31,
      Q => apusourceaddr(26),
      R => '0'
    );
\apusourceaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_30,
      Q => apusourceaddr(27),
      R => '0'
    );
\apusourceaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_29,
      Q => apusourceaddr(28),
      R => '0'
    );
\apusourceaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_28,
      Q => apusourceaddr(29),
      R => '0'
    );
\apusourceaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_55,
      Q => apusourceaddr(2),
      R => '0'
    );
\apusourceaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_27,
      Q => apusourceaddr(30),
      R => '0'
    );
\apusourceaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_26,
      Q => apusourceaddr(31),
      R => '0'
    );
\apusourceaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_54,
      Q => apusourceaddr(3),
      R => '0'
    );
\apusourceaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_53,
      Q => apusourceaddr(4),
      R => '0'
    );
\apusourceaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_52,
      Q => apusourceaddr(5),
      R => '0'
    );
\apusourceaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_51,
      Q => apusourceaddr(6),
      R => '0'
    );
\apusourceaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_50,
      Q => apusourceaddr(7),
      R => '0'
    );
\apusourceaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_49,
      Q => apusourceaddr(8),
      R => '0'
    );
\apusourceaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_25,
      D => apucommandinterface_n_48,
      Q => apusourceaddr(9),
      R => '0'
    );
\apuwordcount_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(0),
      Q => apuwordcount(0),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(1),
      Q => apuwordcount(1),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(2),
      Q => apuwordcount(2),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(3),
      Q => apuwordcount(3),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(4),
      Q => apuwordcount(4),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(5),
      Q => apuwordcount(5),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(6),
      Q => apuwordcount(6),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(7),
      Q => apuwordcount(7),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(8),
      Q => apuwordcount(8),
      S => apucommandinterface_n_12
    );
\apuwordcount_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => apuwordcount_2,
      D => apufifodout(9),
      Q => apuwordcount(9),
      S => apucommandinterface_n_12
    );
aresetnA_reg: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => aresetn,
      Q => aresetnA,
      R => '0'
    );
aresetnB_reg: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => aresetnA,
      Q => aresetnB,
      R => '0'
    );
asampleclk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstaudion,
      O => clear
    );
asampleclk_reg: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_1_in,
      Q => asampleclk,
      R => clear
    );
audioclockbuffer: unisim.vcomponents.BUFG
     port map (
      I => asampleclk,
      O => audiosampleclk
    );
bufferSwapCDC1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => bufferSwap,
      Q => bufferSwapCDC1,
      R => apucommandinterface_n_12
    );
bufferSwapCDC2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => bufferSwapCDC1,
      Q => bufferSwapCDC2,
      R => apucommandinterface_n_12
    );
bufferSwap_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \readCursor0_inferred__0/i__carry_n_0\,
      I1 => bufferSwap,
      O => bufferSwap_i_1_n_0
    );
bufferSwap_reg: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => bufferSwap_i_1_n_0,
      Q => bufferSwap,
      R => clear
    );
\burstsleft[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \burstsleft_reg_n_0_[0]\,
      I1 => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      I2 => apuburstcount(0),
      I3 => \FSM_onehot_cmdmode_reg_n_0_[4]\,
      O => burstsleft(0)
    );
\burstsleft[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => \burstsleft_reg_n_0_[0]\,
      I1 => \burstsleft_reg_n_0_[1]\,
      I2 => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      I3 => apuburstcount(1),
      I4 => \FSM_onehot_cmdmode_reg_n_0_[4]\,
      O => burstsleft(1)
    );
\burstsleft[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA900A900A900"
    )
        port map (
      I0 => \burstsleft_reg_n_0_[2]\,
      I1 => \burstsleft_reg_n_0_[1]\,
      I2 => \burstsleft_reg_n_0_[0]\,
      I3 => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      I4 => apuburstcount(2),
      I5 => \FSM_onehot_cmdmode_reg_n_0_[4]\,
      O => burstsleft(2)
    );
\burstsleft[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => \burstsleft_reg_n_0_[3]\,
      I1 => \burstsleft[3]_i_3_n_0\,
      I2 => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      I3 => apuburstcount(3),
      I4 => \FSM_onehot_cmdmode_reg_n_0_[4]\,
      O => burstsleft(3)
    );
\burstsleft[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \burstsleft_reg_n_0_[2]\,
      I1 => \burstsleft_reg_n_0_[1]\,
      I2 => \burstsleft_reg_n_0_[0]\,
      O => \burstsleft[3]_i_3_n_0\
    );
\burstsleft_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_23,
      D => burstsleft(0),
      Q => \burstsleft_reg_n_0_[0]\,
      R => apucommandinterface_n_12
    );
\burstsleft_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_23,
      D => burstsleft(1),
      Q => \burstsleft_reg_n_0_[1]\,
      R => apucommandinterface_n_12
    );
\burstsleft_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_23,
      D => burstsleft(2),
      Q => \burstsleft_reg_n_0_[2]\,
      R => apucommandinterface_n_12
    );
\burstsleft_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_23,
      D => burstsleft(3),
      Q => \burstsleft_reg_n_0_[3]\,
      R => apucommandinterface_n_12
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \count_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \readLowbits[1]_i_4_n_0\,
      I1 => \count_reg_n_0_[6]\,
      O => p_0_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \readLowbits[1]_i_4_n_0\,
      I2 => \count_reg_n_0_[7]\,
      O => p_0_in(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \readLowbits[1]_i_4_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => p_1_in,
      O => p_0_in(8)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(0),
      Q => \count_reg_n_0_[0]\,
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(1),
      Q => \count_reg_n_0_[1]\,
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(2),
      Q => \count_reg_n_0_[2]\,
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(3),
      Q => \count_reg_n_0_[3]\,
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(4),
      Q => \count_reg_n_0_[4]\,
      R => clear
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(5),
      Q => \count_reg_n_0_[5]\,
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(6),
      Q => \count_reg_n_0_[6]\,
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(7),
      Q => \count_reg_n_0_[7]\,
      R => clear
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => p_0_in(8),
      Q => p_1_in,
      R => clear
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => apuwordcount(9),
      I1 => outaddr(9),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => apuwordcount(8),
      I1 => outaddr(8),
      I2 => apuwordcount(7),
      I3 => outaddr(7),
      I4 => outaddr(6),
      I5 => apuwordcount(6),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => apuwordcount(5),
      I1 => outaddr(5),
      I2 => apuwordcount(4),
      I3 => outaddr(4),
      I4 => outaddr(3),
      I5 => apuwordcount(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => apuwordcount(2),
      I1 => outaddr(2),
      I2 => apuwordcount(1),
      I3 => outaddr(1),
      I4 => outaddr(0),
      I5 => apuwordcount(0),
      O => \i__carry_i_4_n_0\
    );
re_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => re,
      Q => re_reg_n_0,
      R => apucommandinterface_n_12
    );
\readCursor0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \readCursor0_inferred__0/i__carry_n_0\,
      CO(2) => \readCursor0_inferred__0/i__carry_n_1\,
      CO(1) => \readCursor0_inferred__0/i__carry_n_2\,
      CO(0) => \readCursor0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_readCursor0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\readCursor_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(2),
      Q => outaddr(0),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(3),
      Q => outaddr(1),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(4),
      Q => outaddr(2),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(5),
      Q => outaddr(3),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(6),
      Q => outaddr(4),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(7),
      Q => outaddr(5),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readLowbits_reg[1]_i_3_n_0\,
      CO(3) => \readCursor_reg[5]_i_1_n_0\,
      CO(2) => \readCursor_reg[5]_i_1_n_1\,
      CO(1) => \readCursor_reg[5]_i_1_n_2\,
      CO(0) => \readCursor_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => readCursor0(7 downto 4),
      S(3 downto 0) => outaddr(5 downto 2)
    );
\readCursor_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(8),
      Q => outaddr(6),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(9),
      Q => outaddr(7),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(10),
      Q => outaddr(8),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(11),
      Q => outaddr(9),
      R => \readLowbits[1]_i_1_n_0\
    );
\readCursor_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCursor_reg[5]_i_1_n_0\,
      CO(3) => \NLW_readCursor_reg[9]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \readCursor_reg[9]_i_1_n_1\,
      CO(1) => \readCursor_reg[9]_i_1_n_2\,
      CO(0) => \readCursor_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => readCursor0(11 downto 8),
      S(3 downto 0) => outaddr(9 downto 6)
    );
\readLowbits[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \readCursor0_inferred__0/i__carry_n_0\,
      I1 => rstaudion,
      O => \readLowbits[1]_i_1_n_0\
    );
\readLowbits[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \readLowbits[1]_i_4_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => p_1_in,
      O => readCursor
    );
\readLowbits[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \count_reg_n_0_[5]\,
      O => \readLowbits[1]_i_4_n_0\
    );
\readLowbits[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => outaddr(0),
      I1 => \sampleoutputrateselector_reg_n_0_[2]\,
      O => \readLowbits[1]_i_5_n_0\
    );
\readLowbits[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => readLowbits(1),
      I1 => \sampleoutputrateselector_reg_n_0_[1]\,
      O => \readLowbits[1]_i_6_n_0\
    );
\readLowbits[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => readLowbits(0),
      I1 => \sampleoutputrateselector_reg_n_0_[0]\,
      O => \readLowbits[1]_i_7_n_0\
    );
\readLowbits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(0),
      Q => readLowbits(0),
      R => \readLowbits[1]_i_1_n_0\
    );
\readLowbits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => readCursor,
      D => readCursor0(1),
      Q => readLowbits(1),
      R => \readLowbits[1]_i_1_n_0\
    );
\readLowbits_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \readLowbits_reg[1]_i_3_n_0\,
      CO(2) => \readLowbits_reg[1]_i_3_n_1\,
      CO(1) => \readLowbits_reg[1]_i_3_n_2\,
      CO(0) => \readLowbits_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => outaddr(0),
      DI(1 downto 0) => readLowbits(1 downto 0),
      O(3 downto 0) => readCursor0(3 downto 0),
      S(3) => outaddr(1),
      S(2) => \readLowbits[1]_i_5_n_0\,
      S(1) => \readLowbits[1]_i_6_n_0\,
      S(0) => \readLowbits[1]_i_7_n_0\
    );
rstaudion_reg: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => aresetnB,
      Q => rstaudion,
      R => '0'
    );
\s_axi_araddr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      O => \s_axi_araddr[31]_i_1_n_0\
    );
\s_axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(0),
      Q => m_axi_araddr(0),
      R => '0'
    );
\s_axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(10),
      Q => m_axi_araddr(10),
      R => '0'
    );
\s_axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(11),
      Q => m_axi_araddr(11),
      R => '0'
    );
\s_axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(12),
      Q => m_axi_araddr(12),
      R => '0'
    );
\s_axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(13),
      Q => m_axi_araddr(13),
      R => '0'
    );
\s_axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(14),
      Q => m_axi_araddr(14),
      R => '0'
    );
\s_axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(15),
      Q => m_axi_araddr(15),
      R => '0'
    );
\s_axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(16),
      Q => m_axi_araddr(16),
      R => '0'
    );
\s_axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(17),
      Q => m_axi_araddr(17),
      R => '0'
    );
\s_axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(18),
      Q => m_axi_araddr(18),
      R => '0'
    );
\s_axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(19),
      Q => m_axi_araddr(19),
      R => '0'
    );
\s_axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(1),
      Q => m_axi_araddr(1),
      R => '0'
    );
\s_axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(20),
      Q => m_axi_araddr(20),
      R => '0'
    );
\s_axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(21),
      Q => m_axi_araddr(21),
      R => '0'
    );
\s_axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(22),
      Q => m_axi_araddr(22),
      R => '0'
    );
\s_axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(23),
      Q => m_axi_araddr(23),
      R => '0'
    );
\s_axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(24),
      Q => m_axi_araddr(24),
      R => '0'
    );
\s_axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(25),
      Q => m_axi_araddr(25),
      R => '0'
    );
\s_axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(26),
      Q => m_axi_araddr(26),
      R => '0'
    );
\s_axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(27),
      Q => m_axi_araddr(27),
      R => '0'
    );
\s_axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(28),
      Q => m_axi_araddr(28),
      R => '0'
    );
\s_axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(29),
      Q => m_axi_araddr(29),
      R => '0'
    );
\s_axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(2),
      Q => m_axi_araddr(2),
      R => '0'
    );
\s_axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(30),
      Q => m_axi_araddr(30),
      R => '0'
    );
\s_axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(31),
      Q => m_axi_araddr(31),
      R => '0'
    );
\s_axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(3),
      Q => m_axi_araddr(3),
      R => '0'
    );
\s_axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(4),
      Q => m_axi_araddr(4),
      R => '0'
    );
\s_axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(5),
      Q => m_axi_araddr(5),
      R => '0'
    );
\s_axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(6),
      Q => m_axi_araddr(6),
      R => '0'
    );
\s_axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(7),
      Q => m_axi_araddr(7),
      R => '0'
    );
\s_axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(8),
      Q => m_axi_araddr(8),
      R => '0'
    );
\s_axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_araddr[31]_i_1_n_0\,
      D => apusourceaddr(9),
      Q => m_axi_araddr(9),
      R => '0'
    );
s_axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDFDF88888888"
    )
        port map (
      I0 => aresetn,
      I1 => \FSM_onehot_cmdmode_reg_n_0_[7]\,
      I2 => \FSM_onehot_cmdmode_reg_n_0_[0]\,
      I3 => m_axi_arready,
      I4 => \FSM_onehot_cmdmode_reg_n_0_[8]\,
      I5 => \^m_axi_arvalid\,
      O => s_axi_arvalid_i_1_n_0
    );
s_axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_arvalid_i_1_n_0,
      Q => \^m_axi_arvalid\,
      R => '0'
    );
s_axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[8]\,
      I1 => m_axi_arready,
      I2 => m_axi_rlast,
      I3 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I4 => s_axi_rready0_out,
      I5 => \^m_axi_rready\,
      O => s_axi_rready_i_1_n_0
    );
s_axi_rready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => aresetn,
      I1 => \FSM_onehot_cmdmode_reg_n_0_[8]\,
      I2 => m_axi_arready,
      I3 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I4 => m_axi_rvalid,
      I5 => \FSM_onehot_cmdmode_reg_n_0_[0]\,
      O => s_axi_rready0_out
    );
s_axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rready_i_1_n_0,
      Q => \^m_axi_rready\,
      R => '0'
    );
\sampleIn[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I1 => m_axi_rvalid,
      I2 => aresetn,
      O => \sampleIn[63]_i_1_n_0\
    );
\sampleIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(0),
      Q => \sampleIn_reg_n_0_[0]\,
      R => '0'
    );
\sampleIn_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(10),
      Q => \sampleIn_reg_n_0_[10]\,
      R => '0'
    );
\sampleIn_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(11),
      Q => \sampleIn_reg_n_0_[11]\,
      R => '0'
    );
\sampleIn_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(12),
      Q => \sampleIn_reg_n_0_[12]\,
      R => '0'
    );
\sampleIn_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(13),
      Q => \sampleIn_reg_n_0_[13]\,
      R => '0'
    );
\sampleIn_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(14),
      Q => \sampleIn_reg_n_0_[14]\,
      R => '0'
    );
\sampleIn_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(15),
      Q => \sampleIn_reg_n_0_[15]\,
      R => '0'
    );
\sampleIn_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(16),
      Q => \sampleIn_reg_n_0_[16]\,
      R => '0'
    );
\sampleIn_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(17),
      Q => \sampleIn_reg_n_0_[17]\,
      R => '0'
    );
\sampleIn_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(18),
      Q => \sampleIn_reg_n_0_[18]\,
      R => '0'
    );
\sampleIn_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(19),
      Q => \sampleIn_reg_n_0_[19]\,
      R => '0'
    );
\sampleIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(1),
      Q => \sampleIn_reg_n_0_[1]\,
      R => '0'
    );
\sampleIn_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(20),
      Q => \sampleIn_reg_n_0_[20]\,
      R => '0'
    );
\sampleIn_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(21),
      Q => \sampleIn_reg_n_0_[21]\,
      R => '0'
    );
\sampleIn_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(22),
      Q => \sampleIn_reg_n_0_[22]\,
      R => '0'
    );
\sampleIn_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(23),
      Q => \sampleIn_reg_n_0_[23]\,
      R => '0'
    );
\sampleIn_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(24),
      Q => \sampleIn_reg_n_0_[24]\,
      R => '0'
    );
\sampleIn_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(25),
      Q => \sampleIn_reg_n_0_[25]\,
      R => '0'
    );
\sampleIn_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(26),
      Q => \sampleIn_reg_n_0_[26]\,
      R => '0'
    );
\sampleIn_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(27),
      Q => \sampleIn_reg_n_0_[27]\,
      R => '0'
    );
\sampleIn_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(28),
      Q => \sampleIn_reg_n_0_[28]\,
      R => '0'
    );
\sampleIn_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(29),
      Q => \sampleIn_reg_n_0_[29]\,
      R => '0'
    );
\sampleIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(2),
      Q => \sampleIn_reg_n_0_[2]\,
      R => '0'
    );
\sampleIn_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(30),
      Q => \sampleIn_reg_n_0_[30]\,
      R => '0'
    );
\sampleIn_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(31),
      Q => \sampleIn_reg_n_0_[31]\,
      R => '0'
    );
\sampleIn_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(32),
      Q => \sampleIn_reg_n_0_[32]\,
      R => '0'
    );
\sampleIn_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(33),
      Q => \sampleIn_reg_n_0_[33]\,
      R => '0'
    );
\sampleIn_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(34),
      Q => \sampleIn_reg_n_0_[34]\,
      R => '0'
    );
\sampleIn_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(35),
      Q => \sampleIn_reg_n_0_[35]\,
      R => '0'
    );
\sampleIn_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(36),
      Q => \sampleIn_reg_n_0_[36]\,
      R => '0'
    );
\sampleIn_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(37),
      Q => \sampleIn_reg_n_0_[37]\,
      R => '0'
    );
\sampleIn_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(38),
      Q => \sampleIn_reg_n_0_[38]\,
      R => '0'
    );
\sampleIn_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(39),
      Q => \sampleIn_reg_n_0_[39]\,
      R => '0'
    );
\sampleIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(3),
      Q => \sampleIn_reg_n_0_[3]\,
      R => '0'
    );
\sampleIn_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(40),
      Q => \sampleIn_reg_n_0_[40]\,
      R => '0'
    );
\sampleIn_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(41),
      Q => \sampleIn_reg_n_0_[41]\,
      R => '0'
    );
\sampleIn_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(42),
      Q => \sampleIn_reg_n_0_[42]\,
      R => '0'
    );
\sampleIn_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(43),
      Q => \sampleIn_reg_n_0_[43]\,
      R => '0'
    );
\sampleIn_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(44),
      Q => \sampleIn_reg_n_0_[44]\,
      R => '0'
    );
\sampleIn_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(45),
      Q => \sampleIn_reg_n_0_[45]\,
      R => '0'
    );
\sampleIn_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(46),
      Q => \sampleIn_reg_n_0_[46]\,
      R => '0'
    );
\sampleIn_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(47),
      Q => \sampleIn_reg_n_0_[47]\,
      R => '0'
    );
\sampleIn_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(48),
      Q => \sampleIn_reg_n_0_[48]\,
      R => '0'
    );
\sampleIn_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(49),
      Q => \sampleIn_reg_n_0_[49]\,
      R => '0'
    );
\sampleIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(4),
      Q => \sampleIn_reg_n_0_[4]\,
      R => '0'
    );
\sampleIn_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(50),
      Q => \sampleIn_reg_n_0_[50]\,
      R => '0'
    );
\sampleIn_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(51),
      Q => \sampleIn_reg_n_0_[51]\,
      R => '0'
    );
\sampleIn_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(52),
      Q => \sampleIn_reg_n_0_[52]\,
      R => '0'
    );
\sampleIn_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(53),
      Q => \sampleIn_reg_n_0_[53]\,
      R => '0'
    );
\sampleIn_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(54),
      Q => \sampleIn_reg_n_0_[54]\,
      R => '0'
    );
\sampleIn_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(55),
      Q => \sampleIn_reg_n_0_[55]\,
      R => '0'
    );
\sampleIn_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(56),
      Q => \sampleIn_reg_n_0_[56]\,
      R => '0'
    );
\sampleIn_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(57),
      Q => \sampleIn_reg_n_0_[57]\,
      R => '0'
    );
\sampleIn_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(58),
      Q => \sampleIn_reg_n_0_[58]\,
      R => '0'
    );
\sampleIn_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(59),
      Q => \sampleIn_reg_n_0_[59]\,
      R => '0'
    );
\sampleIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(5),
      Q => \sampleIn_reg_n_0_[5]\,
      R => '0'
    );
\sampleIn_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(60),
      Q => \sampleIn_reg_n_0_[60]\,
      R => '0'
    );
\sampleIn_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(61),
      Q => \sampleIn_reg_n_0_[61]\,
      R => '0'
    );
\sampleIn_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(62),
      Q => \sampleIn_reg_n_0_[62]\,
      R => '0'
    );
\sampleIn_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(63),
      Q => \sampleIn_reg_n_0_[63]\,
      R => '0'
    );
\sampleIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(6),
      Q => \sampleIn_reg_n_0_[6]\,
      R => '0'
    );
\sampleIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(7),
      Q => \sampleIn_reg_n_0_[7]\,
      R => '0'
    );
\sampleIn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(8),
      Q => \sampleIn_reg_n_0_[8]\,
      R => '0'
    );
\sampleIn_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sampleIn[63]_i_1_n_0\,
      D => m_axi_rdata(9),
      Q => \sampleIn_reg_n_0_[9]\,
      R => '0'
    );
samplememinst: component blockone_audiomodule_0_0_samplemem
     port map (
      addra(9) => '0',
      addra(8 downto 0) => inaddr(8 downto 0),
      addrb(10 downto 0) => outaddr(10 downto 0),
      clka => aclk,
      clkb => audioclock,
      dina(63) => \sampleIn_reg_n_0_[63]\,
      dina(62) => \sampleIn_reg_n_0_[62]\,
      dina(61) => \sampleIn_reg_n_0_[61]\,
      dina(60) => \sampleIn_reg_n_0_[60]\,
      dina(59) => \sampleIn_reg_n_0_[59]\,
      dina(58) => \sampleIn_reg_n_0_[58]\,
      dina(57) => \sampleIn_reg_n_0_[57]\,
      dina(56) => \sampleIn_reg_n_0_[56]\,
      dina(55) => \sampleIn_reg_n_0_[55]\,
      dina(54) => \sampleIn_reg_n_0_[54]\,
      dina(53) => \sampleIn_reg_n_0_[53]\,
      dina(52) => \sampleIn_reg_n_0_[52]\,
      dina(51) => \sampleIn_reg_n_0_[51]\,
      dina(50) => \sampleIn_reg_n_0_[50]\,
      dina(49) => \sampleIn_reg_n_0_[49]\,
      dina(48) => \sampleIn_reg_n_0_[48]\,
      dina(47) => \sampleIn_reg_n_0_[47]\,
      dina(46) => \sampleIn_reg_n_0_[46]\,
      dina(45) => \sampleIn_reg_n_0_[45]\,
      dina(44) => \sampleIn_reg_n_0_[44]\,
      dina(43) => \sampleIn_reg_n_0_[43]\,
      dina(42) => \sampleIn_reg_n_0_[42]\,
      dina(41) => \sampleIn_reg_n_0_[41]\,
      dina(40) => \sampleIn_reg_n_0_[40]\,
      dina(39) => \sampleIn_reg_n_0_[39]\,
      dina(38) => \sampleIn_reg_n_0_[38]\,
      dina(37) => \sampleIn_reg_n_0_[37]\,
      dina(36) => \sampleIn_reg_n_0_[36]\,
      dina(35) => \sampleIn_reg_n_0_[35]\,
      dina(34) => \sampleIn_reg_n_0_[34]\,
      dina(33) => \sampleIn_reg_n_0_[33]\,
      dina(32) => \sampleIn_reg_n_0_[32]\,
      dina(31) => \sampleIn_reg_n_0_[31]\,
      dina(30) => \sampleIn_reg_n_0_[30]\,
      dina(29) => \sampleIn_reg_n_0_[29]\,
      dina(28) => \sampleIn_reg_n_0_[28]\,
      dina(27) => \sampleIn_reg_n_0_[27]\,
      dina(26) => \sampleIn_reg_n_0_[26]\,
      dina(25) => \sampleIn_reg_n_0_[25]\,
      dina(24) => \sampleIn_reg_n_0_[24]\,
      dina(23) => \sampleIn_reg_n_0_[23]\,
      dina(22) => \sampleIn_reg_n_0_[22]\,
      dina(21) => \sampleIn_reg_n_0_[21]\,
      dina(20) => \sampleIn_reg_n_0_[20]\,
      dina(19) => \sampleIn_reg_n_0_[19]\,
      dina(18) => \sampleIn_reg_n_0_[18]\,
      dina(17) => \sampleIn_reg_n_0_[17]\,
      dina(16) => \sampleIn_reg_n_0_[16]\,
      dina(15) => \sampleIn_reg_n_0_[15]\,
      dina(14) => \sampleIn_reg_n_0_[14]\,
      dina(13) => \sampleIn_reg_n_0_[13]\,
      dina(12) => \sampleIn_reg_n_0_[12]\,
      dina(11) => \sampleIn_reg_n_0_[11]\,
      dina(10) => \sampleIn_reg_n_0_[10]\,
      dina(9) => \sampleIn_reg_n_0_[9]\,
      dina(8) => \sampleIn_reg_n_0_[8]\,
      dina(7) => \sampleIn_reg_n_0_[7]\,
      dina(6) => \sampleIn_reg_n_0_[6]\,
      dina(5) => \sampleIn_reg_n_0_[5]\,
      dina(4) => \sampleIn_reg_n_0_[4]\,
      dina(3) => \sampleIn_reg_n_0_[3]\,
      dina(2) => \sampleIn_reg_n_0_[2]\,
      dina(1) => \sampleIn_reg_n_0_[1]\,
      dina(0) => \sampleIn_reg_n_0_[0]\,
      doutb(31 downto 0) => sampleOut(31 downto 0),
      enb => samplere,
      wea(0) => samplewe_reg_n_0
    );
samplememinst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inaddr(8),
      O => outaddr(10)
    );
\sampleoutputrateselector[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFF00002000"
    )
        port map (
      I0 => apufifodout(1),
      I1 => apufifodout(0),
      I2 => \FSM_onehot_cmdmode_reg_n_0_[5]\,
      I3 => apufifovalid,
      I4 => apufifoempty,
      I5 => \sampleoutputrateselector_reg_n_0_[0]\,
      O => \sampleoutputrateselector[0]_i_1_n_0\
    );
\sampleoutputrateselector[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFF00002000"
    )
        port map (
      I0 => apufifodout(0),
      I1 => apufifodout(1),
      I2 => \FSM_onehot_cmdmode_reg_n_0_[5]\,
      I3 => apufifovalid,
      I4 => apufifoempty,
      I5 => \sampleoutputrateselector_reg_n_0_[1]\,
      O => \sampleoutputrateselector[1]_i_1_n_0\
    );
\sampleoutputrateselector[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1FFF00001000"
    )
        port map (
      I0 => apufifodout(1),
      I1 => apufifodout(0),
      I2 => \FSM_onehot_cmdmode_reg_n_0_[5]\,
      I3 => apufifovalid,
      I4 => apufifoempty,
      I5 => \sampleoutputrateselector_reg_n_0_[2]\,
      O => \sampleoutputrateselector[2]_i_1_n_0\
    );
\sampleoutputrateselector_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \sampleoutputrateselector[0]_i_1_n_0\,
      Q => \sampleoutputrateselector_reg_n_0_[0]\,
      R => apucommandinterface_n_12
    );
\sampleoutputrateselector_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \sampleoutputrateselector[1]_i_1_n_0\,
      Q => \sampleoutputrateselector_reg_n_0_[1]\,
      R => apucommandinterface_n_12
    );
\sampleoutputrateselector_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \sampleoutputrateselector[2]_i_1_n_0\,
      Q => \sampleoutputrateselector_reg_n_0_[2]\,
      R => apucommandinterface_n_12
    );
samplere_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => rstaudion,
      I1 => \sampleoutputrateselector_reg_n_0_[2]\,
      I2 => \sampleoutputrateselector_reg_n_0_[1]\,
      I3 => \sampleoutputrateselector_reg_n_0_[0]\,
      O => samplere_i_1_n_0
    );
samplere_reg: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => samplere_i_1_n_0,
      Q => samplere,
      R => '0'
    );
samplewe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      O => samplewe
    );
samplewe_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => samplewe,
      Q => samplewe_reg_n_0,
      R => apucommandinterface_n_12
    );
\tx_data_lr[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \sampleoutputrateselector_reg_n_0_[0]\,
      I1 => \sampleoutputrateselector_reg_n_0_[1]\,
      I2 => \sampleoutputrateselector_reg_n_0_[2]\,
      I3 => rstaudion,
      O => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(0),
      Q => audioSampleOutputLR(0),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(10),
      Q => audioSampleOutputLR(10),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(11),
      Q => audioSampleOutputLR(11),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(12),
      Q => audioSampleOutputLR(12),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(13),
      Q => audioSampleOutputLR(13),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(14),
      Q => audioSampleOutputLR(14),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(15),
      Q => audioSampleOutputLR(15),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(16),
      Q => audioSampleOutputLR(16),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(17),
      Q => audioSampleOutputLR(17),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(18),
      Q => audioSampleOutputLR(18),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(19),
      Q => audioSampleOutputLR(19),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(1),
      Q => audioSampleOutputLR(1),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(20),
      Q => audioSampleOutputLR(20),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(21),
      Q => audioSampleOutputLR(21),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(22),
      Q => audioSampleOutputLR(22),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(23),
      Q => audioSampleOutputLR(23),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(24),
      Q => audioSampleOutputLR(24),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(25),
      Q => audioSampleOutputLR(25),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(26),
      Q => audioSampleOutputLR(26),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(27),
      Q => audioSampleOutputLR(27),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(28),
      Q => audioSampleOutputLR(28),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(29),
      Q => audioSampleOutputLR(29),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(2),
      Q => audioSampleOutputLR(2),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(30),
      Q => audioSampleOutputLR(30),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(31),
      Q => audioSampleOutputLR(31),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(3),
      Q => audioSampleOutputLR(3),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(4),
      Q => audioSampleOutputLR(4),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(5),
      Q => audioSampleOutputLR(5),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(6),
      Q => audioSampleOutputLR(6),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(7),
      Q => audioSampleOutputLR(7),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(8),
      Q => audioSampleOutputLR(8),
      R => \tx_data_lr[31]_i_1_n_0\
    );
\tx_data_lr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => sampleOut(9),
      Q => audioSampleOutputLR(9),
      R => \tx_data_lr[31]_i_1_n_0\
    );
writeBufferSelect_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \readCursor0_inferred__0/i__carry_n_0\,
      I1 => inaddr(8),
      O => writeBufferSelect_i_1_n_0
    );
writeBufferSelect_reg: unisim.vcomponents.FDRE
     port map (
      C => audioclock,
      CE => '1',
      D => writeBufferSelect_i_1_n_0,
      Q => inaddr(8),
      R => clear
    );
\writeCursor[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I1 => inaddr(0),
      O => \writeCursor[0]_i_1_n_0\
    );
\writeCursor[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => inaddr(1),
      I1 => inaddr(0),
      I2 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      O => \writeCursor[1]_i_1_n_0\
    );
\writeCursor[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I1 => inaddr(0),
      I2 => inaddr(1),
      I3 => inaddr(2),
      O => \writeCursor[2]_i_1_n_0\
    );
\writeCursor[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I1 => inaddr(1),
      I2 => inaddr(0),
      I3 => inaddr(2),
      I4 => inaddr(3),
      O => \writeCursor[3]_i_1_n_0\
    );
\writeCursor[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I1 => inaddr(2),
      I2 => inaddr(0),
      I3 => inaddr(1),
      I4 => inaddr(3),
      I5 => inaddr(4),
      O => \writeCursor[4]_i_1_n_0\
    );
\writeCursor[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I1 => \writeCursor[5]_i_2_n_0\,
      I2 => inaddr(5),
      O => \writeCursor[5]_i_1_n_0\
    );
\writeCursor[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => inaddr(3),
      I1 => inaddr(1),
      I2 => inaddr(0),
      I3 => inaddr(2),
      I4 => inaddr(4),
      O => \writeCursor[5]_i_2_n_0\
    );
\writeCursor[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      I1 => \writeCursor[7]_i_3_n_0\,
      I2 => inaddr(6),
      O => \writeCursor[6]_i_1_n_0\
    );
\writeCursor[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \writeCursor[7]_i_3_n_0\,
      I1 => inaddr(6),
      I2 => inaddr(7),
      I3 => \FSM_onehot_cmdmode_reg_n_0_[9]\,
      O => \writeCursor[7]_i_2_n_0\
    );
\writeCursor[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => inaddr(5),
      I1 => inaddr(4),
      I2 => inaddr(2),
      I3 => inaddr(0),
      I4 => inaddr(1),
      I5 => inaddr(3),
      O => \writeCursor[7]_i_3_n_0\
    );
\writeCursor_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[0]_i_1_n_0\,
      Q => inaddr(0),
      R => apucommandinterface_n_12
    );
\writeCursor_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[1]_i_1_n_0\,
      Q => inaddr(1),
      R => apucommandinterface_n_12
    );
\writeCursor_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[2]_i_1_n_0\,
      Q => inaddr(2),
      R => apucommandinterface_n_12
    );
\writeCursor_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[3]_i_1_n_0\,
      Q => inaddr(3),
      R => apucommandinterface_n_12
    );
\writeCursor_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[4]_i_1_n_0\,
      Q => inaddr(4),
      R => apucommandinterface_n_12
    );
\writeCursor_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[5]_i_1_n_0\,
      Q => inaddr(5),
      R => apucommandinterface_n_12
    );
\writeCursor_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[6]_i_1_n_0\,
      Q => inaddr(6),
      R => apucommandinterface_n_12
    );
\writeCursor_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => apucommandinterface_n_24,
      D => \writeCursor[7]_i_2_n_0\,
      Q => inaddr(7),
      R => apucommandinterface_n_12
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blockone_audiomodule_0_0_audiomodule is
  port (
    aclk : in STD_LOGIC;
    audioclock : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    audiosampleclk : out STD_LOGIC;
    audioSampleOutputLR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blockone_audiomodule_0_0_audiomodule : entity is "audiomodule";
end blockone_audiomodule_0_0_audiomodule;

architecture STRUCTURE of blockone_audiomodule_0_0_audiomodule is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(5) <= \<const0>\;
  m_axi_arid(4) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(5) <= \<const0>\;
  m_axi_awid(4) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(5) <= \<const0>\;
  m_axi_wid(4) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  s_axi_bid(5) <= \<const0>\;
  s_axi_bid(4) <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \^s_axi_rdata\(0);
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \^s_axi_rdata\(0);
  s_axi_rid(5) <= \<const0>\;
  s_axi_rid(4) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
audiocoreInst: entity work.blockone_audiomodule_0_0_audiocore
     port map (
      aclk => aclk,
      aresetn => aresetn,
      audioSampleOutputLR(31 downto 0) => audioSampleOutputLR(31 downto 0),
      audioclock => audioclock,
      audiosampleclk => audiosampleclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(0) => \^s_axi_rdata\(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blockone_audiomodule_0_0 is
  port (
    aclk : in STD_LOGIC;
    audioclock : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    audiosampleclk : out STD_LOGIC;
    audioSampleOutputLR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of blockone_audiomodule_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blockone_audiomodule_0_0 : entity is "blockone_audiomodule_0_0,audiomodule,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of blockone_audiomodule_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of blockone_audiomodule_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of blockone_audiomodule_0_0 : entity is "audiomodule,Vivado 2024.2.2";
end blockone_audiomodule_0_0;

architecture STRUCTURE of blockone_audiomodule_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal NLW_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 1 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi:s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 166666672, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute X_INTERFACE_MODE of m_axi_arready : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axi_arready : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 166666672, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_MODE of s_axi_arready : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_arready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 166666672, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 s_axi RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 m_axi BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 m_axi RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_wid : signal is "xilinx.com:interface:aximm:1.0 m_axi WID";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 s_axi ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 s_axi ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 s_axi ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 s_axi AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 s_axi AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 s_axi BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 s_axi RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wid : signal is "xilinx.com:interface:aximm:1.0 s_axi WID";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const1>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const1>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(5) <= \<const0>\;
  m_axi_arid(4) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(3) <= \<const1>\;
  m_axi_arlen(2) <= \<const1>\;
  m_axi_arlen(1) <= \<const1>\;
  m_axi_arlen(0) <= \<const1>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const1>\;
  m_axi_arsize(0) <= \<const1>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const1>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(5) <= \<const0>\;
  m_axi_awid(4) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const1>\;
  m_axi_awsize(0) <= \<const1>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(5) <= \<const0>\;
  m_axi_wid(4) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  s_axi_bid(5) <= \<const0>\;
  s_axi_bid(4) <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \^s_axi_rdata\(32);
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \^s_axi_rdata\(0);
  s_axi_rid(5) <= \<const0>\;
  s_axi_rid(4) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.blockone_audiomodule_0_0_audiomodule
     port map (
      aclk => aclk,
      aresetn => aresetn,
      audioSampleOutputLR(31 downto 0) => audioSampleOutputLR(31 downto 0),
      audioclock => audioclock,
      audiosampleclk => audiosampleclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(5 downto 0) => NLW_inst_m_axi_arid_UNCONNECTED(5 downto 0),
      m_axi_arlen(3 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => NLW_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(5 downto 0) => NLW_inst_m_axi_awid_UNCONNECTED(5 downto 0),
      m_axi_awlen(3 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => NLW_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(5 downto 0) => B"000000",
      m_axi_bready => NLW_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(5 downto 0) => B"000000",
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => NLW_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(5 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(5 downto 0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wvalid => NLW_inst_m_axi_wvalid_UNCONNECTED,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(3 downto 0) => B"0000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(3 downto 0) => B"0000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(5 downto 0) => NLW_inst_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 33) => NLW_inst_s_axi_rdata_UNCONNECTED(63 downto 33),
      s_axi_rdata(32) => \^s_axi_rdata\(32),
      s_axi_rdata(31 downto 1) => NLW_inst_s_axi_rdata_UNCONNECTED(31 downto 1),
      s_axi_rdata(0) => \^s_axi_rdata\(0),
      s_axi_rid(5 downto 0) => NLW_inst_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(5 downto 0) => B"000000",
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
