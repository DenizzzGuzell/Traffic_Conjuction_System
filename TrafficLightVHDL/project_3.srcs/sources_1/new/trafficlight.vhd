library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity trafficlight is
generic(
	c_clkfreq   : integer := 100_000_000;
	c_lighttime : integer := 1000;
	c_control   : std_logic_vector (1 downto 0) := "00"
);
Port ( 
	clk 														: in std_logic;
	isPedestrian1,isPedestrian2,isPedestrian3,isPedestrian4		: in std_logic := '0';						
	r1,y1,g1,r2,y2,g2,r3,y3,g3,r4,y4,g4 						: out std_logic;
	pd1r,pd2r,pd3r,pd4r,pd1g,pd2g,pd3g,pd4g	    				: out std_logic;
	alert1,alert2,alert3,alert4 		 						: out std_logic
);
end trafficlight;

architecture Behavioral of trafficlight is
constant c_timlimit : integer := c_clkfreq/c_lighttime;

signal wr1,wy1,wg1,wr2,wy2,wg2,wr3,wy3,wg3,wr4,wy4,wg4 : std_logic := '0';
signal wpd1r,wpd2r,wpd3r,wpd4r,wpd1g,wpd2g,wpd3g,wpd4g : std_logic := '0';	

signal timer 										   : integer   := 0;
signal timer_en 									   : std_logic := '1';
signal timer_tick									   : std_logic := '0';
 	
type allstate is (s_initial, s_first, s_second, s_third, s_fourth);
type onestate is (s_red, s_redyellow, s_green, s_yellow);
 
signal light    : allstate := s_initial;
signal onelight : onestate := s_red;


begin
process (clk) begin 
if(rising_edge(clk)) then
	
	case light is	
		when s_initial =>
			if(c_control = "00") then
				light <= s_first;
			elsif (c_control = "01") then
				light <= s_second;
			elsif (c_control = "10") then
				light <= s_third;
			else
				light <= s_fourth;
			end if;
			
		when s_first   =>
			case onelight is
				when s_red       =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_redyellow;
					end if;
				when s_redyellow =>
					wr1 <= '1'; wy1 <= '1'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_green;
					end if;
				when s_green     =>
					wr1 <= '0'; wy1 <= '0'; wg1 <= '1'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_yellow;
					end if;
				when s_yellow    =>
					wr1 <= '0'; wy1 <= '1'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_red;
						light    <= s_second;
					end if;
			end case;

		when s_second  =>
			case onelight is
				when s_red       =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_redyellow;
					end if;
				when s_redyellow =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '1'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_green;
					end if;
				when s_green     =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '0'; wy2 <= '0'; wg2 <= '1'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_yellow;
					end if;
				when s_yellow    =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '0'; wy2 <= '1'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_red;
						light    <= s_second;
					end if;
			end case;
			
		when s_third   =>
			case onelight is
				when s_red       =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_redyellow;
					end if;
				when s_redyellow =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '1'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_green;
					end if;
				when s_green     =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '0'; wy3 <= '0'; wg3 <= '1'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_yellow;
					end if;
				when s_yellow    =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '0'; wy3 <= '1'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_red;
						light    <= s_second;
					end if;
			end case;
			
		when s_fourth   =>
			case onelight is
				when s_red       =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '0'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_redyellow;
					end if;
				when s_redyellow =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '1'; wy4 <= '1'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_green;
					end if;
				when s_green     =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '0'; wy4 <= '0'; wg4 <= '1';
					if(timer_tick = '1') then
						onelight <= s_yellow;
					end if;
				when s_yellow    =>
					wr1 <= '1'; wy1 <= '0'; wg1 <= '0'; wr2 <= '1'; wy2 <= '0'; wg2 <= '0'; wr3 <= '1'; wy3 <= '0'; wg3 <= '0'; wr4 <= '0'; wy4 <= '1'; wg4 <= '0';
					if(timer_tick = '1') then
						onelight <= s_red;
						light    <= s_second;
					end if;
			end case;
	end case;
end if;
end process;

p_timer : process (clk)begin
	if(rising_edge(clk)) then
		if(timer_en = '1') then
			if(timer < c_timlimit-1) then
				timer <= timer+1;
				timer_tick <= '0';
			else 
				timer_tick <= '1';
				timer  	   <= 0;
			end if;
		else 
			timer_tick <= '0';
			timer <= 0;
		end if;
	end if;
end process p_timer;

p_pedes : process begin
	if(wg1 = '1') then
		wpd1r<='1'; wpd1g<='0'; wpd2r<='0'; wpd2g<='1'; wpd3r<='1'; wpd3g<='0'; wpd4r<='1'; wpd4g<='0';
	elsif(wg2='1') then
		wpd1r<='1'; wpd1g<='0'; wpd2r<='1'; wpd2g<='0'; wpd3r<='0'; wpd3g<='1'; wpd4r<='1'; wpd4g<='0';
	elsif(wg3='1') then
		wpd1r<='1'; wpd1g<='0'; wpd2r<='1'; wpd2g<='0'; wpd3r<='1'; wpd3g<='0'; wpd4r<='0'; wpd4g<='1';
	elsif(wg4='1') then
		wpd1r<='0'; wpd1g<='1'; wpd2r<='1'; wpd2g<='0'; wpd3r<='1'; wpd3g<='0'; wpd4r<='1'; wpd4g<='0';
	else
		wpd1r<='1'; wpd1g<='0'; wpd2r<='1'; wpd2g<='0'; wpd3r<='1'; wpd3g<='0'; wpd4r<='1'; wpd4g<='0';
	end if;
end process p_pedes;

p_alert : process begin
	if(isPedestrian1='1') then
		if(wpd1r = '1') then
			alert1 <= '1';
		else
			alert1 <= '0';
		end if;
	else 
		alert1 <= '0';
	end if;
	if(isPedestrian2='1') then
		if(wpd2r = '1') then
			alert2 <= '1';
		else
			alert2 <= '0';
		end if;
	else 
		alert2 <= '0';
	end if;
	if(isPedestrian3='1') then
		if(wpd3r = '1') then
			alert3 <= '1';
		else
			alert3 <= '0';
		end if;
	else 
		alert3 <= '0';
	end if;
	if(isPedestrian4='1') then
		if(wpd4r = '1') then
			alert4 <= '1';
		else
			alert4 <= '0';
		end if;
	else 
		alert4 <= '0';
	end if;	
end process p_alert;
r1 <= wr1; y1 <= wy1; g1 <= wg1; r2 <= wr2; y2 <= wy2; g2 <= wg2; r3 <= wr3; y3 <= wy3; g3 <= wg3; r4 <= wr4; y4 <= wy4; g4 <= wg4;
pd1r<=wpd1r; pd1g<=wpd1g; pd2r<=wpd2r; pd2g<=wpd2g; pd3r<=wpd3r; pd3g<=wpd3g; pd4r<=wpd4r; pd4g<=wpd4g;
end Behavioral;
