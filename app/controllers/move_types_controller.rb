class MoveTypesController < ApplicationController
  before_action :set_move_type, only: [:show, :edit, :update, :destroy]

  # GET /move_types
  # GET /move_types.json
  def index
    @move_types = MoveType.all
  end

  # GET /move_types/1
  # GET /move_types/1.json
  def show
  end

  # GET /move_types/new
  def new
    @move_type = MoveType.new
  end

  # GET /move_types/1/edit
  def edit
  end

  # POST /move_types
  # POST /move_types.json
  def create
    @move_type = MoveType.new(move_type_params)

    respond_to do |format|
      if @move_type.save
        format.html { redirect_to @move_type, notice: 'Move type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @move_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @move_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /move_types/1
  # PATCH/PUT /move_types/1.json
  def update
    respond_to do |format|
      if @move_type.update(move_type_params)
        format.html { redirect_to @move_type, notice: 'Move type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @move_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /move_types/1
  # DELETE /move_types/1.json
  def destroy
    @move_type.destroy
    respond_to do |format|
      format.html { redirect_to move_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_move_type
      @move_type = MoveType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def move_type_params
      params.require(:move_type).permit(:name)
    end
end
