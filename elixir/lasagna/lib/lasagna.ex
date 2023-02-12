defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(actual_minutes) do
    Lasagna.expected_minutes_in_oven() - actual_minutes
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(layers, min) do
    Lasagna.preparation_time_in_minutes(layers) + min
  end

  def alarm() do
    "Ding!"
  end
end
