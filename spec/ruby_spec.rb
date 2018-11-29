require ('rspec')
require ('pry')
require ('Contact')


describe('Contact') do
  before do
    Contact.clear
  end

  describe('#save') do
    it('tests a method for Contact') do
      dummy = Contact.new({:first_name => "ben", :last_name=>"kirby", :address=> "portland"})
      expect(dummy.save()).to(eq([dummy]))
    end
  end

  describe('#all') do
    it('reurns a list of all contacts') do
      dummy = Contact.new({:first_name => "ben", :last_name=>"kirby", :address=> "portland"})
      dummy.save()
      dummy2 = Contact.new({:first_name => "rob", :last_name=>"bruce", :address=> "portland"})
      dummy2.save()
      expect(Contact.all()).to(eq([dummy, dummy2]))
    end
  end

  describe('#find') do
    it('reurns a list of all contacts') do
      dummy = Contact.new({:first_name => "ben", :last_name=>"kirby", :address=> "portland"})
      dummy.save()
      dummy2 = Contact.new({:first_name => "rob", :last_name=>"bruce", :address=> "portland"})
      dummy2.save()
      expect(Contact.find(1)).to(eq(dummy))
      expect(Contact.find(2)).to(eq(dummy2))

    end
  end
end
