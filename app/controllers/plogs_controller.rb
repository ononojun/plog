class PlogsController < ApplicationController
  
  before_action :move_to_index, except: :index
  
  def index
    @plogs = Blog.all
  end 

 def create
  Blog.create(name: plog_params[:name], image:plog_params[:image], text: plog_params[:text], user_id: current_user.id )
 end
 
 def destroy
   plog = Blog.find(params[:id])
   plog.destroy if plog.user_id ==current_user.id
 end
 
 def update
   plog = Blog.find(params[:id])
   plog.update(plog_params) if plog.user_id ==current_user.id
 end
 
 def edit
   @plog = Blog.find(params[:id])
 end

  private
  def plog_params
     params.permit(:name,:image,:text)
  end
  
 def new 
 end
 
 def move_to_index
   redirect_to action: :index unless user_signed_in?
 end
end
