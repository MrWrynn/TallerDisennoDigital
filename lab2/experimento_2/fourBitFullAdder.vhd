-- Sumador completo de 4 bit
library IEEE;
use IEEE.std_logic_1164.all;

entity fourBitFullAdder is
    port (
        sum, carryOut : out std_logic;
        a, b : in std_logic_vector (3 downto 0);
		  carryIn : in std_logic
    );
end entity;

architecture arch of fourBitFullAdder is
begin 
process("all")

	signal carry1, carry2, carry3 : std_logic;
	
   component oneBitFullAdder is
        port (
            sum, carryOut : out std_logic;
            a, b, carryIn : in std_logic
        );
    end component oneBitFullAdder;

    adderBit0: oneBitFullAdder port map (
        sum => carryOut(0),
        carryOut => carry1,
        carryIn => carryIn,
        a => a(0),
        b => b(0)
    );
	 
	 adderBit1: oneBitFullAdder port map (
        sum => carryOut(1),
        carryOut => carry2,
        carryIn => carry1,
        a => a(1),
        b => b(1)
    );
	 
	 adderBit2: oneBitFullAdder port map (
        sum => carryOut(2),
        carryOut => carry3,
        carryIn => carry2,
        a => a(2),
        b => b(2)
    );
	 
	 adderBit3: oneBitFullAdder port map (
        sum => carryOut(3),
        carryOut => carryOut,
        carryIn => carry3,
        a => a(3),
        b => b(3)
    );
end process;
end architecture;