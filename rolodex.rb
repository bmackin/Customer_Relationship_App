require_relative 'contact'

class Rolodex
	
	def initialize
		@contacts = []
		@id = 1000
	end

#WORKING	
	def add_new_contact(first_name, last_name, email, notes)
		@id += 1
		@contacts << Contact.new(@id, first_name, last_name, email, notes)
		@contacts.last
		puts "Contact has been added to database."
	end
	
# WORKING
	def modify_contact
		puts "\e[H\e[2J"
		display_contacts
		puts " "
		puts "Please enter the id number of the contact you wish to modify:"
			id = gets.chomp
			@contacts.each do |contact|
				if contact.id == id.to_i
					puts "Enter the new first name:"
					first_name = gets.chomp.capitalize
					contact.first_name = first_name
					puts "Enter the new last name:"
					last_name = gets.chomp.capitalize
					contact.last_name = last_name
					puts "Enter the new email address:"
					email = gets.chomp.capitalize
					contact.email = email
					puts "Enter the new new note:"
					notes = gets.chomp.capitalize
					contact.notes = notes
				end
			end
	end

  
# WORKING
	def delete_contact
		display_contacts
		puts "Please enter the id number of the contact you wish to delete:"
		delete_id = gets.chomp.to_i
		@contacts.each do |contact|
      	if delete_id == contact.id
      	@contacts.delete(contact)
        end
    end
       	puts "\e[H\e[2J"
       	puts "Contact has been removed from database."
	end

# WORKING
	def display_contacts
		puts "\e[H\e[2J"
		puts " "
		puts "CONTACT LIST".center(85)
		puts "-" * 80
		
#  JUSTIFICATION TO BE FIXED!!!!!
		@contacts.each{ |x| puts "ID: #{x.id} Name: #{x.first_name.ljust(10)} #{x.last_name.ljust(15)} Email: #{x.email.ljust(20)} Notes: #{x.notes.ljust(35)}"}
		puts " "
		puts "-" * 80
		puts " "
  end

end