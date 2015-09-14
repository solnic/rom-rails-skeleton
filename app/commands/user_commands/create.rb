module UserCommands
  class Create < ROM::Commands::Create[:sql]
    relation :users
    register_as :create
    result :one
  end
end
