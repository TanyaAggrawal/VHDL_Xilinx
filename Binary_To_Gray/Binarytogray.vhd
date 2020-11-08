--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:11 10/20/2020
-- Design Name:   
-- Module Name:   C:/Users/Tanya/Desktop/college_3rd_year/DSD/DSD_Lab/Xilinx_programs/Binary_To_Gray/Binarytogray.vhd
-- Project Name:  Binary_To_Gray
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Binary_to_gray
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
  
ENTITY Binarytogray IS
END Binarytogray;
 
ARCHITECTURE behavior OF Binarytogray IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Binary_to_gray
    PORT(
         Bin : IN  std_logic_vector(3 downto 0);
         G : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal G : std_logic_vector(3 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Binary_to_gray PORT MAP (
          Bin => Bin,
          G => G
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
        wait for 100 ns;	
		  bin <= "0000";  wait for 10 ns;
        bin <= "0001";  wait for 10 ns;
        bin <= "0010";  wait for 10 ns;
        bin <= "0011";  wait for 10 ns;
        bin <= "0100";  wait for 10 ns;
        bin <= "0101";  wait for 10 ns;
        bin <= "0110";  wait for 10 ns;
        bin <= "0111";  wait for 10 ns;
        bin <= "1000";  wait for 10 ns;
        bin <= "1001";  wait for 10 ns;
        bin <= "1010";  wait for 10 ns;
        bin <= "1011";  wait for 10 ns;
        bin <= "1100";  wait for 10 ns;
        bin <= "1101";  wait for 10 ns;
        bin <= "1110";  wait for 10 ns;
        bin <= "1111";  wait for 10 ns;

    
      -- insert stimulus here 

      wait;
   end process;

END;
