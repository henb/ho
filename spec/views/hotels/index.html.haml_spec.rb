require 'spec_helper'

describe "hotels/index" do
  before(:each) do
    assign(:hotels, [
      stub_model(Hotel,
        :title => "Title",
        :breakfast_included => false,
        :room_description => "MyText",
        :photo => "Photo",
        :price_for_room => 1,
        :address => "Address"
      ),
      stub_model(Hotel,
        :title => "Title",
        :breakfast_included => false,
        :room_description => "MyText",
        :photo => "Photo",
        :price_for_room => 1,
        :address => "Address"
      )
    ])
  end

  it "renders a list of hotels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
