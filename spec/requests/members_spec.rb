require 'spec_helper'
require 'rails_helper'

describe NineBeikeAPI do
  include Rack::Test::Methods

  def app
    NineBeikeAPI
  end

  describe "members" do
	  it "vericode" do
	    post "/api/members/vericode"
	    puts last_response.body
	    #expect(last_response.status).to eq(200)
	    json = JSON.parse(last_response.body)
	    expect(json['code']).to eq 0
	  end
  end
end