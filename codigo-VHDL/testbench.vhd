-- Curso: Engenharia de Software
-- Disciplina: Sistemas Embarcados
-- Professor: Vandermi Joao da Silva
-- Autor: Gabriel dos Santo Tavares
-- Data: 08/10/2021

-- Construa um circuito com portas lógicas
-- que permitam modificar as saídas quando processadas.
-- O circuito deverá receber como entrada um registrador
-- A e B e a resposta deverá ser armazenada em X. A Saída
-- deverá inverter o resultado do processamento. Após a
-- construção do circuito, codifique-o usando VHDL.

-- Início do cód
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is

end testbench; 

architecture tb of testbench is

component portas is
port(
  a: in std_logic;
  b: in std_logic;
  x: out std_logic);
end component;

signal a_in, b_in, x_out: std_logic;

begin

  DUT: portas port map(a_in, b_in, x_out);

  process
  begin
    a_in <= '0';
    b_in <= '0';
    wait for 1 ns;
    assert(q_out='1') report "Fail 0/1" severity error;
  end process;
end tb;
-- Fim do código