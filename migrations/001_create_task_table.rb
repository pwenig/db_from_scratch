Sequel.migration do
  up do
    create_table(:tasks) do
      primary_key :id
      String :name, :null=>false
    end
  end

  down do
    drop_table(:tasks)
  end
end
