class SpotsController < ApplicationController

  get "/spots" do
    @spots = Spot.all
    erb :"/spots/index"
  end

  get "/spots/new" do
    erb :"/spots/new.html"
  end

  post "/spots" do
    redirect "/spots"
  end

  get "/spots/:id" do
    @spot = Spot.find_by(id: params[:id])
    erb :"/spots/show"
  end

  get "/spots/:id/edit" do
    @users = User.all
    @spot = Spot.find_by(id: params[:id])
    erb :"/spots/edit"
  end

  patch "/spots/:id" do
    spot = Spot.find_by(id: params[:id])
    user = User.find_by(id: params[:user])
    spot.user = user
    user.spots << spot
    redirect "/users/#{user.id}"
  end

  # # DELETE: /spots/5/delete
  # delete "/spots/:id/delete" do
  #   redirect "/spots"
  # end

end
