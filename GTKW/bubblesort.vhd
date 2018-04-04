library ieee;
use ieee.std_logic_1164.all;

package array_type is
    type bubble is array (0 to 15) of std_logic_vector(3 downto 0);
end package;

library ieee;
use ieee.std_logic_1164.all;
use work.array_type.all;

entity bubblesort is
    port (
        signal clk:             in  std_logic;
        signal reset:           in  std_logic;
        signal in_array:        in  bubble;
        signal sorted_array:    out bubble 
    );
end entity;