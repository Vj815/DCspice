library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity mod25 is
Port ( rst : in STD_LOGIC;
pr : in STD_LOGIC;
clk : in STD_LOGIC;
dir : in STD_LOGIC;
Q : out STD_LOGIC_VECTOR (4 downto 0));
end mod25;
architecture mod25_arch of mod25 is
signal Qtemp : STD_LOGIC_VECTOR (4 downto 0) := "00000";
begin
process(rst,pr,clk,dir)
begin
if rst ='1' then
Qtemp <= (OTHERS =>'0');
elsif pr='1' then

Qtemp <= (OTHERS =>'1');
elsif falling_edge(clk) then
if dir = '1' then
if Qtemp < 24 then
Qtemp <= Qtemp + 1;
else
else
end if;
Qtemp <= "00000";
if Qtemp > 7 then
Qtemp <= Qtemp - 1;
else
end if;
end if;
end if;
Qtemp <= "11111";
end process;
Q<=Qtemp;
end mod25_arch;
