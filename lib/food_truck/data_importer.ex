defmodule FoodTruck.DataImporter do
  @moduledoc false

  require Logger

  def import_data() do
    Logger.debug("Importing data")

    data_url = Application.get_env(:food_truck, :data_url)

    Finch.build(:get, data_url) |> Finch.request(FoodTruck.Finch) |> dbg

    data = []

    {:ok, data}
  end
end
