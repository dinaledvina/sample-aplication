require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    
     @base_title = 'Ruby on Rails Tutorial Sample App'
    
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content =>  @base_title + " | Home")
    end

    it "should have the right content" do
      get 'home'
      response.should have_selector("p",
                        :content => "This is the home page for the")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
     get 'contact'
     response.should have_selector("title",
                       :content =>  @base_title + " | Contact")
    end

    it "should have the right content" do
      get 'contact'
      response.should have_selector("p",
                        :content => "This is the contact page for the")
    end

  end
  describe "GET 'about'" do
    it "should be_succsessful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
     get 'about'
     response.should have_selector("title",
                       :content =>  @base_title + " | About")
    end

    it "should have the right content" do
      get 'about'
      response.should have_selector("p",
                        :content => "This is the about page for the")
    end
    end

    describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                        :content => @base_title + " | Help")
    end
    
    it "should have the right content" do
      get 'help'
      response.should have_selector("p",
                        :content => "Get help on Ruby on Rails Tutorial at the")
    end


describe "GET 'about'" do
    it "should be_succsessful" do
      get 'about'
      response.should be_success
    end

    it "should have the right header" do
     get 'about'
     response.should have_selector("h1",
                       :content =>  "About Us")
    
    end
end

                         
   
  end
end
