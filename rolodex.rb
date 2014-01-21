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
		puts @contacts[0].first_name
	end
	
	def find_contact(last_name)
		@contacts.select{ |contact| contact.last_name == last_name }
	end

	# def modify_contact(contact, selection, new_attr)
	# 	if selection == "email"
	# 	puts "Enter new email address:"
	# 	new_attr = gets.chomp.downcase
	# 	contact.email = new_attr
	# 	elsif selection == "notes"
	# 	puts "Enter new note:"
	# 	new_attr = gets.chomp
	# 	contact.notes = new_attr
	# 	else
	# 	puts "That was not a valid selection"
	# 	end
	
	# end
# WORKING
	def delete_contact(id)
		@contacts.delete_if{ |contact| contact.id == @id }
		puts "Contact has been removed from database."
	end

# WORKING
	def display_contacts
		@contacts.each{ |x| puts "ID: #{x.id} Name: #{x.first_name} #{x.last_name} Email: #{x.email} Notes: #{x.notes}"}
    end

end