----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2017 23:15:08
-- Design Name: 
-- Module Name: SOMADORCOMPLETO - Behavioral
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

entity SOMADORCOMPLETO is
    Port ( Num1 : in STD_LOGIC;
           Num2 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC);
end SOMADORCOMPLETO;

architecture Behavioral of SOMADORCOMPLETO is

begin
S <= Num1 xor Num2 xor Cin; --pq tem a expressão pronta
Cout <= (Num1 and Num2) or (Num2 and Cin) or (Num1 and Cin);

end Behavioral;
