defmodule EquipmentDetails do
  @moduledoc """
  Documentation for `PatternMatching`
  """

  def get_equipment_list do
    [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  end

  def item_details(:space_helmet), do: {3, :kg, 1}
  def item_details(:space_suit), do: {16, :kg, 1}
  def item_details(:snacks), do: {1, :kg, 16}
  def item_details(:grappling_hook), do: {4, :kg, 1}
  def item_details(:probe), do: {2, :kg, 1}
  def item_details(_), do: raise("unknown item")
end
