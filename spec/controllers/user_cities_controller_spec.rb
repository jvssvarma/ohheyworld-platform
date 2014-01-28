require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UserCitiesController do

  # This should return the minimal set of attributes required to create a valid
  # UserCity. As you add validations to UserCity, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "user_id" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserCitiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all user_cities as @user_cities" do
      user_city = UserCity.create! valid_attributes
      get :index, {}, valid_session
      assigns(:user_cities).should eq([user_city])
    end
  end

  describe "GET show" do
    it "assigns the requested user_city as @user_city" do
      user_city = UserCity.create! valid_attributes
      get :show, {:id => user_city.to_param}, valid_session
      assigns(:user_city).should eq(user_city)
    end
  end

  describe "GET new" do
    it "assigns a new user_city as @user_city" do
      get :new, {}, valid_session
      assigns(:user_city).should be_a_new(UserCity)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_city as @user_city" do
      user_city = UserCity.create! valid_attributes
      get :edit, {:id => user_city.to_param}, valid_session
      assigns(:user_city).should eq(user_city)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserCity" do
        expect {
          post :create, {:user_city => valid_attributes}, valid_session
        }.to change(UserCity, :count).by(1)
      end

      it "assigns a newly created user_city as @user_city" do
        post :create, {:user_city => valid_attributes}, valid_session
        assigns(:user_city).should be_a(UserCity)
        assigns(:user_city).should be_persisted
      end

      it "redirects to the created user_city" do
        post :create, {:user_city => valid_attributes}, valid_session
        response.should redirect_to(UserCity.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_city as @user_city" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserCity.any_instance.stub(:save).and_return(false)
        post :create, {:user_city => { "user_id" => "invalid value" }}, valid_session
        assigns(:user_city).should be_a_new(UserCity)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserCity.any_instance.stub(:save).and_return(false)
        post :create, {:user_city => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_city" do
        user_city = UserCity.create! valid_attributes
        # Assuming there are no other user_cities in the database, this
        # specifies that the UserCity created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UserCity.any_instance.should_receive(:update_attributes).with({ "user_id" => "1" })
        put :update, {:id => user_city.to_param, :user_city => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested user_city as @user_city" do
        user_city = UserCity.create! valid_attributes
        put :update, {:id => user_city.to_param, :user_city => valid_attributes}, valid_session
        assigns(:user_city).should eq(user_city)
      end

      it "redirects to the user_city" do
        user_city = UserCity.create! valid_attributes
        put :update, {:id => user_city.to_param, :user_city => valid_attributes}, valid_session
        response.should redirect_to(user_city)
      end
    end

    describe "with invalid params" do
      it "assigns the user_city as @user_city" do
        user_city = UserCity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserCity.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_city.to_param, :user_city => { "user_id" => "invalid value" }}, valid_session
        assigns(:user_city).should eq(user_city)
      end

      it "re-renders the 'edit' template" do
        user_city = UserCity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserCity.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_city.to_param, :user_city => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_city" do
      user_city = UserCity.create! valid_attributes
      expect {
        delete :destroy, {:id => user_city.to_param}, valid_session
      }.to change(UserCity, :count).by(-1)
    end

    it "redirects to the user_cities list" do
      user_city = UserCity.create! valid_attributes
      delete :destroy, {:id => user_city.to_param}, valid_session
      response.should redirect_to(user_cities_url)
    end
  end

end