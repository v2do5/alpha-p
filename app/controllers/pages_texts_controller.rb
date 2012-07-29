class PagesTextsController < ApplicationController
  # GET /pages_texts
  # GET /pages_texts.json
  def index
  	@objects_info = ObjectsInfo.order("obj_name").page(params[:page]).per(4)
  end

  def legal_services
  	render :layout => "text_layout"
  end
  
  def land_managment
  	render :layout => "text_layout"
  end
  
  def independent_evaluation
  	render :layout => "text_layout"
  end
  
  def review
  	render :layout => "text_layout"
  end
  
  def contacts
  	render :layout => "text_layout"
  end
  
 end
