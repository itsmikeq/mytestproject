require 'rails_helper'

RSpec.describe "other_stuffs/index", type: :view do
  before(:each) do
    assign(:other_stuffs, [
      OtherStuff.create!(
        :my_junk => "MyText"
      ),
      OtherStuff.create!(
        :my_junk => "MyText"
      )
    ])
  end

  it "renders a list of other_stuffs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
