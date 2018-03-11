----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2017 00:19:15
-- Design Name: 
-- Module Name: COMPLEMENTO2 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity COMPLEMENTO2 is
    Port ( B : in STD_LOGIC_VECTOR (2 downto 0);
           X : out STD_LOGIC_VECTOR (2 downto 0));
end COMPLEMENTO2;

architecture Behavioral of COMPLEMENTO2 is
component Somadorde3
    Port ( Num1 : in STD_LOGIC_VECTOR (2 downto 0);
           Num2 : in STD_LOGIC_VECTOR (2 downto 0);
           Cin  : in STD_LOGIC;
           S    : out STD_LOGIC_VECTOR (2 downto 0));
end component;
signal N2: STD_LOGIC_VECTOR (2 downto 0):= "001";
Signal Cin: STD_LOGIC := '0';
begin
L1: Somadorde3 port map (Num1 => B, Num2 => N2, Cin => Cin, S => X);

end Behavioral;
