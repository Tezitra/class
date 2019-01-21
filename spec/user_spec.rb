require_relative '../lib/user.rb'
describe User do

  before(:each) do
  	# ligne trouvée ici : https://geminstallthat.wordpress.com/2008/08/11/reloading-classes-in-rspec/
  	# qui permet de remettre à zéro la classe. Pratique pour la méthode count, mais pas obligatoire.
    Object.send(:remove_const, 'User')
    load 'user.rb'
  end
describe 'initializer' do

		it 'creates an user' do
      user = User.new("email@email.com", "name_user")
      expect(user.class).to eq(User)
		end
		it 'saves @email as instance variable' do
			email = "email@email.com"
			user = User.new(email)
			expect(user.email).to eq(email)
		end
		it 'saves name as instance variable' do
			name = "name_user"
			user = User.new(email)
			expect(user.email).to eq(email)
		end
	end
	describe 'instance variables' do

		describe '@email' do

			it 'can be read' do 
				email = "email@email.com"
				user = User.new(email)
				expect(user.email).to eq(email)
			end

			it 'can be written' do 
				email = "email@email.com"
				user = User.new(email)
				email_2 = "email_2@email.com"
				user.email = email_2
				expect(user.email).not_to eq(email)
				expect(user.email).to eq(email_2)
			end

		end
		describe '@name' do

			it 'can be read' do 
				email = "name_user"
				user = User.new(name_user)
				expect(user.name_user).to eq(name_user)
			end

			it 'can be written' do 
				email = "name_user"
				user = User.new(name_user)
				email_2 = "name_user_2"
				user.name_user = name_user_2
				expect(user.name_user).not_to eq(name_user)
				expect(user.name_user).to eq(name_user_2)
			end

		end

	end
	describe 'class methods' do

		describe 'self.count' do
			it 'shows the number of users' do 
				user_1 = User.new("email1@email.com")
				user_2 = User.new("email2@email.com")
				user_3 = User.new("email3@email.com")
				expect(User.count).to eq(3)
			end
		end
	end

end

