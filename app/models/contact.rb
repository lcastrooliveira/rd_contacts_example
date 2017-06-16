# app/model/contact.rb
class Contact < ApplicationRecord
  validates_presence_of :email, :ip, :urls
  validates_format_of :email, with: Devise.email_regexp
  store_accessor :urls, :pages
  paginates_per 5
end
