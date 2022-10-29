defmodule ElixirLearning do
  def create_todos do
    {number_of_tasks, _} =
      IO.gets("Enter the number of todos you want to add: ") |> Integer.parse()

    number_of_tasks
  end

  def temp_todos do
    ["lol", "lmao", "xdlol", "lmfao"]
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def random(tasks) do
    [rd] = Enum.take_random(tasks, 1)
    rd
  end
end
