require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PasswordsController do

  def mock_password(stubs={})
    @mock_password ||= mock_model(Password, stubs)
  end
  
  describe "GET index" do
    it "assigns all passwords as @passwords" do
      Password.should_receive(:find).with(:all).and_return([mock_password])
      get :index
      assigns[:passwords].should == [mock_password]
    end
  end

  describe "GET show" do
    it "assigns the requested password as @password" do
      Password.should_receive(:find).with("37").and_return(mock_password)
      get :show, :id => "37"
      assigns[:password].should equal(mock_password)
    end
  end

  describe "GET new" do
    it "assigns a new password as @password" do
      Password.should_receive(:new).and_return(mock_password)
      get :new
      assigns[:password].should equal(mock_password)
    end
  end

  describe "GET edit" do
    it "assigns the requested password as @password" do
      Password.should_receive(:find).with("37").and_return(mock_password)
      get :edit, :id => "37"
      assigns[:password].should equal(mock_password)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created password as @password" do
        Password.should_receive(:new).with({'these' => 'params'}).and_return(mock_password(:save => true))
        post :create, :password => {:these => 'params'}
        assigns[:password].should equal(mock_password)
      end

      it "redirects to the created password" do
        Password.stub!(:new).and_return(mock_password(:save => true))
        post :create, :password => {}
        response.should redirect_to(password_url(mock_password))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved password as @password" do
        Password.stub!(:new).with({'these' => 'params'}).and_return(mock_password(:save => false))
        post :create, :password => {:these => 'params'}
        assigns[:password].should equal(mock_password)
      end

      it "re-renders the 'new' template" do
        Password.stub!(:new).and_return(mock_password(:save => false))
        post :create, :password => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT udpate" do
    
    describe "with valid params" do
      it "updates the requested password" do
        Password.should_receive(:find).with("37").and_return(mock_password)
        mock_password.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :password => {:these => 'params'}
      end

      it "assigns the requested password as @password" do
        Password.stub!(:find).and_return(mock_password(:update_attributes => true))
        put :update, :id => "1"
        assigns[:password].should equal(mock_password)
      end

      it "redirects to the password" do
        Password.stub!(:find).and_return(mock_password(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(password_url(mock_password))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested password" do
        Password.should_receive(:find).with("37").and_return(mock_password)
        mock_password.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :password => {:these => 'params'}
      end

      it "assigns the password as @password" do
        Password.stub!(:find).and_return(mock_password(:update_attributes => false))
        put :update, :id => "1"
        assigns[:password].should equal(mock_password)
      end

      it "re-renders the 'edit' template" do
        Password.stub!(:find).and_return(mock_password(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested password" do
      Password.should_receive(:find).with("37").and_return(mock_password)
      mock_password.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the passwords list" do
      Password.stub!(:find).and_return(mock_password(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(passwords_url)
    end
  end

end
