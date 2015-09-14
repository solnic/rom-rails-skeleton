MyApp.configure do |container|
  container.register('persistence') do
    ROM.env
  end

  container.register('persistence.commands.users') do
    container['persistence'].command(:users)
  end

  container.register('persistence.commands.create_user') do
    container['persistence.commands.users'][:create]
  end

  container.register('repositories.users') do
    UserRepository.new(container['persistence'])
  end
end
