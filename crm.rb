require_relative 'contact'
require_relative 'rolodex'


class CRA

	def initialize
	end


# WORKING
	def self.introduction
		puts "\n\n<<< Welcome to your Customer Relationship Management Application. >>>\n\n"
		puts "Would you like to see the main menu? Enter number: (1)Y (2)N\n\n"
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
	    while (option!=5)
			print_main_menu
			user_selected = gets.to_i
			call_option(user_selected)
			end
	end

# WORKING
	def self.call_option(user_selected)
	  	add_new_contact if user_selected == 1
	  	@rolodex.modify_contact if user_selected ==2
			@rolodex.delete_contact if user_selected == 3
	  	@rolodex.display_contacts if user_selected == 4
	  	quit if user_selected == 5
	end
# WORKING
	def self.quit 
			puts "\e[H\e[2J"
			puts "\n<<< Goodbye and thank you for using CRM >>>\n\n\n"
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
end

CRA.introduction


