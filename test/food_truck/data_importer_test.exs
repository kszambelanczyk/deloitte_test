defmodule FoodTruck.DataImporterTest do
  use FoodTruck.DataCase

  alias FoodTruck.DataImporter

  describe "data_importer" do
    test "import_data/0 downloads and imports data from csv file" do
      assert {:ok, data} = DataImporter.import_data()

    end

  end


end
