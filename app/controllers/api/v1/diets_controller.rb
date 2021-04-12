module Api
  module V1
    class DietsController < ApiController
        def index
            diets = Diet.all
            render json: DietSerializer.new(diets, options).serialized_json
         end 
       
        def show
            diet = Diet.find_by(id: params[:id])
            render json: DietSerializer.new(diet, options).serialized_json
        end 
    
    
        def create
            diet = Diet.new(diet_params)
            if diet.save
              render json: DietSerializer.new(diet).serialized_json
            else 
                render json: {error: diet.errors.messages}, status: 422
            end 
        end 

         def update
            diet = Diet.find_by(id: params[:id])

            if diet.update(diet_params)
              render json: DietSerializer.new(diet, options).serialized_json
            else 
                render json: {error: diet.errors.messages}, status: 422
            end 
        end 


        # def destroy
        #     diet = Diet.find_by(id: params[:id])
        #     if diet.destroy
        #         head: no_content
        #     else 
        #          render json: {error: diet.errors.messages}, status: 422
        #     end 

        # end 

        private
        def diet_params
            params.require(:diet).permit(:name, :gender, :height, :age, :diet_type, :start_weight, :lost_weight, :duration)
            
        end 

        def options
        @options ||= { include: %i[reviews] }
        end
    
    end 

  end 
end 
