library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity lpc_ram is
generic (
    lpc_width_d: natural;
    lpc_width_a: natural;
    lpc_file:    string
);
port (
    d:  in  std_logic_vector(lpc_width_d - 1 downto 0);
    a:  in  std_logic_vector(lpc_width_a - 1 downto 0);
    r:  in  std_logic;
    w:  in  std_logic;
    cl: in  std_logic;
    q:  out std_logic_vector(lpc_width_d - 1 downto 0)
);
end entity lpc_ram;

architecture rtl of lpc_ram is
    subtype word_t is std_logic_vector(lpc_width_d - 1 downto 0);

    type memory_t is array(2 ** lpc_width_a - 1 downto 0) of word_t;

    signal m: memory_t;

    attribute ram_init_file: string;
    attribute ram_init_file of m: signal is lpc_file;
begin
    process (cl) is
    begin
        if cl'event and cl = '1' then
            if r = '1' then
                q <= m(to_integer(unsigned(a)));
            elsif w = '1' then
                m(to_integer(unsigned(a))) <= d;
            end if;
        end if;
    end process;
end architecture rtl;
