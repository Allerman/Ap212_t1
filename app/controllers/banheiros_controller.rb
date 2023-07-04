class BanheirosController < ApplicationController
  before_action :set_banheiro, only: %i[ show edit update destroy ]

  # GET /banheiros or /banheiros.json
  def index
    @banheiros = Banheiro.all
  end

  # GET /banheiros/1 or /banheiros/1.json
  def show
  end

  # GET /banheiros/new
  def new
    @banheiro = Banheiro.new
  end

  # GET /banheiros/1/edit
  def edit
  end

  # POST /banheiros or /banheiros.json
  def create
    @banheiro = Banheiro.new(banheiro_params)

    respond_to do |format|
      if @banheiro.save
        format.html { redirect_to banheiro_url(@banheiro), notice: "Banheiro was successfully created." }
        format.json { render :show, status: :created, location: @banheiro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @banheiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banheiros/1 or /banheiros/1.json
  def update
    respond_to do |format|
      if @banheiro.update(banheiro_params)
        format.html { redirect_to banheiro_url(@banheiro), notice: "Banheiro was successfully updated." }
        format.json { render :show, status: :ok, location: @banheiro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @banheiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banheiros/1 or /banheiros/1.json
  def destroy
    @banheiro.destroy

    respond_to do |format|
      format.html { redirect_to banheiros_url, notice: "Banheiro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banheiro
      @banheiro = Banheiro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banheiro_params
      params.require(:banheiro).permit(:item, :comprado)
    end
end
