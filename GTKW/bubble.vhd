architecture foo of bubblesort is
    use ieee.numeric_std.all;
begin

BSORT:
    process (clk)
        variable temp:      std_logic_vector (3 downto 0);
        variable var_array:     bubble;        
    begin
        var_array := in_array;
        if rising_edge(clk) then
            for j in bubble'LEFT to bubble'RIGHT - 1 loop 
                for i in bubble'LEFT to bubble'RIGHT - 1 - j loop 
                    if unsigned(var_array(i)) > unsigned(var_array(i + 1)) then
                        temp := var_array(i);
                        var_array(i) := var_array(i + 1);
                        var_array(i + 1) := temp;
                    end if;
                end loop;
            end loop;
            sorted_array <= var_array;
        end if;
    end process;
end architecture foo;