class SessionsController < ApplicationController
def new
end

def create
    #check if the user exist
    @user= User.find_by ({"email" => params["emails"]})
   
if @user
 #if they do, check that they know their paswords
    if params ["password"]==@user ["password"]
    #if they do send them to company page
    redirect_to "/companies"
    else 
    redirect_to "/session/new"   
    end
else 
    redirect_to "/session/new"  
end
end 
