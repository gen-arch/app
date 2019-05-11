# spec/app_spec.rb
require_relative '../spec_helper'

def app() App end
describe "My Sinatra Application" do
  it "should allow accessing the home page" do
    get '/'
    expect(last_response).to be_ok
  end
end
