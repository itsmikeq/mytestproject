require 'rails_helper'

RSpec.describe "other_stuffs/new", type: :view do
  before(:each) do
    assign(:other_stuff, OtherStuff.new(
      :my_junk => "MyText"
    ))
  end

  it "renders new other_stuff form" do
    render

    assert_select "form[action=?][method=?]", other_stuffs_path, "post" do

      assert_select "textarea#other_stuff_my_junk[name=?]", "other_stuff[my_junk]"
    end
  end
end
