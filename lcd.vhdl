library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity main_src is
Port ( RS : out STD_LOGIC;
EN : out STD_LOGIC;
Dout : out STD_LOGIC_VECTOR(7 downto 0);
clk : in STD_LOGIC;
rst : in STD_LOGIC);
end main_src;
architecture Behavioral of main_src is
type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19);
signal state: state_type;
begin
process(clk, rst, state) begin
if rst = '1' then
state <= s0;
elsif (rising_edge(clk)) then
case state is
when s0=>
RS<='0';
EN<='1';
Dout<=X"38";
state<=s1;
when s1=>
EN<='0';
state<=s2;
when s2=> RS<='0';
EN<='1';
Dout<=X"0E";
state<=s3;
when s3=>
EN<='0';
state<=s4;
when s4=>
RS<='0';
EN<='1';
Dout<=X"01";
state<=s5;
when s5=>
EN<='0';
state<=s6;
when s6=>
RS<='0';
EN<='1';
Prepared By : Prof. N. P. Mawale
Department of Electronics & Telecommunication Engineering 43
Dout<=X"06";
state<=s7;
when s7=>EN<='0';
state<=s8;
when s8=>RS<='0';
EN<='1';
Dout<=X"84";
state<=s9;
when s9=>EN<='0';
state<=s10;
when s10=> RS<='1';
EN<='1';
Dout<=X"4B";
state<=s11;
when s11=> EN<='0';
state<=s12;
when s12=> RS<='1';
EN<='1';
Dout<=X"55";
state<=s13;
when s13=>
EN<='0';
state<=s14;
when s14=> RS<='1';
EN<='1';
Dout<=X"4E";
state<=s15;
when s15=> EN<='0';
state<=s16;
when s16=> RS<='1';
EN<='1';
Dout<=X"41";
state<=s17;
when s17=> EN<='0';
state<=s18;
when s18=>
RS<='1';
EN<='1';
Dout<=X"4C";
state<=s19;
when s19=>
EN<='0';
when others =>
null;
end case;
end if;
end process;
end Behavioral;
