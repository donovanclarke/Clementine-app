require 'rails_helper'

describe Product do

  context "When the product has comments" do

    before do
      @product = Product.create(:name => "Clementine race kit")
      @user = User.create(:email => "test@test.com", :password => "testpassword")
      @product.comments.create(:rating => 1, :user => @user, :body => "Cheap Material!")
      @product.comments.create(:rating => 3, :user => @user, :body => "Looks good, doesnt fit well")
      @product.comments.create(:rating => 5, :user => @user, :body => "Excellent!!!")
    end

    it "Returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  context "product with description but no name" do

    before do
      @product = Product.create(:name => nil, :description => "race bike")
    end

    it "will not pass validation without a name" do
      expect(@product).not_to be_valid
    end
  end
end
