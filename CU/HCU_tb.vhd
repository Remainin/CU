--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:15:58 06/06/2014
-- Design Name:   
-- Module Name:   D:/My_project/CU/HCU_tb.vhd
-- Project Name:  CU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HCU
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
 
ENTITY HCU_tb IS
END HCU_tb;
 
ARCHITECTURE behavior OF HCU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HCU
    PORT(
         S : IN  std_logic;
         A : IN  std_logic_vector(3 downto 0);
         M : IN  std_logic_vector(2 downto 0);
         T : IN  std_logic_vector(2 downto 0);
         I : IN  std_logic;
         aa : IN  std_logic;
         IND : IN  std_logic;
         Q : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic_vector(2 downto 0) := (others => '0');
   signal T : std_logic_vector(2 downto 0) := (others => '0');
   signal I : std_logic := '0';
   signal aa : std_logic := '0';
   signal IND : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(19 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HCU PORT MAP (
          S => S,
          A => A,
          M => M,
          T => T,
          I => I,
          aa => aa,
          IND => IND,
          Q => Q
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="001";
           T <="001";
		wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="001";
           T <="010";
			  I<='0';
		wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="001";
           T <="100";
		wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="010";
           T <="001";	 
      wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="010";
           T <="010";
		 wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="010";
           T <="100";
			  IND<='0';
		
	  wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="100";
           T <="001";
     wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="100";
           T <="010"; 
	  wait for 100 ns;	
			  S<='1';
			  A <="1001";
           M <="100";
           T <="100";
				aa<='1';
      -- insert stimulus here 

      wait;
   end process;

END;
