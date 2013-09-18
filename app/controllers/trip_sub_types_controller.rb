class TripSubTypesController < ApplicationController
  # GET /trip_sub_types
  # GET /trip_sub_types.json
  def index
    @trip_sub_types = TripSubType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trip_sub_types }
    end
  end

  # GET /trip_sub_types/1
  # GET /trip_sub_types/1.json
  def show
    @trip_sub_type = TripSubType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip_sub_type }
    end
  end

  # GET /trip_sub_types/new
  # GET /trip_sub_types/new.json
  def new
    @trip_sub_type = TripSubType.new
    @trip_types = TripType.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip_sub_type }
    end
  end

  # GET /trip_sub_types/1/edit
  def edit
    @trip_sub_type = TripSubType.find(params[:id])
  end

  # POST /trip_sub_types
  # POST /trip_sub_types.json
  def create
    @trip_sub_type = TripSubType.new(params[:trip_sub_type])

    respond_to do |format|
      if @trip_sub_type.save
        format.html { redirect_to @trip_sub_type, notice: 'Trip sub type was successfully created.' }
        format.json { render json: @trip_sub_type, status: :created, location: @trip_sub_type }
      else
        format.html { render action: "new" }
        format.json { render json: @trip_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trip_sub_types/1
  # PUT /trip_sub_types/1.json
  def update
    @trip_sub_type = TripSubType.find(params[:id])

    respond_to do |format|
      if @trip_sub_type.update_attributes(params[:trip_sub_type])
        format.html { redirect_to @trip_sub_type, notice: 'Trip sub type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_sub_types/1
  # DELETE /trip_sub_types/1.json
  def destroy
    @trip_sub_type = TripSubType.find(params[:id])
    @trip_sub_type.destroy

    respond_to do |format|
      format.html { redirect_to trip_sub_types_url }
      format.json { head :no_content }
    end
  end
end
