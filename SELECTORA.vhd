----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2017 00:07:51
-- Design Name: 
-- Module Name: SELECTORA - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SELECTORA is
    Port ( SOMA : in STD_LOGIC_VECTOR (2 downto 0);
           SUB : in STD_LOGIC_VECTOR (2 downto 0);
           SEL : in STD_LOGIC;
           X : out STD_LOGIC_VECTOR (2 downto 0));
end SELECTORA;

architecture Behavioral of SELECTORA is

begin
process (SOMA,SUB,SEL)
begin
if SEL = '0' then X <= SOMA;
else X <= SUB;

end if;
end process;
end Behavioral;
