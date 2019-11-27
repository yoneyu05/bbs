require 'rails_helper'

RSpec.describe "delrequests/index", type: :view do
  before(:each) do
    assign(:delrequests, [
      Delrequest.create!(
        :address => "Address",
        :del_id => "Del",
        :reason => "MyText"
      ),
      Delrequest.create!(
        :address => "Address",
        :del_id => "Del",
        :reason => "MyText"
      )
    ])
  end

  it "renders a list of delrequests" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Del".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
