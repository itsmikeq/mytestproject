require 'rails_helper'

RSpec.describe "other_stuffs/edit", type: :view do
  before(:each) do
    @other_stuff = assign(:other_stuff, OtherStuff.create!(
      :my_junk => "MyText"
    ))
  end

  it "renders the edit other_stuff form" do
    render

    assert_select "form[action=?][method=?]", other_stuff_path(@other_stuff), "post" do

      assert_select "textarea#other_stuff_my_junk[name=?]", "other_stuff[my_junk]"
    end
  end
end
