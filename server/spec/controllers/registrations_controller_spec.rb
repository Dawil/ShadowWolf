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

describe RegistrationsController do

  # This should return the minimal set of attributes required to create a valid
  # Registration. As you add validations to Registration, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "organisation" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RegistrationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all registrations as @registrations" do
      registration = Registration.create! valid_attributes
      get :index, {}, valid_session
      assigns(:registrations).should eq([registration])
    end
  end

  describe "GET show" do
    it "assigns the requested registration as @registration" do
      registration = Registration.create! valid_attributes
      get :show, {:id => registration.to_param}, valid_session
      assigns(:registration).should eq(registration)
    end
  end

  describe "GET new" do
    it "assigns a new registration as @registration" do
      get :new, {}, valid_session
      assigns(:registration).should be_a_new(Registration)
    end
  end

  describe "GET edit" do
    it "assigns the requested registration as @registration" do
      registration = Registration.create! valid_attributes
      get :edit, {:id => registration.to_param}, valid_session
      assigns(:registration).should eq(registration)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Registration" do
        expect {
          post :create, {:registration => valid_attributes}, valid_session
        }.to change(Registration, :count).by(1)
      end

      it "assigns a newly created registration as @registration" do
        post :create, {:registration => valid_attributes}, valid_session
        assigns(:registration).should be_a(Registration)
        assigns(:registration).should be_persisted
      end

      it "redirects to the created registration" do
        post :create, {:registration => valid_attributes}, valid_session
        response.should redirect_to(Registration.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved registration as @registration" do
        # Trigger the behavior that occurs when invalid params are submitted
        Registration.any_instance.stub(:save).and_return(false)
        post :create, {:registration => { "organisation" => "invalid value" }}, valid_session
        assigns(:registration).should be_a_new(Registration)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Registration.any_instance.stub(:save).and_return(false)
        post :create, {:registration => { "organisation" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested registration" do
        registration = Registration.create! valid_attributes
        # Assuming there are no other registrations in the database, this
        # specifies that the Registration created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Registration.any_instance.should_receive(:update).with({ "organisation" => "MyString" })
        put :update, {:id => registration.to_param, :registration => { "organisation" => "MyString" }}, valid_session
      end

      it "assigns the requested registration as @registration" do
        registration = Registration.create! valid_attributes
        put :update, {:id => registration.to_param, :registration => valid_attributes}, valid_session
        assigns(:registration).should eq(registration)
      end

      it "redirects to the registration" do
        registration = Registration.create! valid_attributes
        put :update, {:id => registration.to_param, :registration => valid_attributes}, valid_session
        response.should redirect_to(registration)
      end
    end

    describe "with invalid params" do
      it "assigns the registration as @registration" do
        registration = Registration.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Registration.any_instance.stub(:save).and_return(false)
        put :update, {:id => registration.to_param, :registration => { "organisation" => "invalid value" }}, valid_session
        assigns(:registration).should eq(registration)
      end

      it "re-renders the 'edit' template" do
        registration = Registration.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Registration.any_instance.stub(:save).and_return(false)
        put :update, {:id => registration.to_param, :registration => { "organisation" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested registration" do
      registration = Registration.create! valid_attributes
      expect {
        delete :destroy, {:id => registration.to_param}, valid_session
      }.to change(Registration, :count).by(-1)
    end

    it "redirects to the registrations list" do
      registration = Registration.create! valid_attributes
      delete :destroy, {:id => registration.to_param}, valid_session
      response.should redirect_to(registrations_url)
    end
  end

end
