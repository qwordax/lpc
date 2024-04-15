library ieee;
library lpc;

use ieee.std_logic_1164.all;

use lpc.components.all;

entity lpc_not is
port (
    a: in  std_logic;
    q: out std_logic
);
end entity lpc_not;

architecture rtl of lpc_not is
begin
    q <= not a;
end architecture rtl;
