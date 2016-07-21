require 'rails_helper'

RSpec.describe "other_stuffs/show", type: :view do
  before(:each) do
    @other_stuff = assign(:other_stuff, OtherStuff.create!(
      :my_junk => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
