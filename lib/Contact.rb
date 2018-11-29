class Contact
  attr_accessor :first_name, :last_name, :id, :job_title, :contact_company, :contact_type
  attr_reader :address
  @@contacts = []


  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @address = []
    @address.push(attributes.fetch(:address))
    @job_title = attributes.fetch(:job_title)
    @contact_company = attributes.fetch(:contact_company)
    @contact_type = attributes.fetch(:contact_type)
    @id = @@contacts.length() +1
  end

  def add_address(attributes)
    address = attributes['address']
    unless address == ""
      @address.push(address)
    end
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
      if i.id == id.to_i
        return i
      end
    end
    return false
  end

  def self.clear
    @@contacts = []
  end
end
