class LavanderiaController < ApplicationController
  before_action :set_lavanderium, only: %i[ show edit update destroy ]

  # GET /lavanderia or /lavanderia.json
  def index
    @lavanderia = Lavanderium.all
  end

  # GET /lavanderia/1 or /lavanderia/1.json
  def show
  end

  # GET /lavanderia/new
  def new
    @lavanderium = Lavanderium.new
  end

  # GET /lavanderia/1/edit
  def edit
  end

  # POST /lavanderia or /lavanderia.json
  def create
    @lavanderium = Lavanderium.new(lavanderium_params)

    respond_to do |format|
      if @lavanderium.save
        format.html { redirect_to lavanderium_url(@lavanderium), notice: "Lavanderium was successfully created." }
        format.json { render :show, status: :created, location: @lavanderium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lavanderium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lavanderia/1 or /lavanderia/1.json
  def update
    respond_to do |format|
      if @lavanderium.update(lavanderium_params)
        format.html { redirect_to lavanderium_url(@lavanderium), notice: "Lavanderium was successfully updated." }
        format.json { render :show, status: :ok, location: @lavanderium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lavanderium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lavanderia/1 or /lavanderia/1.json
  def destroy
    @lavanderium.destroy

    respond_to do |format|
      format.html { redirect_to lavanderia_url, notice: "Lavanderium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lavanderium
      @lavanderium = Lavanderium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lavanderium_params
      params.require(:lavanderium).permit(:item, :comprado)
    end
end
