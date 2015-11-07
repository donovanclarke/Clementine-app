require 'rails_helper'

describe Product do

  context "When the product has comments" do

    before do
      @product = build(:product)
      @user = build(:user)
      comment = create(:comment, product: @product)
      comment2 = create(:comment, rating: 3, product: @product, user: @user)
      comment3 = create(:comment, rating: 5, product: @product, user: @user)
    end

    it "Returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  context "product with description but no name" do

    before do
      @product = build(:product, name: "")
    end

    it "will not pass validation without a name" do
      expect(@product).not_to be_valid
    end
  end
end
