class HomesController < ApplicationController

  def hello
    #je récupère la variable name qui a été rootée
    @name = params[:name]#.inspect

  end

  def gossips_list
    
  end


end