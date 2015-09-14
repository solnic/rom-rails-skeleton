RSpec.describe 'User repository' do
  subject(:user_repo) { container['repositories.users'] }

  describe '#[]' do
    let(:user) do
      container['persistence.commands.create_user']
        .call(name: 'Jane', email: 'jane@doe.org')
    end

    it 'returns user struct by its id' do
      expect(user_repo[user[:id]].name).to eql('Jane')
    end
  end
end
