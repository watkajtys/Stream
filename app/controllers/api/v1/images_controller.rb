class Api::V1::ImagesController < ApplicationController
   respond_to :json

   def index
      @images = Image.all
      respond_with @images
   end

   def show
      @image = Image.find(params[:id])
      respond_with @image
   end

   def create
      @image = Image.create(params[:image])
      respond_with @image, location: "/"
   end

   def update
      @image = Image.find(params[:id])
      @image.update_attributes(params[:image])
      respond_with @image
   end

   def destroy
      @image = Image.find(params[:id])
      @image.destroy
      respond_with @image
   end
end