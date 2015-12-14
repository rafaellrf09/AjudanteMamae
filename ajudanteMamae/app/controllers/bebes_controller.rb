class BebesController < ApplicationController
  before_action :set_bebe, only: [:show, :edit, :update, :destroy]

   #GET /bebes
   #GET /bebes.json
  def index
    @bebes = Bebe.all
  end

  # GET /bebes/1
  # GET /bebes/1.json
  def show
  end

  # GET /bebes/new
  def new
    @bebe = Bebe.new
  end

  # GET /bebes/1/edit
  def edit
  end

  # POST /bebes
  # POST /bebes.json
  def create
    @bebe = Bebe.new(bebe_params)

    respond_to do |format|
      if @bebe.save
        format.html { redirect_to @bebe, notice: 'Bebe was successfully created.' }
        format.json { render :show, status: :created, location: @bebe }
      else
        format.html { render :new }
        format.json { render json: @bebe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bebes/1
  # PATCH/PUT /bebes/1.json
  def update
    respond_to do |format|
      if @bebe.update(bebe_params)
        format.html { redirect_to @bebe, notice: 'Bebe was successfully updated.' }
        format.json { render :show, status: :ok, location: @bebe }
      else
        format.html { render :edit }
        format.json { render json: @bebe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bebes/1
  # DELETE /bebes/1.json
  def destroy
    @bebe.destroy
    respond_to do |format|
      format.html { redirect_to bebes_url, notice: 'Bebe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bebe
      @bebe = Bebe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bebe_params
      params.require(:bebe).permit(:nome, :idade)
    end
end
