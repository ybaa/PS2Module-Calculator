<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RS232_RxD" />
        <signal name="RS232_TxD" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="BTN_SOUTH" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
        <signal name="aaa(63:0)" />
        <signal name="SF_CE" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="LCD_E" />
        <signal name="aaa(63:56)" />
        <signal name="aaa(39:32)" />
        <signal name="aaa(31:0)" />
        <signal name="aaa(51:44)" />
        <signal name="XLXN_40(15:0)" />
        <port polarity="Input" name="RS232_RxD" />
        <port polarity="Output" name="RS232_TxD" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="BTN_SOUTH" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="XLXN_15" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_E" />
        <blockdef name="RS232">
            <timestamp>2017-4-3T7:6:42</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="320" y1="-288" y2="-288" x1="384" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="PS2_RX">
            <timestamp>2017-4-3T7:40:37</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="Calculator">
            <timestamp>2017-5-24T11:27:20</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="RS232" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="BTN_SOUTH" name="Reset" />
            <blockpin signalname="RS232_RxD" name="RS232_RxD" />
            <blockpin signalname="XLXN_4" name="TxStart" />
            <blockpin signalname="XLXN_3(7:0)" name="TxDI(7:0)" />
            <blockpin name="TxBusy" />
            <blockpin name="RxRdy" />
            <blockpin signalname="RS232_TxD" name="RS232_TxD" />
            <blockpin name="RxDO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_RX" name="XLXI_2">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="XLXN_4" name="DO_Rdy" />
            <blockpin signalname="XLXN_3(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
        </block>
        <block symbolname="Calculator" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="DI_Rdy" />
            <blockpin signalname="BTN_SOUTH" name="RST" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_3(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_15" name="y" />
            <blockpin name="DO_Rdy" />
            <blockpin signalname="aaa(63:56)" name="ARG1(7:0)" />
            <blockpin signalname="aaa(51:44)" name="ARG2(7:0)" />
            <blockpin signalname="aaa(39:32)" name="DO(7:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="BTN_SOUTH" name="Reset" />
            <blockpin signalname="aaa(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_40(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="constant" name="XLXI_8">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="aaa(31:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_9">
            <attr value="24FF" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_40(15:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1728" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <branch name="RS232_RxD">
            <wire x2="2400" y1="896" y2="896" x1="2112" />
        </branch>
        <branch name="RS232_TxD">
            <wire x2="2400" y1="960" y2="960" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2400" y="960" name="RS232_TxD" orien="R0" />
        <iomarker fontsize="28" x="2400" y="896" name="RS232_RxD" orien="R0" />
        <branch name="XLXN_3(7:0)">
            <wire x2="1568" y1="944" y2="944" x1="1408" />
            <wire x2="1568" y1="944" y2="960" x1="1568" />
            <wire x2="1728" y1="960" y2="960" x1="1568" />
            <wire x2="1568" y1="912" y2="912" x1="1536" />
            <wire x2="1568" y1="912" y2="944" x1="1568" />
            <wire x2="1536" y1="912" y2="1824" x1="1536" />
            <wire x2="1552" y1="1824" y2="1824" x1="1536" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1568" y1="1008" y2="1008" x1="1408" />
            <wire x2="1568" y1="1008" y2="1024" x1="1568" />
            <wire x2="1728" y1="1024" y2="1024" x1="1568" />
            <wire x2="1568" y1="1024" y2="1536" x1="1568" />
            <wire x2="1472" y1="1536" y2="1632" x1="1472" />
            <wire x2="1552" y1="1632" y2="1632" x1="1472" />
            <wire x2="1568" y1="1536" y2="1536" x1="1472" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="1024" y1="944" y2="944" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="944" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="768" y1="1024" y2="1024" x1="672" />
            <wire x2="1024" y1="1008" y2="1008" x1="768" />
            <wire x2="768" y1="1008" y2="1024" x1="768" />
        </branch>
        <iomarker fontsize="28" x="672" y="1024" name="PS2_Data" orien="R180" />
        <branch name="BTN_SOUTH">
            <wire x2="1216" y1="1280" y2="1280" x1="672" />
            <wire x2="1488" y1="1280" y2="1280" x1="1216" />
            <wire x2="1216" y1="1280" y2="1696" x1="1216" />
            <wire x2="1552" y1="1696" y2="1696" x1="1216" />
            <wire x2="1216" y1="1696" y2="2048" x1="1216" />
            <wire x2="2784" y1="2048" y2="2048" x1="1216" />
            <wire x2="1488" y1="1088" y2="1280" x1="1488" />
            <wire x2="1728" y1="1088" y2="1088" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="672" y="1280" name="BTN_SOUTH" orien="R180" />
        <iomarker fontsize="28" x="672" y="1392" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="912" y1="1392" y2="1392" x1="672" />
            <wire x2="1472" y1="1392" y2="1392" x1="912" />
            <wire x2="1600" y1="1392" y2="1392" x1="1472" />
            <wire x2="912" y1="1392" y2="1760" x1="912" />
            <wire x2="1552" y1="1760" y2="1760" x1="912" />
            <wire x2="912" y1="1760" y2="2112" x1="912" />
            <wire x2="2784" y1="2112" y2="2112" x1="912" />
            <wire x2="1024" y1="1200" y2="1200" x1="912" />
            <wire x2="912" y1="1200" y2="1392" x1="912" />
            <wire x2="1728" y1="1152" y2="1152" x1="1472" />
            <wire x2="1472" y1="1152" y2="1392" x1="1472" />
            <wire x2="1728" y1="1216" y2="1216" x1="1600" />
            <wire x2="1600" y1="1216" y2="1392" x1="1600" />
        </branch>
        <instance x="1552" y="1856" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="1968" y1="1632" y2="1632" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1632" name="XLXN_15" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="192" y1="1984" y2="1984" x1="176" />
        </branch>
        <instance x="2784" y="2144" name="XLXI_4" orien="R0">
        </instance>
        <branch name="aaa(63:0)">
            <wire x2="2704" y1="1248" y2="1328" x1="2704" />
            <wire x2="2704" y1="1328" y2="1472" x1="2704" />
            <wire x2="2704" y1="1472" y2="1600" x1="2704" />
            <wire x2="2704" y1="1600" y2="1728" x1="2704" />
            <wire x2="2704" y1="1728" y2="1856" x1="2704" />
            <wire x2="2784" y1="1856" y2="1856" x1="2704" />
        </branch>
        <branch name="SF_CE">
            <wire x2="3232" y1="2112" y2="2112" x1="3200" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="3232" y1="2048" y2="2048" x1="3200" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3232" y1="1984" y2="1984" x1="3200" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3232" y1="1920" y2="1920" x1="3200" />
        </branch>
        <branch name="LCD_E">
            <wire x2="3232" y1="1856" y2="1856" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3232" y="2048" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3232" y="2112" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="3232" y="1984" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3232" y="1920" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="3232" y="1856" name="LCD_E" orien="R0" />
        <bustap x2="2608" y1="1328" y2="1328" x1="2704" />
        <branch name="aaa(63:56)">
            <wire x2="2192" y1="1888" y2="1888" x1="1936" />
            <wire x2="2192" y1="1328" y2="1888" x1="2192" />
            <wire x2="2608" y1="1328" y2="1328" x1="2192" />
        </branch>
        <bustap x2="2608" y1="1472" y2="1472" x1="2704" />
        <bustap x2="2608" y1="1600" y2="1600" x1="2704" />
        <branch name="aaa(39:32)">
            <wire x2="2352" y1="1824" y2="1824" x1="1936" />
            <wire x2="2352" y1="1600" y2="1824" x1="2352" />
            <wire x2="2608" y1="1600" y2="1600" x1="2352" />
        </branch>
        <bustap x2="2608" y1="1728" y2="1728" x1="2704" />
        <branch name="aaa(31:0)">
            <wire x2="2608" y1="1728" y2="1728" x1="2528" />
        </branch>
        <branch name="aaa(51:44)">
            <wire x2="2256" y1="1952" y2="1952" x1="1936" />
            <wire x2="2256" y1="1472" y2="1952" x1="2256" />
            <wire x2="2576" y1="1472" y2="1472" x1="2256" />
            <wire x2="2608" y1="1472" y2="1472" x1="2576" />
        </branch>
        <instance x="2384" y="1696" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2384" y="1888" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_40(15:0)">
            <wire x2="2784" y1="1920" y2="1920" x1="2528" />
        </branch>
    </sheet>
</drawing>