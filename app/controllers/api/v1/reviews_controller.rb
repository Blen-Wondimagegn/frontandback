module Api
  module V1
    class ReviewsController < ApiController
    
        def create
            diet = Review.new(review_params)
            if diet.save
              render json: ReviewSerializer.new(review).serialized_json
            else 
                render json: {error: review.errors.messages}, status: 422
            end 
        end 
        
         def destroy
            review = Review.find_by(id: params[:id])
            if review.destroy
                head: no_content
            else 
                 render json: {error: review.errors.messages}, status: 422
            end 
        end 

    private
      def review_params
        params.require(:review).permit(:title, :comment, :diet_id)
      end
      
       def options
        @options ||= { include: %i[reviews] }
        end
    end 
 end 
end 