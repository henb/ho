require 'spec_helper'

describe HotelsController do

  # This should return the minimal set of attributes required to create a valid
  # Hotel. As you add validations to Hotel, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HotelsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  # describe "GET index" do
  #   it "assigns all hotels as @hotels" do
  #     hotel = Hotel.create! valid_attributes
  #     get :index, {}, valid_session
  #     assigns(:hotels).should eq([hotel])
  #   end
  # end

  # describe "GET show" do
  #   it "assigns the requested hotel as @hotel" do
  #     hotel = Hotel.create! valid_attributes
  #     get :show, {:id => hotel.to_param}, valid_session
  #     assigns(:hotel).should eq(hotel)
  #   end
  # end

  # describe "GET new" do
  #   it "assigns a new hotel as @hotel" do
  #     get :new, {}, valid_session
  #     assigns(:hotel).should be_a_new(Hotel)
  #   end
  # end

  # describe "GET edit" do
  #   it "assigns the requested hotel as @hotel" do
  #     hotel = Hotel.create! valid_attributes
  #     get :edit, {:id => hotel.to_param}, valid_session
  #     assigns(:hotel).should eq(hotel)
  #   end
  # end

  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Hotel" do
  #       expect {
  #         post :create, {:hotel => valid_attributes}, valid_session
  #       }.to change(Hotel, :count).by(1)
  #     end

  #     it "assigns a newly created hotel as @hotel" do
  #       post :create, {:hotel => valid_attributes}, valid_session
  #       assigns(:hotel).should be_a(Hotel)
  #       assigns(:hotel).should be_persisted
  #     end

  #     it "redirects to the created hotel" do
  #       post :create, {:hotel => valid_attributes}, valid_session
  #       response.should redirect_to(Hotel.last)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved hotel as @hotel" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Hotel.any_instance.stub(:save).and_return(false)
  #       post :create, {:hotel => {}}, valid_session
  #       assigns(:hotel).should be_a_new(Hotel)
  #     end

  #     it "re-renders the 'new' template" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Hotel.any_instance.stub(:save).and_return(false)
  #       post :create, {:hotel => {}}, valid_session
  #       response.should render_template("new")
  #     end
  #   end
  # end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested hotel" do
  #       hotel = Hotel.create! valid_attributes
  #       # Assuming there are no other hotels in the database, this
  #       # specifies that the Hotel created on the previous line
  #       # receives the :update_attributes message with whatever params are
  #       # submitted in the request.
  #       Hotel.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
  #       put :update, {:id => hotel.to_param, :hotel => {'these' => 'params'}}, valid_session
  #     end

  #     it "assigns the requested hotel as @hotel" do
  #       hotel = Hotel.create! valid_attributes
  #       put :update, {:id => hotel.to_param, :hotel => valid_attributes}, valid_session
  #       assigns(:hotel).should eq(hotel)
  #     end

  #     it "redirects to the hotel" do
  #       hotel = Hotel.create! valid_attributes
  #       put :update, {:id => hotel.to_param, :hotel => valid_attributes}, valid_session
  #       response.should redirect_to(hotel)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns the hotel as @hotel" do
  #       hotel = Hotel.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Hotel.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => hotel.to_param, :hotel => {}}, valid_session
  #       assigns(:hotel).should eq(hotel)
  #     end

  #     it "re-renders the 'edit' template" do
  #       hotel = Hotel.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Hotel.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => hotel.to_param, :hotel => {}}, valid_session
  #       response.should render_template("edit")
  #     end
  #   end
  # end

  # describe "DELETE destroy" do
  #   it "destroys the requested hotel" do
  #     hotel = Hotel.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => hotel.to_param}, valid_session
  #     }.to change(Hotel, :count).by(-1)
  #   end

  #   it "redirects to the hotels list" do
  #     hotel = Hotel.create! valid_attributes
  #     delete :destroy, {:id => hotel.to_param}, valid_session
  #     response.should redirect_to(hotels_url)
  #   end
  # end

end
