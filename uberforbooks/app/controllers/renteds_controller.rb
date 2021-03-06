class RentedsController < ApplicationController
  before_action :set_rented, only: [:show, :edit, :update, :destroy]

  # GET /renteds
  # GET /renteds.json
  def index
    @renteds = Rented.all
  end

  # GET /renteds/1
  # GET /renteds/1.json
  def show
  end

  # GET /renteds/new
  def new
    @rented = Rented.new
  end

  # GET /renteds/1/edit
  def edit
  end

  # POST /renteds
  # POST /renteds.json
  def create
    @rented = Rented.new({:book_id => params["book_id"], :user_id => params["user_id"]})
    puts "the params"
    @book = Book.find_by_id(params["book_id"])
    puts @book.name
    @book.isRented = true
    @book.save
    @rented.save
  end

  # PATCH/PUT /renteds/1
  # PATCH/PUT /renteds/1.json
  def update
    respond_to do |format|
      if @rented.update(rented_params)
        format.html { redirect_to @rented, notice: 'Rented was successfully updated.' }
        format.json { render :show, status: :ok, location: @rented }
      else
        format.html { render :edit }
        format.json { render json: @rented.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renteds/1
  # DELETE /renteds/1.json
  def destroy
    @rented.destroy
    respond_to do |format|
      format.html { redirect_to renteds_url, notice: 'Rented was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rented
      @rented = Rented.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rented_params
      # params.require().permit(:user_id, :book_id)
    end

end
