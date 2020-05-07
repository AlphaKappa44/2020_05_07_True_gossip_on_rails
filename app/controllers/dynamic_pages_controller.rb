class DynamicPagesController < ApplicationController
  def welcome
    puts "$" * 60
    puts "Voici le message de l'URL :"
    @user_entry = params[:user_entry]
    #@user = User.find(params[:user_entry])
    puts "$" * 60
  end
end
