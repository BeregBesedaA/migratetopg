class PgFirstsController < ApplicationController
  before_action :set_pg_first, only: [:show, :edit, :update, :destroy]

  # GET /pg_firsts
  # GET /pg_firsts.json
  def index
    @pg_firsts = PgFirst.all
  end

  # GET /pg_firsts/1
  # GET /pg_firsts/1.json
  def show
  end

  # GET /pg_firsts/new
  def new
    @pg_first = PgFirst.new
  end

  # GET /pg_firsts/1/edit
  def edit
  end

  # POST /pg_firsts
  # POST /pg_firsts.json
  def create
    @pg_first = PgFirst.new(pg_first_params)

    respond_to do |format|
      if @pg_first.save
        format.html { redirect_to @pg_first, notice: 'Pg first was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pg_first }
      else
        format.html { render action: 'new' }
        format.json { render json: @pg_first.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pg_firsts/1
  # PATCH/PUT /pg_firsts/1.json
  def update
    respond_to do |format|
      if @pg_first.update(pg_first_params)
        format.html { redirect_to @pg_first, notice: 'Pg first was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pg_first.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pg_firsts/1
  # DELETE /pg_firsts/1.json
  def destroy
    @pg_first.destroy
    respond_to do |format|
      format.html { redirect_to pg_firsts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pg_first
      @pg_first = PgFirst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pg_first_params
      params.require(:pg_first).permit(:name)
    end
end
