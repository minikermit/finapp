require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PasswordsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "passwords", :action => "index").should == "/passwords"
    end
  
    it "maps #new" do
      route_for(:controller => "passwords", :action => "new").should == "/passwords/new"
    end
  
    it "maps #show" do
      route_for(:controller => "passwords", :action => "show", :id => "1").should == "/passwords/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "passwords", :action => "edit", :id => "1").should == "/passwords/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "passwords", :action => "create").should == {:path => "/passwords", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "passwords", :action => "update", :id => "1").should == {:path =>"/passwords/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "passwords", :action => "destroy", :id => "1").should == {:path =>"/passwords/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/passwords").should == {:controller => "passwords", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/passwords/new").should == {:controller => "passwords", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/passwords").should == {:controller => "passwords", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/passwords/1").should == {:controller => "passwords", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/passwords/1/edit").should == {:controller => "passwords", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/passwords/1").should == {:controller => "passwords", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/passwords/1").should == {:controller => "passwords", :action => "destroy", :id => "1"}
    end
  end
end
