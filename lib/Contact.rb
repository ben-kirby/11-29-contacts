class Contact
  attr_accessor :first_name, :last_name, :id
  attr_reader :address, :job_title, :contact_company, :contact_type
  @@contacts = []


  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @address = []
    @address.push(attributes.fetch(:address))
    @job_title = []
    @job_title.push(attributes.fetch(:job_title))
    @contact_company = []
    @contact_company.push(attributes.fetch(:contact_company))
    @contact_type = []
    @contact_type.push(attributes.fetch(:contact_type))
    @id = @@contacts.length() +1
  end

  def add_address(attributes)
    address = attributes['address']
    unless address == ""
      @address.push(address)
    end
  end

  def add_job(attributes)
    contact_company = attributes['contact_company']
    job = attributes['job_title']
    unless (job == "") || (contact_company == "")
      @job_title.push(job)
    end
  end

  def add_contact_company(attributes)
    job = attributes['job_title']
    contact_company = attributes['contact_company']
    unless (contact_company == "") || (job == "")
      @contact_company.push(contact_company)
    end
  end

  def add_contact_type(attributes)
    contact_type = attributes['contact_type']
    unless contact_type == ""
      @contact_type.push(contact_type)
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
