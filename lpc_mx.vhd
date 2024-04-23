library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity lpc_mx is
generic (
    lpc_width: natural
);
port (
    d:  in  std_logic;
    a:  in  std_logic_vector(lpc_width - 1 downto 0);
    en: in  std_logic;
    q:  out std_logic_vector(2 ** lpc_width - 1 downto 0)
);
end entity lpc_mx;

architecture rtl of lpc_mx is
begin
    process (d, a, en) is
    begin
        q <= (others => '0');

        if en = '1' then
            q(to_integer(unsigned(a))) <= d;
        end if;
    end process;
end architecture rtl;
