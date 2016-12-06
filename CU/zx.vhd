--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:48:24 06/12/2014
-- Design Name:   
-- Module Name:   D:/My_project/CU/zx.vhd
-- Project Name:  CU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU_central
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
 
ENTITY zx IS
END zx;
 
ARCHITECTURE behavior OF zx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU_central
    PORT(
         m : IN  std_logic_vector(2 downto 0);
         i : IN  std_logic;
         a : IN  std_logic;
         IND : IN  std_logic;
         t : IN  std_logic_vector(2 downto 0);
         d : IN  std_logic_vector(9 downto 0);
         q : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal m : std_logic_vector(2 downto 0) := (others => '0');
   signal i : std_logic := '0';
   signal a : std_logic := '0';
   signal IND : std_logic := '0';
   signal t : std_logic_vector(2 downto 0) := (others => '0');
   signal d : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(19 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU_central PORT MAP (
          m => m,
          i => i,
          a => a,
          IND => IND,
          t => t,
          d => d,
          q => q
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     

      -- insert stimulus here 

      wait;
   end process;

END;
