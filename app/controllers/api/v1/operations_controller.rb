class Api::V1::OperationsController < ApplicationController
  # get /api/v1/users/1/operations
  def index
    p params[:user_id]
    operations = Operation.where(user_id: params[:user_id])
    render json: operations, status: :ok
  end

  # post /api/v1/users/1/operations
  def create
    operation = Operation.new(operation_params)

    if operation.save
      render json: operation, status: :ok
    else
      render json: operation.errors, status: :unprocessable_entity
    end
  end

  # get /api/v1/users/1/operations/1
  def show
    operation = Operation.where(id: params[:id], user_id: params[:user_id])
    render json: operation, status: :ok
  end

  def destroy
    @operation = Operation.find(params[:id])
    @operation.destroy
  end

  private

  def operation_params
    params.require(:operation).permit(:product_id, :start_date, :end_date, :location, :user_id)
  end
end
