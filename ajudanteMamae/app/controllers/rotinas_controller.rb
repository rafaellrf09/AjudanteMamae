class RotinasController < ApplicationController
  before_action :set_rotina, only: [:show, :edit, :update, :destroy]

  # GET /rotinas
  # GET /rotinas.json
  def index
    @rotinas = Rotina.all
  end

  # GET /rotinas/1
  # GET /rotinas/1.json
  def show
  end

  # GET /rotinas/new
  def new
    @rotina = Rotina.new
  end

  # GET /rotinas/1/edit
  def edit
  end

  # POST /rotinas
  # POST /rotinas.json
  def create
    @rotina = Rotina.new(rotina_params)

    respond_to do |format|
      if @rotina.save
        format.html { redirect_to @rotina, notice: 'Rotina was successfully created.' }
        format.json { render :show, status: :created, location: @rotina }
      else
        format.html { render :new }
        format.json { render json: @rotina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rotinas/1
  # PATCH/PUT /rotinas/1.json
  def update
    respond_to do |format|
      if @rotina.update(rotina_params)
        format.html { redirect_to @rotina, notice: 'Rotina was successfully updated.' }
        format.json { render :show, status: :ok, location: @rotina }
      else
        format.html { render :edit }
        format.json { render json: @rotina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotinas/1
  # DELETE /rotinas/1.json
  def destroy
    @rotina.destroy
    respond_to do |format|
      format.html { redirect_to rotinas_url, notice: 'Rotina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotina
      @rotina = Rotina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rotina_params
      params.require(:rotina).permit(:nome, :bebes_id)
    end
end
