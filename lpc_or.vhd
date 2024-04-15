library ieee;
library lpc;

use ieee.std_logic_1164.all;

use lpc.components.all;

entity lpc_or is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end entity lpc_or;

architecture rtl of lpc_or is
begin
    process (a) is
        variable t: std_logic;
    begin
        t := a(0);

        for i in 1 to lpc_size - 1 loop
            t := t or a(i);
        end loop;

        q <= t;
    end process;
end architecture rtl;
