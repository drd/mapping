class OutcomeGroupsController < ApplicationController
  # GET /outcome_groups
  # GET /outcome_groups.json
  def index
    @outcome_groups = OutcomeGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outcome_groups }
    end
  end

  # GET /outcome_groups/1
  # GET /outcome_groups/1.json
  def show
    @outcome_group = OutcomeGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outcome_group }
    end
  end

  # GET /outcome_groups/new
  # GET /outcome_groups/new.json
  def new
    @terms = Term.all
    @outcome_group = OutcomeGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outcome_group }
    end
  end

  # GET /outcome_groups/1/edit
  def edit
    @outcome_group = OutcomeGroup.find(params[:id])
  end

  # POST /outcome_groups
  # POST /outcome_groups.json
  def create
    @outcome_group = OutcomeGroup.new(params[:outcome_group])

    respond_to do |format|
      if @outcome_group.save
        format.html { redirect_to @outcome_group, notice: 'Outcome group was successfully created.' }
        format.json { render json: @outcome_group, status: :created, location: @outcome_group }
      else
        format.html { render action: "new" }
        format.json { render json: @outcome_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outcome_groups/1
  # PUT /outcome_groups/1.json
  def update
    @outcome_group = OutcomeGroup.find(params[:id])

    respond_to do |format|
      if @outcome_group.update_attributes(params[:outcome_group])
        format.html { redirect_to @outcome_group, notice: 'Outcome group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @outcome_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outcome_groups/1
  # DELETE /outcome_groups/1.json
  def destroy
    @outcome_group = OutcomeGroup.find(params[:id])
    @outcome_group.destroy

    respond_to do |format|
      format.html { redirect_to outcome_groups_url }
      format.json { head :ok }
    end
  end
end
