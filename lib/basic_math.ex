defmodule BasicMath do
  @moduledoc """
  Documentation for BasicMath
  """
  def add(addend_1, addend_2) do
    addend_1 + addend_2
  end

  def subtract(minuend, subtrahend) do
    minuend - subtrahend
  end

  def multiply(multiplier, multiplicand) do
    multiplier * multiplicand
  end

  def divide(dividend, divisor) do
    dividend / divisor
  end

  def round_up(value) do
    Float.ceil(value, 2)
  end
end
