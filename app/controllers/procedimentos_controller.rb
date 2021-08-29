class ProcedimentosController < ApplicationController
  before_action :set_procedimento, only: %i[ show edit update destroy ]

  # GET /procedimentos or /procedimentos.json
  def index
    @procedimentos = Procedimento.all
  end

  # GET /procedimentos/1 or /procedimentos/1.json
  def show
  end

  # GET /procedimentos/new
  def new
    @procedimento = Procedimento.new
  end

  # GET /procedimentos/1/edit
  def edit
  end

  # POST /procedimentos or /procedimentos.json
  def create
    @procedimento = Procedimento.new(procedimento_params)

    respond_to do |format|
      if @procedimento.save
        format.html { redirect_to @procedimento, notice: "Procedimento was successfully created." }
        format.json { render :show, status: :created, location: @procedimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @procedimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procedimentos/1 or /procedimentos/1.json
  def update
    respond_to do |format|
      if @procedimento.update(procedimento_params)
        format.html { redirect_to @procedimento, notice: "Procedimento was successfully updated." }
        format.json { render :show, status: :ok, location: @procedimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @procedimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedimentos/1 or /procedimentos/1.json
  def destroy
    @procedimento.destroy
    respond_to do |format|
      format.html { redirect_to procedimentos_url, notice: "Procedimento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedimento
      @procedimento = Procedimento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def procedimento_params
      params.require(:procedimento).permit(:descricao, :valor)
    end
end
