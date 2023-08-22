-- Interface para FPGA
library IEEE;
use IEEE.std_logic_1164.all;

entity FPGAInterface is
    port (
        sum : out std_logic_vector (6 downto 0);
		  carryOut : out std_logic_vector (6 downto 0);
        a, b : in std_logic_vector (3 downto 0);
		  carryIn : in std_logic
    );
end entity;

architecture arch of FPGAInterface is
	signal sumBinary : std_logic_vector (3 downto 0);
	signal carryOutBinary : std_logic;
	
   component fourBitFullAdder is
         port (
				sum : out std_logic_vector (3 downto 0);
				carryOut : out std_logic;
				a, b : in std_logic_vector (3 downto 0);
				carryIn : in std_logic
			);
    end component fourBitFullAdder;
begin

    adder : fourBitFullAdder port map (
        sum => sumBinary,
        carryOut => carryOutBinary,
        carryIn => carryIn,
        a => a,
        b => b
    );
	 
process (sumBinary, carryOutBinary) is
begin
	 case sumBinary is
		when "0000" =>
			sum <= "0000001";
		when "0001" =>
			sum <= "1001111";
		when "0010" =>
			sum <= "0010010";
		when "0011" =>
			sum <= "0000110";
		when "0100" =>
			sum <= "1001100";
		when "0101" =>
			sum <= "0100100";
		when "0110" =>
			sum <= "0100000";
		when "0111" =>
			sum <= "0001111";
		when "1000" =>
			sum <= "0000000";
		when "1001" =>
			sum <= "0000100";
		when "1010" =>
			sum <= "0001000";
		when "1011" =>
			sum <= "1100000";
		when "1100" =>
			sum <= "0110001";
		when "1101" =>
			sum <= "1000010";
		when "1110" =>
			sum <= "0110000";
		when "1111" =>
			sum <= "0111000";
	end case;
	
	case carryOutBinary is
		when '1' =>
			carryOut <= "1001111";
		when others =>
			carryOut <= "0000001";
	end case;
end process;
end architecture;