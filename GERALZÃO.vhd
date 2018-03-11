----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2017 00:44:55
-- Design Name: 
-- Module Name: GERAL - Behavioral
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

entity GERAL is
    Port ( VALOR1 : in STD_LOGIC_VECTOR (2 downto 0);
           VALOR2 : in STD_LOGIC_VECTOR (2 downto 0);
           SEL : in STD_LOGIC;
           RESULTADO : inout STD_LOGIC_VECTOR (2 downto 0);
           OVER : out STD_LOGIC);
end GERAL;

architecture Behavioral of GERAL is

          component Somadorde3 
    Port ( Num1 : in STD_LOGIC_VECTOR (2 downto 0);
           Num2 : in STD_LOGIC_VECTOR (2 downto 0);
           Cin  : in STD_LOGIC;
           S    : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component SELECTORA
    Port ( SOMA : in STD_LOGIC_VECTOR (2 downto 0);
           SUB : in STD_LOGIC_VECTOR (2 downto 0);
           SEL : in STD_LOGIC;
           X : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component OVERFLOW 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end component;

component SUBTRATORZINHO
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           X : out STD_LOGIC_VECTOR (2 downto 0);
           Cin : in STD_LOGIC);
end component;

SIGNAL Cin: STD_LOGIC:= '0';
SIGNAL SUM, SUB: STD_LOGIC_VECTOR (2 downto 0);
begin
OVERFLORES: OVERFLOW port map (A => VALOR1(2), B => VALOR2(2), C => RESULTADO(2), X=> OVER);
SOMA: Somadorde3 port map (Num1 => VALOR1, Num2 =>VALOR2, Cin => Cin, S => SUM);
SUBTRAÇÃO: SUBTRATORZINHO port map (A => VALOR1, B => VALOR2, Cin => Cin, X => SUB);
SELETORA: SELECTORA port map (SOMA => SUM , SUB => SUB, SEL => SEL, X => RESULTADO);

end Behavioral;
