class AnswersController < ApplicationController
    def index
        render json: Answer.all, status: :ok
    end

    def show
        answer = find_answer
        render json: answer, status: :ok
    end

    def update
        answer = find_answer
        answer.update!(answer_params)
        render json: answer, status: :ok
    end

    def create
        answer = Answer.create!(answer_params)
        render json: answer, status: :created
    end

    def destroy
        answer = find_answer
        answer.destroy
        head :no_content
    end

    private

    def find_answer
        Answer.find_by(id: params[:id])
    end

    def answer_params
        params.permit(:correct_answer)
    end
end
