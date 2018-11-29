class Contact
  attr_accessor :first_name, :last_name, :address, :id
  @@contacts = []


  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @address = attributes.fetch(:address)
    @id = @@contacts.length() +1
  end

  def save
    @@contacts.push(self)
  end

  def self.all
    @@contacts
  end

  def self.find(id)
    list = all()
    list.each do |i|
      if i.id == id
        return i
      end
    end
  end

  def self.clear
    @@contacts = []
  end
end
