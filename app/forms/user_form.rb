class UserForm < ROM::Model::Form
  commands users: :create

  input do
    set_model_name 'User'

    attribute :name, String
    attribute :email, String
  end

  validations { }

  def commit!
    users.try { users.create.call(attributes) }
  end
end
