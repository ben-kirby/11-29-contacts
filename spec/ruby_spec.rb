require ('rspec')
require ('pry')
require ('Contact')


describe('Contact') do 

  it('tests a method for Contact') do

    dummy = Contact.new()

    expect(dummy.method()).to(eq(expected result))

  end

end

