require_relative 'class_contact'

class Rolodex
	def self.create
		rolodex = Rolodex.new
		rolodex.new_contact = Contact.new(1001, "Dummy" 100, "dummy@dummy.com")

	def initialize
		@contacts = []
		@id = 1000
	end
	def new_contact(name, age, email)
		@id += 1
		@contacts << Contact.new(@id, name, age, email)
		@contacts.last
	end

	def find_contact(id)
		return nil if @contacts.empty?
		@contacts.each do |contact|
		return contact if contact.id == id
	end
end