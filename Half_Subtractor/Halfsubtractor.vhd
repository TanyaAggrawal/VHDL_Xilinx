--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:39:46 10/20/2020
-- Design Name:   
-- Module Name:   C:/Users/Tanya/Desktop/college_3rd_year/DSD/DSD_Lab/Xilinx_programs/Half_Subtractor/Halfsubtractor.vhd
-- Project Name:  Half_Subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Half_subtractor
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
 

ENTITY Halfsubtractor IS
END Halfsubtractor;
 
ARCHITECTURE behavior OF Halfsubtractor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Half_subtractor
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Dif : OUT  std_logic;
         Bor : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Dif : std_logic;
   signal Bor : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Half_subtractor PORT MAP (
          A => A,
          B => B,
          Dif => Dif,
          Bor => Bor
        );

  
  -- Stimulus process
   stim_proc: process
   begin	
	
      -- hold reset state for 100 ns.
		wait for 100 ns;	
		A <= '0' ; B <= '0';
		wait for 100 ns;	
		A <= '0' ; B <= '1';
		wait for 100 ns;	
		A <= '1' ; B <= '0';
		wait for 100 ns;	
		A <= '1' ; B <= '1';
     
      -- insert stimulus here
		

      wait;
   end process;

END;
