$LOAD_PATH << Dir.pwd

require 'sinatra'
require 'json'
require 'calculator'

get '/add' do

  result = Calculator.send :add, params[:operand1], params[:operand2]
  {result: result}.to_json

end

get '/subtract' do

  result = Calculator.send :subtract, params[:operand1], params[:operand2]
  {result: result}.to_json

end

post '/calculate' do

  payload = JSON.parse request.body.read
  result = calculate_value(payload)
  {result: result}.to_json

end


helpers do

  def calculate_value(payload,value=nil)
    payload.each_pair do |k, v|
      if v.is_a? Hash
        value = calculate_value(v,value)
      else
        value = Calculator.send(k, v << value)
      end
    end
    value
  end
end
