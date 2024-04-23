library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity lpc_dx is
generic (
    lpc_width: natural
);
port (
    d:  in  std_logic_vector(2 ** lpc_width - 1 downto 0);
    a:  in  std_logic_vector(lpc_width - 1 downto 0);
    en: in  std_logic;
    q:  out std_logic
);
end entity lpc_dx;

architecture rtl of lpc_dx is
begin
    process (d, a, en) is
    begin
        q <= '0';

        if en = '1' then
            q <= d(to_integer(unsigned(a)));
        end if;
    end process;
end architecture rtl;
