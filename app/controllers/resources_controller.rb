class ResourcesController < ApplicationController
  before_filter :ensure_user_is_admin, only: [:create, :update, :destroy]

  def show
    @resource = Resource.find(params[:id])
  end

  def index
    @resources = Resource.sort_by_city
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.create(resources_params)
    redirect_to @resource
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update(resources_params)
      redirect_to @resource
    else
      render :edit
    end
  end

  def destroy
    resource = Resource.find(params[:id])
    resource.destroy
    redirect_to root_path
  end

  private

  def resources_params
    params.require(:resource).permit(
      :name,
      :role,
      :city,
      :address
    )
  end
end
