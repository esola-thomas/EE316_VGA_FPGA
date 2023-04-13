-- Listing 12.1
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity vga_sync is
   port(
      clk, reset: in std_logic;
      hsync, vsync: out std_logic;
      I_CLK_50MHz : in std_logic;
      vga_address : out std_logic_vector(15 downto 0);
      vga_data : in std_logic_vector(7 downto 0);
      vga_r : out std_logic_vector(3 downto 0);
      vga_g : out std_logic_vector(3 downto 0);
      vga_b : out std_logic_vector(3 downto 0)
    );
end vga_sync;

architecture arch of vga_sync is
   -- VGA 640-by-480 sync parameters
   constant HD: integer:=640; --horizontal display area
   constant HF: integer:=16 ; --h. front porch
   constant HB: integer:=48 ; --h. back porch
   constant HR: integer:=96 ; --h. retrace
   constant VD: integer:=480; --vertical display area
   constant VF: integer:=10;  --v. front porch
   constant VB: integer:=33;  --v. back porch
   constant VR: integer:=2;   --v. retrace
   -- mod-2 counter
   signal mod2_reg, mod2_next: std_logic;
   -- sync counters
   signal v_count_reg, v_count_next: unsigned(9 downto 0);
   signal h_count_reg, h_count_next: unsigned(9 downto 0);
   -- output buffer
   signal v_sync_reg, h_sync_reg: std_logic;
   signal v_sync_next, h_sync_next: std_logic;
   -- status signal
   signal h_end, v_end, pixel_tick: std_logic;
   signal current_bit : std_logic;
   signal video_on : std_logic;
begin

    vga_address <= std_logic_vector(to_unsigned((to_integer(v_count_reg) * 80) + (to_integer(h_count_reg + 1) / 8), 16));
    current_bit <= vga_data(to_integer(h_count_reg) mod 8);

    process(current_bit, video_on)
    begin
        if video_on = '1' then
            if current_bit = '1' then
--                vga_r <= x"F";
--                vga_g <= x"F";
--                vga_b <= x"F";
                vga_r <= std_logic_vector(h_count_reg(3 downto 0));
                vga_g <= std_logic_vector(v_count_reg(3 downto 0));
                vga_b <= std_logic_vector(h_count_reg(3 downto 0));
            else
                vga_r <= x"E";
                vga_g <= x"E";
                vga_b <= x"E";
            end if;
        else
            vga_r <= x"0";
            vga_g <= x"0";
            vga_b <= x"0";
        end if;
    end process;

   -- registers
   process (clk,reset)
   begin
      if reset='1' then
         mod2_reg <= '0';
         v_count_reg <= (others=>'0');
         h_count_reg <= (others=>'0');
         v_sync_reg <= '0';
         h_sync_reg <= '0';
      elsif (clk'event and clk='1') then
         mod2_reg <= mod2_next;
         v_count_reg <= v_count_next;
         h_count_reg <= h_count_next;
         v_sync_reg <= v_sync_next;
         h_sync_reg <= h_sync_next;
      end if;
   end process;
   -- mod-2 circuit to generate 25 MHz enable tick
   mod2_next <= not mod2_reg;
   -- 25 MHz pixel tick
   pixel_tick <= '1' when mod2_reg='1' else '0';
   -- status
   h_end <=  -- end of horizontal counter
      '1' when h_count_reg=(HD+HF+HB+HR-1) else --799
      '0';
   v_end <=  -- end of vertical counter
      '1' when v_count_reg=(VD+VF+VB+VR-1) else --524
      '0';
   -- mod-800 horizontal sync counter
   process (h_count_reg,h_end,pixel_tick)
   begin
      if pixel_tick='1' then  -- 25 MHz tick
         if h_end='1' then
            h_count_next <= (others=>'0');
         else
            h_count_next <= h_count_reg + 1;
         end if;
      else
         h_count_next <= h_count_reg;
      end if;
   end process;
   -- mod-525 vertical sync counter
   process (v_count_reg,h_end,v_end,pixel_tick)
   begin
      if pixel_tick='1' and h_end='1' then
         if (v_end='1') then
            v_count_next <= (others=>'0');
         else
            v_count_next <= v_count_reg + 1;
         end if;
      else
         v_count_next <= v_count_reg;
      end if;
   end process;
   -- horizontal and vertical sync, buffered to avoid glitch
   h_sync_next <=
      '1' when (h_count_reg>=(HD+HF))           --656
           and (h_count_reg<=(HD+HF+HR-1)) else --751
      '0';
   v_sync_next <=
      '1' when (v_count_reg>=(VD+VF))           --490
           and (v_count_reg<=(VD+VF+VR-1)) else --491
      '0';
   -- video on/off
   video_on <=
      '1' when (h_count_reg<HD) and (v_count_reg<VD) else
      '0';
   -- output signal
   hsync <= h_sync_reg;
   vsync <= v_sync_reg;
end arch;
