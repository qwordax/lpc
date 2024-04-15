library ieee;
library lpc;

use ieee.std_logic_1164.all;

use lpc.components.all;

entity lpc_nor is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end entity lpc_nor;

architecture rtl of lpc_nor is
begin
    process (a) is
        variable t: std_logic;
    begin
        t := a(0);

        for i in 1 to lpc_size - 1 loop
            t := t or a(i);
        end loop;

        q <= not t;
    end process;
end architecture rtl;
