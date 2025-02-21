library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity permutation_choice2 is
    port (
        subk     : out  std_logic_vector(10 downto 1);
        pc2_L   : in std_logic_vector(5 downto 1);
		  pc2_R   : in std_logic_vector(5 downto 1)
    );
end entity permutation_choice2;

architecture code of permutation_choice2 is
signal  pc2: std_logic_vector(10 downto 1) ; 
begin
 pc2 <= pc2_R & pc2_L ;
 
    subk(10) <= pc2(3);
	 subk(9) <= pc2(5);
	 subk(8) <= pc2(2);
	 subk(7) <= pc2(9);
	 subk(6) <= pc2(1);
	 subk(5) <= pc2(8);
	 subk(4) <= pc2(10);
	 subk(3) <= pc2(4);
	 subk(2) <= pc2(7);
	 subk(1) <= pc2(6);

end code;
