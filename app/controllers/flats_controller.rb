class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created'
    else
      render :new
    end
  end

  def edit
    @flat = Flat.new
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, notice: 'Restaurant successfully destroyed'
  end

  def search
    @flats = Flat.where("name LIKE '%house%'")
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
