class PurposesController < ApplicationController
  # GET /purposes
  # GET /purposes.xml
  def index
    @purposes = Purpose.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @purposes }
    end
  end

  # GET /purposes/1
  # GET /purposes/1.xml
  def show
    @purpose = Purpose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @purpose }
    end
  end

  # GET /purposes/new
  # GET /purposes/new.xml
  def new
    @purpose = Purpose.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @purpose }
    end
  end

  # GET /purposes/1/edit
  def edit
    @purpose = Purpose.find(params[:id])
  end

  # POST /purposes
  # POST /purposes.xml
  def create
    @purpose = Purpose.new(params[:purpose])

    respond_to do |format|
      if @purpose.save
        format.html { redirect_to(@purpose, :notice => 'Purpose was successfully created.') }
        format.xml  { render :xml => @purpose, :status => :created, :location => @purpose }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @purpose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /purposes/1
  # PUT /purposes/1.xml
  def update
    @purpose = Purpose.find(params[:id])

    respond_to do |format|
      if @purpose.update_attributes(params[:purpose])
        format.html { redirect_to(@purpose, :notice => 'Purpose was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @purpose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /purposes/1
  # DELETE /purposes/1.xml
  def destroy
    @purpose = Purpose.find(params[:id])
    @purpose.destroy

    respond_to do |format|
      format.html { redirect_to(purposes_url) }
      format.xml  { head :ok }
    end
  end
end
