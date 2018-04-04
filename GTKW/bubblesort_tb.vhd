library ieee;
use ieee.std_logic_1164.all;
use work.array_type.all;

entity bubblesort_tb is
end entity;

architecture fum of bubblesort_tb is
    signal clk:             std_logic := '0';
    signal reset:           std_logic := '0';
    signal in_array:        bubble :=
                   (x"F", x"E", x"D", x"C", x"B", x"A", x"9", x"8",
                    x"7", x"6", x"5", x"4", x"3", x"2", x"1", x"0");
    signal sorted_array:    bubble;
begin

DUT:
    entity work.bubblesort(foo)
        port map (
            clk => clk,
            reset => reset,
            in_array => in_array,
            sorted_array => sorted_array
        );
CLOCK:
    process
    begin
        wait for 10 ns;
        clk <= not clk;
        if now > 30 ns then
            wait;
        end if;
    end process;

end architecture;