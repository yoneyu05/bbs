require 'rails_helper'

RSpec.describe "delrequests/show", type: :view do
  before(:each) do
    @delrequest = assign(:delrequest, Delrequest.create!(
      :address => "Address",
      :del_id => "Del",
      :reason => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Del/)
    expect(rendered).to match(/MyText/)
  end
end
