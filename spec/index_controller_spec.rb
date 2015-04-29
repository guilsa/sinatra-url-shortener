require 'spec_helper'

describe "index_controller" do
  it "does something" do
    get '/'
    expect(last_response.status).to eq 200
    expect(last_response.content_type).to eq "text/plain;charset=utf=8"
    expect(last_response.body).to eq ''
  end
end
