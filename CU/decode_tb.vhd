--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:19:10 06/05/2014
-- Design Name:   
-- Module Name:   D:/My_project/CU/decode_tb.vhd
-- Project Name:  CU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decode
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY decode_tb IS
END decode_tb;
 
ARCHITECTURE behavior OF decode_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decode
    PORT(
         S : IN  std_logic;
         A : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decode PORT MAP (
          S => S,
          A => A,
          Y => Y
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
    
		wait for 100 ns;	
		S<='1';
		A<="0000";
		
		wait for 10 ns;		
		S<='1';
		A<="0001";
		
		wait for 10 ns;		
		S<='1';
		A<="0010";

		wait for 10 ns;		
		S<='1';
		A<="0011";
		 
		wait for 100 ns;	
		S<='1';
		A<="0100";
	
		wait for 100 ns;	
		S<='1';
		A<="0101";
	
		wait for 100 ns;	
		S<='1';
		A<="0110";
	
		wait for 100 ns;	
		S<='1';
		A<="0111";
		
		wait for 100 ns;	
		S<='1';
		A<="1000";
		
		wait for 100 ns;	
		S<='1';
		A<="1001";
		 
		wait for 100 ns;	
		S<='0';
		A<="1111";

      -- insert stimulus here 

      wait;
		
   end process;

END;
