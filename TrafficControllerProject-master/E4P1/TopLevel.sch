<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_27" />
        <signal name="XLXN_32" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="O0" />
        <signal name="O1" />
        <signal name="O2" />
        <signal name="O3" />
        <signal name="XLXN_82" />
        <signal name="XLXN_2" />
        <signal name="XLXN_24" />
        <signal name="en" />
        <signal name="cw" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="Clock" />
        <signal name="XLXN_43" />
        <signal name="XLXN_38" />
        <signal name="XLXN_1" />
        <signal name="XLXN_26" />
        <signal name="XLXN_124" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <port polarity="Output" name="O0" />
        <port polarity="Output" name="O1" />
        <port polarity="Output" name="O2" />
        <port polarity="Output" name="O3" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="cw" />
        <port polarity="Input" name="XLXN_44" />
        <port polarity="Output" name="XLXN_45" />
        <port polarity="Input" name="Clock" />
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <block symbolname="obuf" name="XLXI_14">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="O0" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_11">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="O1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_12">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="O2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_13">
            <blockpin signalname="XLXN_6" name="I" />
            <blockpin signalname="O3" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_16">
            <blockpin signalname="XLXN_124" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_28">
            <blockpin signalname="XLXN_124" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_29">
            <blockpin signalname="XLXN_124" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_30">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_124" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_8">
            <blockpin signalname="XLXN_44" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_15">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_7">
            <blockpin signalname="Clock" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_9">
            <blockpin signalname="en" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_10">
            <blockpin signalname="cw" name="I" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_1" name="G" />
        </block>
        <block symbolname="fjkc" name="XLXI_2">
            <blockpin signalname="XLXN_26" name="C" />
            <blockpin signalname="XLXN_1" name="CLR" />
            <blockpin signalname="XLXN_43" name="J" />
            <blockpin signalname="XLXN_43" name="K" />
            <blockpin signalname="XLXN_124" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_50">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_49">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_1">
            <blockpin signalname="XLXN_26" name="C" />
            <blockpin signalname="XLXN_24" name="CLR" />
            <blockpin signalname="XLXN_37" name="J" />
            <blockpin signalname="XLXN_37" name="K" />
            <blockpin signalname="XLXN_39" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_24" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="3072" y="624" name="XLXI_14" orien="R0" />
        <instance x="3072" y="768" name="XLXI_11" orien="R0" />
        <instance x="3072" y="912" name="XLXI_12" orien="R0" />
        <instance x="3072" y="1040" name="XLXI_13" orien="R0" />
        <instance x="2736" y="688" name="XLXI_16" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="3072" y1="592" y2="592" x1="2992" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="3072" y1="736" y2="736" x1="2992" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="3072" y1="880" y2="880" x1="2992" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="3072" y1="1008" y2="1008" x1="2992" />
        </branch>
        <branch name="O0">
            <wire x2="3328" y1="592" y2="592" x1="3296" />
        </branch>
        <branch name="O1">
            <wire x2="3328" y1="736" y2="736" x1="3296" />
        </branch>
        <branch name="O2">
            <wire x2="3328" y1="880" y2="880" x1="3296" />
        </branch>
        <branch name="O3">
            <wire x2="3328" y1="1008" y2="1008" x1="3296" />
        </branch>
        <instance x="2736" y="1104" name="XLXI_28" orien="R0" />
        <instance x="2736" y="832" name="XLXI_29" orien="R0" />
        <instance x="2736" y="784" name="XLXI_30" orien="M180" />
        <iomarker fontsize="28" x="3328" y="592" name="O0" orien="R0" />
        <iomarker fontsize="28" x="3328" y="736" name="O1" orien="R0" />
        <iomarker fontsize="28" x="3328" y="880" name="O2" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1008" name="O3" orien="R0" />
        <instance x="800" y="2480" name="XLXI_8" orien="R0" />
        <instance x="2048" y="2480" name="XLXI_15" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="1216" y="1460">A</text>
        <instance x="384" y="1888" name="XLXI_7" orien="R0" />
        <instance x="416" y="1024" name="XLXI_9" orien="R0" />
        <instance x="416" y="912" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="400" y="880" name="cw" orien="R180" />
        <iomarker fontsize="28" x="400" y="992" name="en" orien="R180" />
        <iomarker fontsize="28" x="768" y="2448" name="XLXN_44" orien="R180" />
        <iomarker fontsize="28" x="2304" y="2448" name="XLXN_45" orien="R0" />
        <iomarker fontsize="28" x="352" y="1856" name="Clock" orien="R180" />
        <instance x="2144" y="2112" name="XLXI_6" orien="R0" />
        <instance x="2208" y="1984" name="XLXI_2" orien="R0" />
        <instance x="1808" y="1760" name="XLXI_50" orien="R0" />
        <instance x="1504" y="1536" name="XLXI_49" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="2468" y="1636">B</text>
        <instance x="928" y="1664" name="XLXI_1" orien="R0" />
        <instance x="864" y="2112" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="2048" y1="2448" y2="2448" x1="1024" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="928" y1="1632" y2="1984" x1="928" />
        </branch>
        <branch name="en">
            <wire x2="416" y1="992" y2="992" x1="400" />
        </branch>
        <branch name="cw">
            <wire x2="416" y1="880" y2="880" x1="400" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1376" y1="1408" y2="1408" x1="1312" />
            <wire x2="1504" y1="1408" y2="1408" x1="1376" />
            <wire x2="2736" y1="560" y2="560" x1="1376" />
            <wire x2="1376" y1="560" y2="704" x1="1376" />
            <wire x2="2736" y1="704" y2="704" x1="1376" />
            <wire x2="1376" y1="704" y2="848" x1="1376" />
            <wire x2="2736" y1="848" y2="848" x1="1376" />
            <wire x2="1376" y1="848" y2="976" x1="1376" />
            <wire x2="1376" y1="976" y2="1408" x1="1376" />
            <wire x2="2720" y1="976" y2="976" x1="1376" />
            <wire x2="2736" y1="976" y2="976" x1="2720" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1488" y1="880" y2="880" x1="640" />
            <wire x2="1488" y1="880" y2="1472" x1="1488" />
            <wire x2="1504" y1="1472" y2="1472" x1="1488" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="800" y1="2448" y2="2448" x1="768" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="2304" y1="2448" y2="2448" x1="2272" />
        </branch>
        <branch name="Clock">
            <wire x2="384" y1="1856" y2="1856" x1="352" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="656" y1="992" y2="992" x1="640" />
            <wire x2="656" y1="992" y2="1696" x1="656" />
            <wire x2="1808" y1="1696" y2="1696" x1="656" />
            <wire x2="784" y1="992" y2="992" x1="656" />
            <wire x2="784" y1="992" y2="1344" x1="784" />
            <wire x2="928" y1="1344" y2="1344" x1="784" />
            <wire x2="784" y1="1344" y2="1408" x1="784" />
            <wire x2="928" y1="1408" y2="1408" x1="784" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="2192" y1="1664" y2="1664" x1="2064" />
            <wire x2="2208" y1="1664" y2="1664" x1="2192" />
            <wire x2="2192" y1="1664" y2="1728" x1="2192" />
            <wire x2="2208" y1="1728" y2="1728" x1="2192" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1776" y1="1440" y2="1440" x1="1760" />
            <wire x2="1776" y1="1440" y2="1632" x1="1776" />
            <wire x2="1808" y1="1632" y2="1632" x1="1776" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="2208" y1="1952" y2="1984" x1="2208" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="608" y1="1856" y2="1856" x1="592" />
            <wire x2="768" y1="1856" y2="1856" x1="608" />
            <wire x2="2208" y1="1856" y2="1856" x1="768" />
            <wire x2="928" y1="1536" y2="1536" x1="768" />
            <wire x2="768" y1="1536" y2="1856" x1="768" />
        </branch>
        <branch name="XLXN_124">
            <wire x2="2656" y1="1728" y2="1728" x1="2592" />
            <wire x2="2736" y1="624" y2="624" x1="2656" />
            <wire x2="2656" y1="624" y2="768" x1="2656" />
            <wire x2="2736" y1="768" y2="768" x1="2656" />
            <wire x2="2656" y1="768" y2="912" x1="2656" />
            <wire x2="2736" y1="912" y2="912" x1="2656" />
            <wire x2="2656" y1="912" y2="1040" x1="2656" />
            <wire x2="2656" y1="1040" y2="1728" x1="2656" />
            <wire x2="2736" y1="1040" y2="1040" x1="2656" />
        </branch>
    </sheet>
</drawing>