class PackagesController < ApplicationController
  before_action :is_owner, only: [:destroy]

  def index
    @packages = Package.all
  end

  def new
    @package = Package.new
  end

  def create
    params[:package][:user_id] = current_user.id

    @package = Package.new(packages_params)
    if @package.save
      flash[:success] = "Package successfully created"
      # redirect_to @package
      redirect_to packages_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @package = Package.find(params[:id])
  end

  def edit
    @package = Package.find(params[:id])
  end

  def update
    @package = Package.find(params[:id])
      if @package.update(packages_params)
        flash[:success] = "Package was successfully updated"
        redirect_to packages_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def destroy
    @package = Package.find(params[:id])
    if @package.destroy
      flash[:success] = 'Package was successfully deleted.'
      redirect_to packages_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to packages_path
    end
  end

  private
    def packages_params
      params.require(:package).permit(:name, :description, :image, :price, :start_date, :end_date, :user_id)
    end

    def is_owner
      if user_signed_in?
          if current_user.id == Package.find(params[:id]).user_id
              return true
          else
              redirect_to packages_path
          end
      else
        redirect_to packages_path
      end
    end
end
