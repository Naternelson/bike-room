class BikesController < ApplicationController

  # GET: /bikes
  get "/bikes" do
    @bikes = Bike.all
    erb :"/bikes/index"
  end

  # GET: /bikes/new
  get "/bikes/new" do
    erb :"/bikes/new"
  end

  # POST: /bikes
  post "/bikes" do
    @user = User.find_by(id: session[:user_id])
    new_bike = Bike.create(model: params[:bike][:model], description: params[:bike][:description], user_id: @user.id)
    redirect "/users/#{@user.id}"
  end

  # GET: /bikes/5 THIS IS NOT DONE
  get "/bikes/:id" do
    erb :"/bikes/show"
  end

  # GET: /bikes/5/edit THIS IS NOT DONE
  get "/bikes/:id/edit" do
    erb :"/bikes/edit"
  end

  # PATCH: /bikes/5 THIS IS NOT DONE
  patch "/bikes/:id" do
    redirect "/bikes/:id"
  end

  # DELETE: /bikes/5/delete THIS IS NOT DONE
  delete "/bikes/:id/delete" do
    redirect "/bikes"
  end
end
