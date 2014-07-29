class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_filter :load_picture
  before_filter :ensure_logged_in

  def index
     @reviews = Review.all
  end

  def show
  end

  def new
    @picture = Post.find(params[:picture_id])
    @review = @picture.reviews.build(review_params)
  end


  def create
  	@review = @picture.reviews.build(review_params)
  	@review.user_id = current_user.id

    respond_to do |format|
    	if @review.save
    		format.html {redirect_to picture_path(@picture), notice: "Thank you for your review"}
   	    format.js  
      else
   		  format.html { render 'pictures/show', alert: 'Error'}   
    	  format.js
      end
    end
  end

  def destroy
  	@review = Review.find(params[:id])
  	@review.destroy
  	redirect_to pictures_path
  end



  def load_picture
  	@picture = Picture.find(params[:picture_id])
  end

  private

  def set_review
      @review = Review.find(params[:id])
  end


  def review_params
  	params.require(:review).permit(:comment, :picture_id, :user_id)
  end

end
