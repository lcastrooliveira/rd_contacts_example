require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "is valid with valid attributes" do
    contact = build(:contact)

    expect(contact).to be_valid
  end
  it "is not valid without email" do
    contact = build(:contact, email: nil)

    expect(contact).to be_invalid
  end
  it "is not valid with an invalid email" do
    contact = build(:contact, email: 'mickeymouse')

    expect(contact).to be_invalid
  end
  it "is not valid without ip" do
    contact = build(:contact, ip: nil)

    expect(contact).to be_invalid
  end
  it "is not valid without urls" do
    contact = build(:contact, urls: nil)

    expect(contact).to be_invalid
  end
end
