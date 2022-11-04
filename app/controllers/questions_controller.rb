class QuestionsController < ApplicationController
    def index
        render json: Question.all, status: :ok
    end

    def show
        question = find_question
        render json: question, status: :ok
    end

    def update
        question = find_question
        question.update!(question_params)
        render json: question, status: :ok
    end

    def create
        question = Question.create!(question_params)
        render json: question, status: :created
    end

    def destroy
        question = find_question
        question.destroy
        head :no_content
    end

    private

    def find_question
        Question.find_by(id: params[:id])
    end

    def question_params
        params.permit(:description)
    end
end
