# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whit
require "pry"

class EmailAddressParser 
  attr_accessor :email 
  def initialize(email) 
    @email = email
  end 
   
  def parse
    email_array = []
    email_array = @email.split(/[,\s]/)
    email_array = email_array.reject { |address| address == ""}
    email_array.uniq
  end 

end 

# def self.new_from_filename(data)
#     # binding.pry
#     row = data.split(" - ")
    
#     singer = row[0]
#     song = row[1]
    
#     new = self.new
#     new.artist_name = singer
#     new.name = song.split(".")[0]
#     new
