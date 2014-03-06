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

describe QualityAssurancesController do

  # This should return the minimal set of attributes required to create a valid
  # QualityAssurance. As you add validations to QualityAssurance, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "notes" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QualityAssurancesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all quality_assurances as @quality_assurances" do
      quality_assurance = QualityAssurance.create! valid_attributes
      get :index, {}, valid_session
      assigns(:quality_assurances).should eq([quality_assurance])
    end
  end

  describe "GET show" do
    it "assigns the requested config_project as @config_project" do
      quality_assurance = QualityAssurance.create! valid_attributes
      get :show, {:id => quality_assurance.to_param}, valid_session
      assigns(:config_project).should eq(quality_assurance)
    end
  end

  describe "GET new" do
    it "assigns a new config_project as @config_project" do
      get :new, {}, valid_session
      assigns(:config_project).should be_a_new(QualityAssurance)
    end
  end

  describe "GET edit" do
    it "assigns the requested config_project as @config_project" do
      quality_assurance = QualityAssurance.create! valid_attributes
      get :edit, {:id => quality_assurance.to_param}, valid_session
      assigns(:config_project).should eq(quality_assurance)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new QualityAssurance" do
        expect {
          post :create, {:config_project => valid_attributes}, valid_session
        }.to change(QualityAssurance, :count).by(1)
      end

      it "assigns a newly created config_project as @config_project" do
        post :create, {:config_project => valid_attributes}, valid_session
        assigns(:config_project).should be_a(QualityAssurance)
        assigns(:config_project).should be_persisted
      end

      it "redirects to the created config_project" do
        post :create, {:config_project => valid_attributes}, valid_session
        response.should redirect_to(QualityAssurance.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved config_project as @config_project" do
        # Trigger the behavior that occurs when invalid params are submitted
        QualityAssurance.any_instance.stub(:save).and_return(false)
        post :create, {:config_project => { "notes" => "invalid value" }}, valid_session
        assigns(:config_project).should be_a_new(QualityAssurance)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        QualityAssurance.any_instance.stub(:save).and_return(false)
        post :create, {:config_project => { "notes" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested config_project" do
        quality_assurance = QualityAssurance.create! valid_attributes
        # Assuming there are no other quality_assurances in the database, this
        # specifies that the QualityAssurance created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        QualityAssurance.any_instance.should_receive(:update).with({ "notes" => "MyText" })
        put :update, {:id => quality_assurance.to_param, :config_project => { "notes" => "MyText" }}, valid_session
      end

      it "assigns the requested config_project as @config_project" do
        quality_assurance = QualityAssurance.create! valid_attributes
        put :update, {:id => quality_assurance.to_param, :config_project => valid_attributes}, valid_session
        assigns(:config_project).should eq(quality_assurance)
      end

      it "redirects to the config_project" do
        quality_assurance = QualityAssurance.create! valid_attributes
        put :update, {:id => quality_assurance.to_param, :config_project => valid_attributes}, valid_session
        response.should redirect_to(quality_assurance)
      end
    end

    describe "with invalid params" do
      it "assigns the config_project as @config_project" do
        quality_assurance = QualityAssurance.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        QualityAssurance.any_instance.stub(:save).and_return(false)
        put :update, {:id => quality_assurance.to_param, :config_project => { "notes" => "invalid value" }}, valid_session
        assigns(:config_project).should eq(quality_assurance)
      end

      it "re-renders the 'edit' template" do
        quality_assurance = QualityAssurance.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        QualityAssurance.any_instance.stub(:save).and_return(false)
        put :update, {:id => quality_assurance.to_param, :config_project => { "notes" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested config_project" do
      quality_assurance = QualityAssurance.create! valid_attributes
      expect {
        delete :destroy, {:id => quality_assurance.to_param}, valid_session
      }.to change(QualityAssurance, :count).by(-1)
    end

    it "redirects to the quality_assurances list" do
      quality_assurance = QualityAssurance.create! valid_attributes
      delete :destroy, {:id => quality_assurance.to_param}, valid_session
      response.should redirect_to(quality_assurances_url)
    end
  end

end
