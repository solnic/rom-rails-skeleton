module UserCommands
  class Delete < ROM::Commands::Delete[:sql]
    relation :users
    register_as :delete
    result :one
  end
end
