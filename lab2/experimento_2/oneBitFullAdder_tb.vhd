-- Sumador completo de 1 bit
library IEEE;
use IEEE.std_logic_1164.all;

entity oneBitFullAdder_tb is
end entity;

architecture arch of oneBitFullAdder_tb is

    component oneBitFullAdder is
        port (
            sum, carryOut : out std_logic;
            a, b, carryIn : in std_logic
        );
    end component;

    signal testInVect : std_logic_vector (2 downto 0);
    signal testSumOut, testCarryOut : std_logic;

begin

    unit_under_test: oneBitFullAdder port map (
        sum => testSumOut,
        carryOut => testCarryOut,
        carryIn => testInVect(2),
        a => testInVect(1),
        b => testInVect(0)
    );

    generate_signals : process
    begin
        testInVect <= "000"; wait for 10 ns;
        testInVect <= "001"; wait for 10 ns;
        testInVect <= "010"; wait for 10 ns;
        testInVect <= "011"; wait for 10 ns;
        testInVect <= "100"; wait for 10 ns;
        testInVect <= "101"; wait for 10 ns;
        testInVect <= "110"; wait for 10 ns;
        testInVect <= "111"; wait for 10 ns;
        wait;
    end process;

end architecture;