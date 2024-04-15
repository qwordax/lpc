library lpc;

library ieee;

use ieee.std_logic_1164.all;

package components is

component lpc_not is
port (
    a: in  std_logic;
    q: out std_logic
);
end component lpc_not;

end package components;
