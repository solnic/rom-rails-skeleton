class UserRepository < ROM::Repository::Base
  relations :users

  def [](id)
    users.by_id(id).one!
  end
end
