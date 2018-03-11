----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2017 01:03:06
-- Design Name: 
-- Module Name: SUBTRATORZINHO - Behavioral
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

entity SUBTRATORZINHO is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           X : out STD_LOGIC_VECTOR (2 downto 0);
           Cin : in STD_LOGIC);
end SUBTRATORZINHO;

architecture Behavioral of SUBTRATORZINHO is 
component Somadorde3
    Port ( Num1 : in STD_LOGIC_VECTOR (2 downto 0);
           Num2 : in STD_LOGIC_VECTOR (2 downto 0);
           Cin  : in STD_LOGIC;
           S    : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component COMPLEMENTO2
    Port ( B : in STD_LOGIC_VECTOR (2 downto 0);
           X : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal comp1: STD_LOGIC_VECTOR (2 downto 0);
signal Ci: STD_LOGIC:= '0';
begin
L1: COMPLEMENTO2 port map (B => B, X => comp1);
L2: Somadorde3 port map (Num1 => A, Num2 => comp1, Cin => Ci, S => X);

end Behavioral;
