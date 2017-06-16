# app/model/contact.rb
class Contact < ApplicationRecord
  validates_presence_of :email, :ip, :urls
  store_accessor :urls, :pages
  paginates_per 5
end
