class BookingsController < ApplicationController
    before_action :is_owner, only: [:destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @bookings = Booking.new
  end

  def create
    params[:booking][:user_id] = current_user.id

    @booking = Booking.new(bookings_params)
    if @booking.save
      flash[:success] = "Booking successfully created"
      # redirect_to @booking
      redirect_to bookings_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
      if @Booking.update(bookings_params)
        flash[:success] = "Booking was successfully updated"
        redirect_to bookings_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      flash[:success] = 'Booking was successfully deleted.'
      redirect_to bookings_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to bookings_path
    end
  end

  private
    def bookings_params
      params.require(:booking).permit(:name, :description, :image, :price, :start_date, :end_date, :user_id)
    end

  def is_owner
    if user_signed_in?
        if current_user.id == Booking.find(params[:id]).user_id
            return true
        else
            redirect_to bookings_path
        end
    else
        redirect_to bookings_path
    end
  end
end
