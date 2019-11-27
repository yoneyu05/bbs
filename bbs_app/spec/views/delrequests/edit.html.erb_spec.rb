require 'rails_helper'

RSpec.describe "delrequests/edit", type: :view do
  before(:each) do
    @delrequest = assign(:delrequest, Delrequest.create!(
      :address => "MyString",
      :del_id => "MyString",
      :reason => "MyText"
    ))
  end

  it "renders the edit delrequest form" do
    render

    assert_select "form[action=?][method=?]", delrequest_path(@delrequest), "post" do

      assert_select "input[name=?]", "delrequest[address]"

      assert_select "input[name=?]", "delrequest[del_id]"

      assert_select "textarea[name=?]", "delrequest[reason]"
    end
  end
end
