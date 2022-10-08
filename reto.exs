defmodule SeriesUtils do
  def count_numbers_series(msg, amount, cont, lower_limit, upper_limit) when cont <= upper_limit do
    msg = msg <> "#{cont}"
    number = String.to_integer(msg)
    if cont >= lower_limit do
      IO.puts(number)
      count_numbers_series(msg, amount + (rem(number,3) == 0 && 1 || 0) , cont + 1, lower_limit, upper_limit)
    else
      count_numbers_series(msg,amount, cont + 1, lower_limit, upper_limit)
    end
  end

  def count_numbers_series(_msg, amount, cont, _lower_limit, upper_limit) when cont > upper_limit do
      amount
  end
end

result =  SeriesUtils.count_numbers_series("",0, 1, 3, 5)
IO.puts("Result: ")
IO.puts(result)
