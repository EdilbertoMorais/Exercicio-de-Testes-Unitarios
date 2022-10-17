defmodule FizzBuzz do
  @moduledoc """
    Módulo do desafio FizzBuzz
  """

  @doc """
    Converte os valores de 1 até o argumento: divisíveis por 3,
    para Fizz; divisíveis por 5, para Buzz; divisíveis por 3 e
    por 5 para FizzBuzz.

    ## Exemplo:

    iex> FizzBuzz.convert(20)
    [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14,"FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]
  """

  def convert(value) do
    1..value
    |> Enum.map(&evaluate_number/1)
  end

  defp evaluate_number(value) when rem(value, 15) == 0, do: "FizzBuzz"
  defp evaluate_number(value) when rem(value, 5) == 0, do: "Buzz"
  defp evaluate_number(value) when rem(value, 3) == 0, do: "Fizz"
  defp evaluate_number(value), do: value
end
