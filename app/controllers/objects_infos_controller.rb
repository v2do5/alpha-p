#encoding: utf-8

class ObjectsInfosController < ApplicationController
  # GET /objects_infos
  # GET /objects_infos.json
  def index
    #@objects_infos = ObjectsInfo.all
    
     seektype = params[:seektype] ? params[:seektype] : {}
     seekplace = params[:seekplace] ? params[:seekplace] : {}
     seekmaxprice = params[:seekmaxprice] ? params[:seekmaxprice] : {}
     seekminprice = params[:seekminprice] ? params[:seekminprice] : {}
     
     
	 if seektype == "All" || seektype.empty?
	   @objects_infos = ObjectsInfo.page(params[:page]).per(10)
	 else
 	   @objects_infos = ObjectsInfo.where(:obj_type => seektype).page(params[:page]).per(10)
	 end                            	

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @objects_infos }
    end
  end

  # GET /objects_infos/1
  # GET /objects_infos/1.json
  def show
    @objects_info = ObjectsInfo.find(params[:id])
    authorize! :read, @article
    
	@objects_similar = ObjectsInfo.where(:obj_type => @objects_info.obj_type).limit(4)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @objects_info }
    end
  end

  # GET /objects_infos/new
  # GET /objects_infos/new.json
  def new
    @objects_info = ObjectsInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @objects_info }
    end
  end

  # GET /objects_infos/1/edit
  def edit
    @objects_info = ObjectsInfo.find(params[:id])
  end

  # POST /objects_infos
  # POST /objects_infos.json
  def create
    @objects_info = ObjectsInfo.new(params[:objects_info])

    respond_to do |format|
      if @objects_info.save
        format.html { redirect_to @objects_info, notice: 'Objects info was successfully created.' }
        format.json { render json: @objects_info, status: :created, location: @objects_info }
      else
        format.html { render action: "new" }
        format.json { render json: @objects_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /objects_infos/1
  # PUT /objects_infos/1.json
  def update
    @objects_info = ObjectsInfo.find(params[:id])

    respond_to do |format|
      if @objects_info.update_attributes(params[:objects_info])
        format.html { redirect_to @objects_info, notice: 'Objects info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @objects_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objects_infos/1
  # DELETE /objects_infos/1.json
  def destroy
    @objects_info = ObjectsInfo.find(params[:id])
    @objects_info.destroy

    respond_to do |format|
      format.html { redirect_to objects_infos_url }
      format.json { head :no_content }
    end
  end
end
