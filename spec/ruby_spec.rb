require ('rspec')
require ('pry')
require ('Contact')

describe('Contact') do
  before do
    Contact.clear
    attributes = {:first_name=> "ben", :last_name=>"kirby", :address=> "portland", :job_title=> "Professional Dummy", :contact_company=> "Self Employed", :contact_type=> "contact"}
    @dummy = Contact.new(attributes)
    @dummy.save
    @dummy2 = Contact.new(attributes)
    @dummy2.save
  end

  describe('#save') do
    it('tests a method for Contact') do
      Contact.clear
      expect(@dummy.save()).to(eq([@dummy]))
    end
  end

  describe('#all') do
    it('reurns a list of all contacts') do
      expect(Contact.all()).to(eq([@dummy, @dummy2]))
    end
  end

  describe('#find') do
    it('reurns a list of all contacts') do
      expect(Contact.find(1)).to(eq(@dummy))
      expect(Contact.find(2)).to(eq(@dummy2))

    end
  end
end
