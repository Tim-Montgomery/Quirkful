class TestsController < ApplicationController
    def index
        render json: Test.all, status: :ok
    end

    def show
        tests = find_test
        render json: tests, status: :ok
    end

    def update
        tests = find_test
        tests.update!(test_params)
        render json: tests, status: :ok
    end

    def create
        tests = Test.create!(test_params)
        render json: tests, status: :created
    end

    def destroy
        tests = find_test
        tests.destroy
        head :no_content
    end

    private

    def find_test
        Test.find_by(id: params[:id])
    end

    def test_params
        params.permit(:correct)
    end
end
