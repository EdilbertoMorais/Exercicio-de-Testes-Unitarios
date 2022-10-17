defmodule FizzBuzzTest do
  use ExUnit.Case

  doctest FizzBuzz

  describe "convert/1" do
    test "números divisíveis por 3 trocar por Fizz, até o valor 3" do
      assert FizzBuzz.convert(3) == [1, 2, "Fizz"]
    end

    test "números divisíveis por 5 trocar por Buzz até o valor 5" do
      assert FizzBuzz.convert(5) == [1, 2, "Fizz", 4, "Buzz"]
    end

    test "números divisíveis por 5 e por 3 trocar por FizzBuzz até o valor 20" do
      assert FizzBuzz.convert(20) == [
               1,
               2,
               "Fizz",
               4,
               "Buzz",
               "Fizz",
               7,
               8,
               "Fizz",
               "Buzz",
               11,
               "Fizz",
               13,
               14,
               "FizzBuzz",
               16,
               17,
               "Fizz",
               19,
               "Buzz"
             ]
    end

    test "trocar por Fizz ou Buzz até o valor 10" do
      assert FizzBuzz.convert(10) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]
    end
  end
end
