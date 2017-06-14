class ThoughtsController < ApplicationController
    before_filter :thought_categories

    def index
        if params[:category].present?
            @thoughts = ThoughtCategory.find_by_name(params[:category]).thoughts
        else
            @thoughts = Thought.all
        end
    end

    def show
        @thought = Thought.find(params[:id])
    end

    private

    def thought_params
        params.require(:thought).permit(:id, :title, :body, :category)
    end

    def thought_categories
        @thought_categories = ThoughtCategory.all
    end
end
