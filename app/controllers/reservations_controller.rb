class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  def index
    @room = Room.includes(:reservations).find(params[:room_id])
    @reservations = @room.reservations.all
  end

  # GET /rooms/:room_id/reservations/new
  def new
    @room = Room.find(params[:room_id])
    @reservation = @room.reservations.new
  end

  # POST /rooms/:room_id/reservations
  def create
    @room = Room.find(params[:room_id])
    @reservation = @room.reservations.new(reservation_params)

    if @reservation.save
      redirect_to @reservation, notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  # ... The rest of the controller actions

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def set_room
      @room.find(params[:room_id])
    end

    # Only allow a trusted parameter "white list" through.
    def reservation_params
      params.require(:reservation).permit(:room_id, :starts_at, :ends_at)
    end
end
