class PurposeDefsController < ApplicationController
  # GET /purpose_defs
  # GET /purpose_defs.xml
  def index
    @purpose_defs = PurposeDef.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @purpose_defs }
    end
  end

  # GET /purpose_defs/1
  # GET /purpose_defs/1.xml
  def show
    @purpose_def = PurposeDef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @purpose_def }
    end
  end

  # GET /purpose_defs/new
  # GET /purpose_defs/new.xml
  def new
    @purpose_def = PurposeDef.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @purpose_def }
    end
  end

  # GET /purpose_defs/1/edit
  def edit
    @purpose_def = PurposeDef.find(params[:id])
  end

  # POST /purpose_defs
  # POST /purpose_defs.xml
  def create
    @purpose_def = PurposeDef.new(params[:purpose_def])

    respond_to do |format|
      if @purpose_def.save
        format.html { redirect_to(@purpose_def, :notice => 'Purpose def was successfully created.') }
        format.xml  { render :xml => @purpose_def, :status => :created, :location => @purpose_def }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @purpose_def.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /purpose_defs/1
  # PUT /purpose_defs/1.xml
  def update
    @purpose_def = PurposeDef.find(params[:id])

    respond_to do |format|
      if @purpose_def.update_attributes(params[:purpose_def])
        format.html { redirect_to(@purpose_def, :notice => 'Purpose def was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @purpose_def.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /purpose_defs/1
  # DELETE /purpose_defs/1.xml
  def destroy
    @purpose_def = PurposeDef.find(params[:id])
    @purpose_def.destroy

    respond_to do |format|
      format.html { redirect_to(purpose_defs_url) }
      format.xml  { head :ok }
    end
  end
end
