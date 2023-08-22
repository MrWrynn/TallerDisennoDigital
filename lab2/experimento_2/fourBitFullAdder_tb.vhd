-- Sumador completo de 1 bit
library IEEE;
use IEEE.std_logic_1164.all;

entity fourBitFullAdder_tb is
end entity;

architecture arch of fourBitFullAdder_tb is

    component fourBitFullAdder is
        port (
        sum, carryOut : out std_logic;
        a, b : in std_logic_vector (3 downto 0);
		  carryIn : in std_logic
    );
    end component;

    signal testA, testB, testSum : std_logic_vector (3 downto 0);
    signal testCarryIn, testCarryOut : std_logic;

begin

    unit_under_test: fourBitFullAdder port map (
        sum => testSum,
        carryOut => testCarryOut,
        carryIn => testCarryIn,
        a => testA,
        b => testB
    );

    generate_signals : process
    begin
        testA <= "0000"; testB <= "0000"; testCarryIn <= "0"; wait for 10 ns;
        testA <= "0001"; testB <= "0000"; testCarryIn <= "0"; wait for 10 ns;
		  testA <= "0000"; testB <= "0010"; testCarryIn <= "0"; wait for 10 ns;
		  testA <= "0010"; testB <= "0011"; testCarryIn <= "0"; wait for 10 ns;
		  testA <= "0101"; testB <= "0110"; testCarryIn <= "0"; wait for 10 ns;
		  testA <= "0000"; testB <= "0010"; testCarryIn <= "1"; wait for 10 ns;
		  testA <= "0010"; testB <= "1100"; testCarryIn <= "1"; wait for 10 ns;
		  testA <= "1100"; testB <= "1100"; testCarryIn <= "0"; wait for 10 ns;
		  testA <= "0001"; testB <= "0001"; testCarryIn <= "0"; wait for 10 ns;
        wait;
    end process;

end architecture;