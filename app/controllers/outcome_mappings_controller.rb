class OutcomeMappingsController < ApplicationController
  # GET /outcome_mappings
  # GET /outcome_mappings.json
  def index
    @outcome_mappings = OutcomeMapping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outcome_mappings }
    end
  end

  # GET /outcome_mappings/1
  # GET /outcome_mappings/1.json
  def show
    @outcome_mapping = OutcomeMapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outcome_mapping }
    end
  end

  # GET /outcome_mappings/new
  # GET /outcome_mappings/new.json
  def new
    @outcome_mapping = OutcomeMapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outcome_mapping }
    end
  end

  # GET /outcome_mappings/1/edit
  def edit
    @outcome_mapping = OutcomeMapping.find(params[:id])
  end

  # POST /outcome_mappings
  # POST /outcome_mappings.json
  def create
    @outcome_mapping = OutcomeMapping.new(params[:outcome_mapping])

    respond_to do |format|
      if @outcome_mapping.save
        format.html { redirect_to @outcome_mapping, notice: 'Outcome mapping was successfully created.' }
        format.json { render json: @outcome_mapping, status: :created, location: @outcome_mapping }
      else
        format.html { render action: "new" }
        format.json { render json: @outcome_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outcome_mappings/1
  # PUT /outcome_mappings/1.json
  def update
    @outcome_mapping = OutcomeMapping.find(params[:id])

    respond_to do |format|
      if @outcome_mapping.update_attributes(params[:outcome_mapping])
        format.html { redirect_to @outcome_mapping, notice: 'Outcome mapping was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @outcome_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outcome_mappings/1
  # DELETE /outcome_mappings/1.json
  def destroy
    @outcome_mapping = OutcomeMapping.find(params[:id])
    @outcome_mapping.destroy

    respond_to do |format|
      format.html { redirect_to outcome_mappings_url }
      format.json { head :ok }
    end
  end
end
