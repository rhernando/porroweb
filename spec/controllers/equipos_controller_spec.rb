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

describe EquiposController do

  # This should return the minimal set of attributes required to create a valid
  # Equipo. As you add validations to Equipo, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all equiposes as @equiposes" do
      equipo = Equipo.create! valid_attributes
      get :index
      assigns(:equipos).should eq([equipo])
    end
  end

  describe "GET show" do
    it "assigns the requested equipo as @equipo" do
      equipo = Equipo.create! valid_attributes
      get :show, :id => equipo.id.to_s
      assigns(:equipo).should eq(equipo)
    end
  end

  describe "GET new" do
    it "assigns a new equipo as @equipo" do
      get :new
      assigns(:equipo).should be_a_new(Equipo)
    end
  end

  describe "GET edit" do
    it "assigns the requested equipo as @equipo" do
      equipo = Equipo.create! valid_attributes
      get :edit, :id => equipo.id.to_s
      assigns(:equipo).should eq(equipo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Equipo" do
        expect {
          post :create, :equipo => valid_attributes
        }.to change(Equipo, :count).by(1)
      end

      it "assigns a newly created equipo as @equipo" do
        post :create, :equipo => valid_attributes
        assigns(:equipo).should be_a(Equipo)
        assigns(:equipo).should be_persisted
      end

      it "redirects to the created equipo" do
        post :create, :equipo => valid_attributes
        response.should redirect_to(Equipo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved equipo as @equipo" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipo.any_instance.stub(:save).and_return(false)
        post :create, :equipo => {}
        assigns(:equipo).should be_a_new(Equipo)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipo.any_instance.stub(:save).and_return(false)
        post :create, :equipo => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested equipo" do
        equipo = Equipo.create! valid_attributes
        # Assuming there are no other equipos in the database, this
        # specifies that the Equipo created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Equipo.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => equipo.id, :equipo => {'these' => 'params'}
      end

      it "assigns the requested equipo as @equipo" do
        equipo = Equipo.create! valid_attributes
        put :update, :id => equipo.id, :equipo => valid_attributes
        assigns(:equipo).should eq(equipo)
      end

      it "redirects to the equipo" do
        equipo = Equipo.create! valid_attributes
        put :update, :id => equipo.id, :equipo => valid_attributes
        response.should redirect_to(equipo)
      end
    end

    describe "with invalid params" do
      it "assigns the equipo as @equipo" do
        equipo = Equipo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipo.any_instance.stub(:save).and_return(false)
        put :update, :id => equipo.id.to_s, :equipo => {}
        assigns(:equipo).should eq(equipo)
      end

      it "re-renders the 'edit' template" do
        equipo = Equipo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipo.any_instance.stub(:save).and_return(false)
        put :update, :id => equipo.id.to_s, :equipo => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested equipo" do
      equipo = Equipo.create! valid_attributes
      expect {
        delete :destroy, :id => equipo.id.to_s
      }.to change(Equipo, :count).by(-1)
    end

    it "redirects to the equipos list" do
      equipo = Equipo.create! valid_attributes
      delete :destroy, :id => equipo.id.to_s
      response.should redirect_to(equipos_url)
    end
  end

end