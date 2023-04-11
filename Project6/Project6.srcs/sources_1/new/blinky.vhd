-- Ernesto Sola-Thomas

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blinky is
    Generic(
        clk_freq        : integer := 100000000;
        out_size        : integer := 0;
        out_off_mask    : std_logic_vector(31 downto 0) := X"00000000";  -- Just outsize will be used 
        out_on_mask     : std_logic_vector(31 downto 0) := X"11111111"   -- Just outsize will be used 
    );
    Port ( GCLK : in STD_LOGIC;
        LD0 : out std_logic_vector(out_size-1 downto 0) := X"0");
end blinky;

architecture Behavioral of blinky is
signal count : integer := 0;
begin

process (GCLK) begin
    if (rising_edge(GCLK)) then
        if (count < 100000000*2) then
            count <= count + 1;
        else 
            count <= 0;
        end if; 
    end if;
end process;

LD0 <=  out_off_mask(out_size-1 downto 0) when count < clk_freq else 
        out_on_mask(out_size-1 downto 0) when count < clk_freq*2;

end Behavioral;