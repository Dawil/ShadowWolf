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

describe ApplicationsController do

  # This should return the minimal set of attributes required to create a valid
  # Application. As you add validations to Application, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "date" => "2013-11-28" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ApplicationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all applications as @applications" do
      application = Application.create! valid_attributes
      get :index, {}, valid_session
      assigns(:applications).should eq([application])
    end
  end

  describe "GET show" do
    it "assigns the requested config_model as @config_model" do
      application = Application.create! valid_attributes
      get :show, {:id => application.to_param}, valid_session
      assigns(:config_model).should eq(application)
    end
  end

  describe "GET new" do
    it "assigns a new config_model as @config_model" do
      get :new, {}, valid_session
      assigns(:config_model).should be_a_new(Application)
    end
  end

  describe "GET edit" do
    it "assigns the requested config_model as @config_model" do
      application = Application.create! valid_attributes
      get :edit, {:id => application.to_param}, valid_session
      assigns(:config_model).should eq(application)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Application" do
        expect {
          post :create, {:config_model => valid_attributes}, valid_session
        }.to change(Application, :count).by(1)
      end

      it "assigns a newly created config_model as @config_model" do
        post :create, {:config_model => valid_attributes}, valid_session
        assigns(:config_model).should be_a(Application)
        assigns(:config_model).should be_persisted
      end

      it "redirects to the created config_model" do
        post :create, {:config_model => valid_attributes}, valid_session
        response.should redirect_to(Application.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved config_model as @config_model" do
        # Trigger the behavior that occurs when invalid params are submitted
        Application.any_instance.stub(:save).and_return(false)
        post :create, {:config_model => { "date" => "invalid value" }}, valid_session
        assigns(:config_model).should be_a_new(Application)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Application.any_instance.stub(:save).and_return(false)
        post :create, {:config_model => { "date" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested config_model" do
        application = Application.create! valid_attributes
        # Assuming there are no other applications in the database, this
        # specifies that the Application created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Application.any_instance.should_receive(:update).with({ "date" => "2013-11-28" })
        put :update, {:id => application.to_param, :config_model => { "date" => "2013-11-28" }}, valid_session
      end

      it "assigns the requested config_model as @config_model" do
        application = Application.create! valid_attributes
        put :update, {:id => application.to_param, :config_model => valid_attributes}, valid_session
        assigns(:config_model).should eq(application)
      end

      it "redirects to the config_model" do
        application = Application.create! valid_attributes
        put :update, {:id => application.to_param, :config_model => valid_attributes}, valid_session
        response.should redirect_to(application)
      end
    end

    describe "with invalid params" do
      it "assigns the config_model as @config_model" do
        application = Application.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Application.any_instance.stub(:save).and_return(false)
        put :update, {:id => application.to_param, :config_model => { "date" => "invalid value" }}, valid_session
        assigns(:config_model).should eq(application)
      end

      it "re-renders the 'edit' template" do
        application = Application.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Application.any_instance.stub(:save).and_return(false)
        put :update, {:id => application.to_param, :config_model => { "date" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested config_model" do
      application = Application.create! valid_attributes
      expect {
        delete :destroy, {:id => application.to_param}, valid_session
      }.to change(Application, :count).by(-1)
    end

    it "redirects to the applications list" do
      application = Application.create! valid_attributes
      delete :destroy, {:id => application.to_param}, valid_session
      response.should redirect_to(applications_url)
    end
  end

end
