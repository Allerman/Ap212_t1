class CozinhasController < ApplicationController
  before_action :set_cozinha, only: %i[ show edit update destroy ]

  # GET /cozinhas or /cozinhas.json
  def index
    @cozinhas = Cozinha.all
  end

  # GET /cozinhas/1 or /cozinhas/1.json
  def show
  end

  # GET /cozinhas/new
  def new
    @cozinha = Cozinha.new
  end

  # GET /cozinhas/1/edit
  # def edit
  # end

  # POST /cozinhas or /cozinhas.json
  def create
    @cozinha = Cozinha.new(cozinha_params)

    respond_to do |format|
      if @cozinha.save
        format.html { render :show, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @cozinha }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cozinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cozinhas/1 or /cozinhas/1.json
  # def update
  #   respond_to do |format|
  #     if @cozinha.update(cozinha_params)
  #       format.html { redirect_to cozinha_url(@cozinha), notice: "Cozinha was successfully updated." }
  #       format.json { render :show, status: :ok, location: @cozinha }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @cozinha.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /cozinhas/1 or /cozinhas/1.json
  def destroy
    @cozinha.destroy

    respond_to do |format|
      format.html { render :show, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cozinha
      @cozinha = Cozinha.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cozinha_params
      params.require(:cozinha).permit(:item, :comprado)
    end
end
