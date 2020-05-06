class DynamicPageController < ApplicationController
  def welcome
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:user_entry]
    #@user = User.find(params[:user_entry])
    puts "$" * 60
  end
end
