require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        title: "Title"
      ),
      Card.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
