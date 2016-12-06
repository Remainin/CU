----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:50 06/05/2014 
-- Design Name: 
-- Module Name:    HCU - Behavioral 
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



entity HCU is
    Port (
			  S : in  STD_LOGIC;
			  A : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC_VECTOR (2 downto 0);
           T : in  STD_LOGIC_VECTOR (2 downto 0);
			  I:in std_logic;
			  aa:in std_logic;
			  IND:in std_logic;
           Q : out  STD_LOGIC_VECTOR (19 downto 0));
end HCU;

architecture mygod of HCU is
		signal e:std_logic_vector(9 downto 0);
component decode
          port( S:in std_logic;
              A:in std_logic_vector(3 downto 0);
              Y:out std_logic_vector(9 downto 0));
end component;
component CU_central
     port( m:in std_logic_vector(2 downto 0);
			  i:in std_logic;
			  a:in std_logic;
			  IND:in std_logic;
           t:in std_logic_vector(2 downto 0);
           d:in std_logic_vector(9 downto 0);
           q:out std_logic_vector(19 downto 0));
end component;
begin
 G1:decode port map
      (S=>S,A=>A,Y=>e);
   G2:CU_central port map
      (d=>e,t=>T,m=>M,q=>Q,IND=>IND,i=>i,a=>aa);

end mygod;

