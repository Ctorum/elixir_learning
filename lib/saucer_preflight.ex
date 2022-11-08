defmodule SaucerPreflight do
  @moduledoc """
  Documentation for SaucerPreflight
  """

  defp max_flying_load_lbs, do: 90.3
  defp convert_kg_to_lbs(kg_value), do: kg_value * 2.2
  defp get_total_item_pound(tuple), do: elem(tuple, 0) * elem(tuple, 2)

  def get_total_load([]), do: 0

  def get_total_load([head | tail]) do
    (head
     |> EquipmentDetails.item_details()
     |> get_total_item_pound()
     |> convert_kg_to_lbs()) + get_total_load(tail)
  end

  def is_under_max_load?(list) do
    final_weight = get_total_load(list)

    if final_weight < max_flying_load_lbs() do
      true
    else
      false
    end
  end
end
