require 'test_helper'

class Api::V1::ImagesControllerTest < ActionController::TestCase

   test "get index" do 
      get :index, format: :json
      assert_response :success
      assert_equal JSON.parse(@response.body).length, 0
   end

   test "get index with images" do 
      img = FactoryGirl.create(:image)
      get :index, format: :json
      assert_response :success
      assert_equal JSON.parse(@response.body)[0], JSON.parse(img.to_json) 
   end

   test "create image" do
      assert_difference 'Image.count', 1 do
      post :create, format: :json, image: FactoryGirl.attributes_for(:image)
      end
      assert_response :success
   end

   test "cannot create an image with bad arguments" do
      assert_no_difference 'Image.count' do
         post :create, format: :json, image: {url: ''}
      end
      assert_response 422 #unprocessable entry
   end

   test 'show image' do 
      image = FactoryGirl.create(:image)
      get :show, format: :json, id: image.id
      assert_equal JSON.parse(@response.body), JSON.parse(image.to_json)
      assert_response :success
   end

   test "update image" do 
      image = FactoryGirl.create(:image, title: "a title")
      put :update, format: :json, id: image.id, image: {title: "updated title"}
      image.reload
      assert_equal "updated title", image.title
   end

   test "update image with bad arguments" do 
      image = FactoryGirl.create(:image, title: "a title")
      put :update, format: :json, id: image.id, image: {url: ''}
      image.reload
      assert_equal "a title", image.title
      assert_response 422 #unprocessable entity
   end

   test "delete image" do
      image = FactoryGirl.create(:image)
      assert_difference "Image.count", -1 do
         delete :destroy, format: :json, id: image.id
      end
   end
end