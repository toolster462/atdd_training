require 'watir'



# describe "Passenger eligibility" do
#   describe "search by points" do
#     before do
#       @browser = Watir::Browser.new :chrome
#       @browser.goto('https://www.southwest.com')
#     end
#     it "Won't allow to select seniors" do
#       @browser.goto 'www.southwest.com'
#     @browser.radio(id:'price-type-points').set
#     senior_selection = @browser.text_field(name: "seniorPassengerCount")
#     expect(senior_selection).to be_disabled
#     end
#   end
#   end

 describe "One way trips" do
describe "return date" do
  before do
    @browser = Watir::Browser.new :chrome
    @browser.goto('https://www.southwest.com')
  end
  it "Will be disabled" do
    @browser.radio(id:'trip-type-one-way').set
    return_date = @browser.text_field(id: "air-date-return")
    expect(return_date).to be_disabled
  end
  end
end


#
#
#
#
#
#     describe "promo code" do
#       describe "error message"
#       it "won' allow invalid promo code"
#
#
#
#       expect(error_message).to be_displayed
#     end
#
#   end
# end