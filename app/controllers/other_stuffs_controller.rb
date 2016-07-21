class OtherStuffsController < ApplicationController
  before_action :set_other_stuff, only: [:show, :edit, :update, :destroy]

  # GET /other_stuffs
  # GET /other_stuffs.json
  def index
    @other_stuffs = OtherStuff.all
  end

  # GET /other_stuffs/1
  # GET /other_stuffs/1.json
  def show
  end

  # GET /other_stuffs/new
  def new
    @other_stuff = OtherStuff.new
  end

  # GET /other_stuffs/1/edit
  def edit
  end

  # POST /other_stuffs
  # POST /other_stuffs.json
  def create
    @other_stuff = OtherStuff.new(other_stuff_params)

    respond_to do |format|
      if @other_stuff.save
        format.html { redirect_to @other_stuff, notice: 'Other stuff was successfully created.' }
        format.json { render :show, status: :created, location: @other_stuff }
      else
        format.html { render :new }
        format.json { render json: @other_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_stuffs/1
  # PATCH/PUT /other_stuffs/1.json
  def update
    respond_to do |format|
      if @other_stuff.update(other_stuff_params)
        format.html { redirect_to @other_stuff, notice: 'Other stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_stuff }
      else
        format.html { render :edit }
        format.json { render json: @other_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_stuffs/1
  # DELETE /other_stuffs/1.json
  def destroy
    @other_stuff.destroy
    respond_to do |format|
      format.html { redirect_to other_stuffs_url, notice: 'Other stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_stuff
      @other_stuff = OtherStuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_stuff_params
      params.require(:other_stuff).permit(:my_junk)
    end
end
