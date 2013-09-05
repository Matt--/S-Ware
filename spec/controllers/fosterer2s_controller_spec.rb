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

describe Fosterer2sController do

  # This should return the minimal set of attributes required to create a valid
  # Fosterer2. As you add validations to Fosterer2, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Fosterer2sController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fosterer2s as @fosterer2s" do
      fosterer2 = Fosterer2.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fosterer2s).should eq([fosterer2])
    end
  end

  describe "GET show" do
    it "assigns the requested fosterer2 as @fosterer2" do
      fosterer2 = Fosterer2.create! valid_attributes
      get :show, {:id => fosterer2.to_param}, valid_session
      assigns(:fosterer2).should eq(fosterer2)
    end
  end

  describe "GET new" do
    it "assigns a new fosterer2 as @fosterer2" do
      get :new, {}, valid_session
      assigns(:fosterer2).should be_a_new(Fosterer2)
    end
  end

  describe "GET edit" do
    it "assigns the requested fosterer2 as @fosterer2" do
      fosterer2 = Fosterer2.create! valid_attributes
      get :edit, {:id => fosterer2.to_param}, valid_session
      assigns(:fosterer2).should eq(fosterer2)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Fosterer2" do
        expect {
          post :create, {:fosterer2 => valid_attributes}, valid_session
        }.to change(Fosterer2, :count).by(1)
      end

      it "assigns a newly created fosterer2 as @fosterer2" do
        post :create, {:fosterer2 => valid_attributes}, valid_session
        assigns(:fosterer2).should be_a(Fosterer2)
        assigns(:fosterer2).should be_persisted
      end

      it "redirects to the created fosterer2" do
        post :create, {:fosterer2 => valid_attributes}, valid_session
        response.should redirect_to(Fosterer2.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fosterer2 as @fosterer2" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fosterer2.any_instance.stub(:save).and_return(false)
        post :create, {:fosterer2 => { "name" => "invalid value" }}, valid_session
        assigns(:fosterer2).should be_a_new(Fosterer2)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fosterer2.any_instance.stub(:save).and_return(false)
        post :create, {:fosterer2 => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fosterer2" do
        fosterer2 = Fosterer2.create! valid_attributes
        # Assuming there are no other fosterer2s in the database, this
        # specifies that the Fosterer2 created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Fosterer2.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => fosterer2.to_param, :fosterer2 => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested fosterer2 as @fosterer2" do
        fosterer2 = Fosterer2.create! valid_attributes
        put :update, {:id => fosterer2.to_param, :fosterer2 => valid_attributes}, valid_session
        assigns(:fosterer2).should eq(fosterer2)
      end

      it "redirects to the fosterer2" do
        fosterer2 = Fosterer2.create! valid_attributes
        put :update, {:id => fosterer2.to_param, :fosterer2 => valid_attributes}, valid_session
        response.should redirect_to(fosterer2)
      end
    end

    describe "with invalid params" do
      it "assigns the fosterer2 as @fosterer2" do
        fosterer2 = Fosterer2.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fosterer2.any_instance.stub(:save).and_return(false)
        put :update, {:id => fosterer2.to_param, :fosterer2 => { "name" => "invalid value" }}, valid_session
        assigns(:fosterer2).should eq(fosterer2)
      end

      it "re-renders the 'edit' template" do
        fosterer2 = Fosterer2.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fosterer2.any_instance.stub(:save).and_return(false)
        put :update, {:id => fosterer2.to_param, :fosterer2 => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fosterer2" do
      fosterer2 = Fosterer2.create! valid_attributes
      expect {
        delete :destroy, {:id => fosterer2.to_param}, valid_session
      }.to change(Fosterer2, :count).by(-1)
    end

    it "redirects to the fosterer2s list" do
      fosterer2 = Fosterer2.create! valid_attributes
      delete :destroy, {:id => fosterer2.to_param}, valid_session
      response.should redirect_to(fosterer2s_url)
    end
  end

end
