----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:15:53 06/05/2014 
-- Design Name: 
-- Module Name:    decode - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
entity decode is
    Port ( S : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (9 downto 0));
end decode;

architecture Behavioral of decode is

begin
 process(S)
	begin
     if S='1' then
        Y(0)<=not A(3) and (not A(2)) and (not A(1)) and (not A(0));
        Y(1)<=not A(3) and (not A(2)) and (not A(1)) and A(0);
        Y(2)<=not A(3) and (not A(2)) and A(1) and (not A(0));
        Y(3)<=not A(3) and (not A(2)) and A(1) and A(0);
        Y(4)<=not A(3) and A(2) and (not A(1)) and (not A(0));
        Y(5)<=not A(3) and A(2) and (not A(1)) and A(0);
        Y(6)<=not A(3) and A(2) and A(1) and (not A(0));
        Y(7)<=not A(3) and A(2) and A(1) and A(0);
		  Y(8)<=A(3) and not A(2) and (not A(1)) and (not A(0));
		  Y(9)<=A(3) and (not A(2)) and (not A(1)) and  A(0);
     else Y<="0000000000";
     end if;
     end process;
end Behavioral;

