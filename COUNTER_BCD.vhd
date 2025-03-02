library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;  -- Use STD_LOGIC_ARITH for arithmetic operations
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_COUNTER is
    Port (
           D_IN : in std_logic_vector(3 downto 0);  -- Date de intrare
           clk_counter : in std_logic;               -- Clock-ul
           reset : in std_logic;                     -- Reset-ul la 0
           load : in std_logic;                      -- semnalul load pentru sistemul secvential
           sel : in std_logic_vector(1 downto 0);    -- cele doua selectii cerute in cerinta
           serial_in : in std_logic;                 -- bitul care este pus pe LSB-ul registrului serial
           Data_Out : out std_logic_vector(3 downto 0)  -- Date de iesire
    );
end BCD_COUNTER;

architecture Behavioral of BCD_COUNTER is
    signal reg_bcd: std_logic_vector(3 downto 0) := (others => '0');  -- registru intern
    signal D : std_logic_vector(3 downto 0);
    signal Q : std_logic_vector(3 downto 0);
begin

    D <= D_IN;          -- Transfer D_IN to D signal
    Data_Out <= Q;      -- Output Q to Data_Out

    process(clk_counter, reset)
    begin
        if reset = '1' then
            reg_bcd <= (others => '0');  -- Reset to 0
        elsif rising_edge(clk_counter) then
            case sel is
                when "00" =>  -- registru serie
                    if load = '1' then
                        -- incarca datele de intrare in reg_bcd
                        reg_bcd <= D;
                    else
                        -- Shifteza registrul serie la stanga odata si pune pe LSB serial_in-ul
                        reg_bcd <= reg_bcd(2 downto 0) & serial_in;  
                    end if;

                when "01" =>  -- BCD crescator
                    if reg_bcd = "1001" then
                        reg_bcd <= "0000";  -- punem valoarea 0 cand ajunge la 9 
                    else
                        reg_bcd <= reg_bcd + 1;
                    end if;

                when "10" =>  -- BCD descrescator
                    if reg_bcd = "0000" then
                        reg_bcd <= "1001";  -- punem valoarea 9 cand ajunge la 0
                    else
                        reg_bcd <= reg_bcd - 1; 
                    end if;

                when others =>  -- un fel de default
                    reg_bcd <= reg_bcd;
            end case;
        end if;
    end process;

    Q <= reg_bcd;  -- punem valoarea din registru in datele de iesire astfel se va afisa la led-urile de pe placuta valoarea obtinuta 

end Behavioral;
