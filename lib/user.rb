require "pry"
class User
attr_accessor :email , :name
@@user_counts = 0
@@user_list = []
	def initialize(email_to_save, name_to_save)
		@name = name_to_save
		@email = email_to_save
		@@user_counts = @@user_counts + 1
		@@user_list[@@user_counts] = @name
	end
	def update_name(name_new_user)
		x = @@user_list.index(@name)
		@name = name_new_user
		@@user_list[x] = name_new_user
	end
	def self.count
		return @@user_counts
	end
	def self.all
		return @@user_list
	end
end
binding.pry
puts "end of file"
