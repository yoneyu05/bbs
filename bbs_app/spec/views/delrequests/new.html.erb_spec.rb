require 'rails_helper'

RSpec.describe "delrequests/new", type: :view do
  before(:each) do
    assign(:delrequest, Delrequest.new(
      :address => "MyString",
      :del_id => "MyString",
      :reason => "MyText"
    ))
  end

  it "renders new delrequest form" do
    render

    assert_select "form[action=?][method=?]", delrequests_path, "post" do

      assert_select "input[name=?]", "delrequest[address]"

      assert_select "input[name=?]", "delrequest[del_id]"

      assert_select "textarea[name=?]", "delrequest[reason]"
    end
  end
end
