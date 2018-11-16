class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: destroy

  def create
    # debugger
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to home_url
    else
      @feed_items = []
      render 'status_page/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to home_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture)
    end

    def correct_user
      @micropost = current_user.microposts.find_by_id(id: params[:id])
      redirect_to home_url if @micropost.nil?
    end
end
