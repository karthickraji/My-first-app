class AdvetsController < ApplicationController
  before_action :set_advet, only: [:show, :edit, :update, :destroy]

  # GET /advets
  # GET /advets.json
  def index
    @advets = Advet.all
  end

  # GET /advets/1
  # GET /advets/1.json
  def show
  end

  # GET /advets/new
  def new
    @advet = Advet.new
  end

  # GET /advets/1/edit
  def edit
  end

  # POST /advets
  # POST /advets.json
  def create
    @advet = Advet.new(advet_params)

    respond_to do |format|
      if @advet.save
        format.html { redirect_to @advet, notice: 'Advet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @advet }
      else
        format.html { render action: 'new' }
        format.json { render json: @advet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advets/1
  # PATCH/PUT /advets/1.json
  def update
    respond_to do |format|
      if @advet.update(advet_params)
        format.html { redirect_to @advet, notice: 'Advet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @advet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advets/1
  # DELETE /advets/1.json
  def destroy
    @advet.destroy
    respond_to do |format|
      format.html { redirect_to advets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advet
      @advet = Advet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advet_params
      params.require(:advet).permit(:name, :descripion, :price, :seller_id, :email, :img_url)
    end
end
