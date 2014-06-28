require 'spec_helper'

describe "hotels/edit" do
  before(:each) do
    @hotel = assign(:hotel, stub_model(Hotel,
      :title => "MyString",
      :breakfast_included => false,
      :room_description => "MyText",
      :photo => "MyString",
      :price_for_room => 1,
      :address => "MyString"
    ))
  end

  it "renders the edit hotel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hotels_path(@hotel), :method => "post" do
      assert_select "input#hotel_title", :name => "hotel[title]"
      assert_select "input#hotel_breakfast_included", :name => "hotel[breakfast_included]"
      assert_select "textarea#hotel_room_description", :name => "hotel[room_description]"
      assert_select "input#hotel_photo", :name => "hotel[photo]"
      assert_select "input#hotel_price_for_room", :name => "hotel[price_for_room]"
      assert_select "input#hotel_address", :name => "hotel[address]"
    end
  end
end
