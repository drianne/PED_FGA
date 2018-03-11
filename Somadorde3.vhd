----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2017 23:33:15
-- Design Name: 
-- Module Name: Somadorde3 - Behavioral
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

entity Somadorde3 is
    Port ( Num1 : in STD_LOGIC_VECTOR (2 downto 0);
           Num2 : in STD_LOGIC_VECTOR (2 downto 0);
           Cin  : in STD_LOGIC;
           S    : out STD_LOGIC_VECTOR (2 downto 0));
end Somadorde3;

architecture Behavioral of Somadorde3 is

component SOMADORCOMPLETO 
    Port ( Num1 : in STD_LOGIC;
           Num2 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC);
end component;

signal S1: STD_LOGIC;
signal S2: STD_LOGIC;
signal S3: STD_LOGIC;

begin
somador3: SOMADORCOMPLETO port map (Num1 => Num1(0), Num2 => Num2(0), Cin => Cin, Cout => S1, S => S (0)) ;
somador2: SOMADORCOMPLETO port map (Num1 => Num1(1), Num2 => Num2(1), Cin => S1, Cout => S2, S => S(1));
somador1: SOMADORCOMPLETO port map (Num1 => Num1(2), Num2 => Num2(2), Cin => S2, Cout => S3, S => S(2));

end Behavioral;
