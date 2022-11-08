defmodule Recursion do
  @moduledoc """
  Documentation for `Recursion`
  """

  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snack", "Snack", "Grappling Hook", "Probe"]
  end

  def loop([]), do: nil

  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  def equipment_count([]), do: 0
  def equipment_count([_ | tail]), do: 1 + equipment_count(tail)

  def format_equipment_list([]), do: []

  def format_equipment_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail)]
  end

  def occurrence_count([], _value), do: ""

  def occurrence_count([head | tail], value) do
    if String.contains?(format_string(head), format_string(value)) do
      IO.puts(format_string(head))
      occurrence_count(tail, value)
    else
      occurrence_count(tail, value)
    end
  end

  defp format_string(str) do
    str
    |> String.downcase()
    |> String.replace(" ", "_")
  end
end
