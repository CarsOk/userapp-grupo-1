class UsersController < ApplicationController
  def index
    usuario = User.all 
    render json: usuario, status: 200
  end

  def create
    usuario = User.create!(
    name: params[:name],
    email: params[:email],
    age: params[:age])
    render json: usuario, status: 201
  end

  def show 
    usuario = User.find(params[:id])
    render json: usuario, status: 200
  end

  def update 
    usuario = User.find(params[:id])
    user.update!(
    name: params[:name],
    email: params[:email],
    age: params[:age])
    render json:  usuario,  status: 200
  end

  def destroy
    usuario =User.find(params[:id])
    coment.destroy!
    render status: 200
  end
end
