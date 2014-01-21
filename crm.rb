require_relative 'contact'
require_relative 'rolodex'

# NEED TO DO RETRIEVE CONTACT >> MODIFY CONTACT METHODS.
# FORMAT CONTACT LIST

class CRA

	# @rolodex.new_contact("Frank", "Gallager", "123-234-3456", "frank@alibiroom.com", "Do not invite for dinner anymore")
	# @rolodex.new_conatct("Dexter", "Morgan", "555-666-7777", "dmorgan@miamipd.com", "Isn't returning messages")
	# @rolodex.new_conatct("Tyrion", "Lannister", "333-222-1111", "tyrion@smallhand.com", "Send wedding gift")
	
	def initialize
	end


# WORKING
	def self.introduction
		puts "\n\n<<< Welcome to your Customer Relationship Management Application. >>>\n\n"
		puts "Would you like to see the main menu? (1)Y (2)N\n\n"
		user_selected = gets.chomp.to_i
		if user_selected == 1
			main_menu
		elsif user_selected == 2
			quit
		else
			quit
		end
	end

# WORKING	
	def self.print_main_menu
		puts " "
		puts "What would you like to do?"
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Delete a contact"
	 	puts "[4] Display all the contacts"
	 	puts "[5] Exit application"
	 	puts "Choose option number: "
	end

# WORKING
	def self.main_menu
        @rolodex=Rolodex.new
        option=0
        while (option!=6)
		print_main_menu
		user_selected = gets.to_i
		call_option(user_selected)
		end
	end

# WORKING
	def self.call_option(user_selected)
	  	add_new_contact if user_selected == 1
	  	@rolodex.retrieve_contact if user_selected == 2
		delete_contact if user_selected == 3
	  	@rolodex.display_contacts if user_selected == 5
	  	quit if user_selected == 6
	end
# WORKING
	def self.quit 
		puts "\e[H\e[2J"
		puts "\n<<< Goodbye and thank you for using this CRM app. >>>\n\n\n"
	end
# WORKING
	def self.add_new_contact
		puts "Please enter contact information"
		puts "First Name:"
		@first_name = gets.chomp.capitalize
		puts "Last Name:"
		@last_name = gets.chomp.capitalize
		puts "Email address:"
		@email = gets.chomp.downcase
		puts "Notes:"
		@notes = gets.chomp
		@rolodex.add_new_contact(@first_name, @last_name, @email, @notes)		
	end

	# def self.find_contact
	# 	puts "Please enter the last name of the contact you wish to find."
	# 	last_name = gets.chomp.capitalize
	# 	@rolodex.find_contact(last_name)
	# end

	# def self.modify_contact
	# 	puts "Please enter the last name of the contact you wish to modify:"
	# 	last_name = gets.chomp.capitalize
	# 	contact = ROLODEX.find_contact(last_name)
	# 	puts "PLease enter the attribute you wish to modify: (phone, email, or notes)"
	# 	selection = gets.chomp.downcase
	# 	ROLODEX.modify_contact
	# 	main_menu
	# end

	def self.delete_contact
		puts "Please enter the id number of the contact you wish to delete:"
		id = gets.chomp.to_i
		@rolodex.delete_contact(id)
	end


end

CRA.introduction


