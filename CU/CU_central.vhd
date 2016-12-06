----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:32 06/05/2014 
-- Design Name: 
-- Module Name:    CU_central - Behavioral 
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


entity CU_central is
    Port ( m:in std_logic_vector(2 downto 0);
			  i:in std_logic;
			 
			  
			  a:in std_logic;
			  IND:in std_logic;
           t:in std_logic_vector(2 downto 0);
           d:in std_logic_vector(9 downto 0);
           q:out std_logic_vector(19 downto 0));
end CU_central;

architecture behave of CU_central is
	signal s:std_logic_vector(9 downto 0);

begin
	 s(0)<=(not d(9)) and (not d(8))and (not d(7)) and (not d(6)) and (not d(5)) and (not d(4)) and (not d(3)) and (not d(2)) and (not d(1)) and d(0);   
    s(1)<=not d(9) and not d(8)and (not d(7)) and (not d(6)) and (not d(5)) and( not d(4)) and (not d(3)) and (not d(2)) and( d(1)) and (not d(0));   
    s(2)<=not d(9) and not d(8)and not d(7) and not d(6) and not d(5) and not d(4) and not d(3) and d(2) and not d(1) and not d(0);    
    s(3)<=not d(9) and not d(8)and not d(7) and not d(6) and not d(5) and not d(4) and d(3) and not d(2) and not d(1) and not d(0);    
    s(4)<=not d(9) and not d(8)and not d(7) and not d(6) and not d(5) and d(4) and not d(3) and not d(2) and not d(1) and not d(0); 
    s(5)<=not d(9) and not d(8)and not d(7) and not d(6) and d(5) and not d(4) and not d(3) and not d(2) and not d(1) and not d(0);    
    s(6)<=not d(9) and not d(8)and not d(7) and d(6) and not d(5) and not d(4) and not d(3) and not d(2) and not d(1) and not d(0);    
    s(7)<=not d(9) and not d(8)and d(7) and not d(6) and not d(5) and not d(4) and not d(3) and not d(2) and not d(1) and not d(0);    
	 s(8)<= not d(9) and d(8)and not d(7) and not d(6) and not d(5) and not d(4) and not d(3) and not d(2) and not d(1) and not d(0); 
	 s(9)<= d(9) and not d(8)and not d(7) and not d(6) and not d(5) and not d(4) and not d(3) and not d(2) and not d(1) and not d(0); 
 
	 q(0)<=m(0) and t(0);
    q(1)<=t(0) and (m(0)or (m(1)and (s(5)or s(6)or s(7)or s(8)or s(9)))or (m(2)and (s(5)or s(7))));
    q(2)<=t(1) and(m(0)or (m(1)and (s(5)or s(6)or s(7)or s(8)or s(9)))or(m(2)and (s(5)or s(7))));
    q(3)<=m(0) and t(1);
    q(4)<=t(2)and(m(0)or (m(1)and (s(5)or s(6)or s(7)or s(8)or s(9))));
    q(5)<=m(0)and t(2);
    q(6)<=i and m(0) and t(2) and (s(5)or s(6)or s(7)or s(8)or s(9));
    q(7)<=(not i and m(0) and t(2) )or (m(1)and t(1) and (s(5)or s(6)or s(7)or s(8)or s(9))and not IND);
    q(8)<=t(0)and ((m(1)and(s(5)or s(6)or s(7)or s(8)or s(9)))or(m(2)and(s(5)or s(6)or s(7))));
	 q(9)<=m(2)and t(0) and s(6);
	 q(10)<=m(2)and t(1)and s(6);
    q(11)<=m(2)and t(2)and s(5);
    q(12)<=m(2)and t(2)and s(6);
    q(13)<=m(2)and t(2)and s(7);
    q(14)<=m(2)and t(2)and s(0);
    q(15)<=m(2)and t(2)and s(1);
    q(16)<=m(2)and t(2)and s(2);
    q(17)<=m(2)and t(2)and s(3);
    q(18)<=(m(2)and t(2)and s(8))or(a and m(2)and t(2)and s(9));
	 q(19)<=m(2)and t(2)and s(4);
end behave;

