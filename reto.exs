defmodule Recursion do
  def print_multiple_times(msg, cantidad, cont, limit_inf, limit_sup) when cont <= limit_sup do
    msg = msg <> "#{cont}"
    numero = String.to_integer(msg)
    if cont >= limit_inf do
      IO.puts(numero)
      cond do
      rem(numero,3) == 0 -> print_multiple_times(msg, cantidad + 1, cont + 1, limit_inf, limit_sup)
      true -> print_multiple_times(msg, cantidad, cont + 1, limit_inf, limit_sup)
      end
    else
      print_multiple_times(msg, cantidad, cont + 1, limit_inf, limit_sup)
    end
  end

  def print_multiple_times(_msg,cantidad, cont, _limit_inf, limit_sup ) when cont > limit_sup do
      cantidad
  end
end

numeros =  Recursion.print_multiple_times("",0, 1, 3, 5)
IO.puts("Resultado: ")
IO.puts(numeros)
