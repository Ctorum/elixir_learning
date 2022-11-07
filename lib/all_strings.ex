defmodule AllStrings do
  @moduledoc """
  Documentation for `AllStrings`
  """

  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  def initial(value) do
    "#{first_letter(value) |> String.capitalize()}. "
  end

  def initials(full_name) do
    list = String.split(full_name)

    Enum.map(list, fn name ->
      initial(name)
    end)
    |> to_string()
    |> String.trim()
  end
end
