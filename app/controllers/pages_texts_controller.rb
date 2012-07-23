class PagesTextsController < ApplicationController
  # GET /pages_texts
  # GET /pages_texts.json
  def index
    @pages_texts = PagesText.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages_texts }
    end
  end

  # GET /pages_texts/1
  # GET /pages_texts/1.json
  def show
    @pages_text = PagesText.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pages_text }
    end
  end

  # GET /pages_texts/new
  # GET /pages_texts/new.json
  def new
    @pages_text = PagesText.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pages_text }
    end
  end

  # GET /pages_texts/1/edit
  def edit
    @pages_text = PagesText.find(params[:id])
  end

  # POST /pages_texts
  # POST /pages_texts.json
  def create
    @pages_text = PagesText.new(params[:pages_text])

    respond_to do |format|
      if @pages_text.save
        format.html { redirect_to @pages_text, notice: 'Pages text was successfully created.' }
        format.json { render json: @pages_text, status: :created, location: @pages_text }
      else
        format.html { render action: "new" }
        format.json { render json: @pages_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages_texts/1
  # PUT /pages_texts/1.json
  def update
    @pages_text = PagesText.find(params[:id])

    respond_to do |format|
      if @pages_text.update_attributes(params[:pages_text])
        format.html { redirect_to @pages_text, notice: 'Pages text was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pages_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages_texts/1
  # DELETE /pages_texts/1.json
  def destroy
    @pages_text = PagesText.find(params[:id])
    @pages_text.destroy

    respond_to do |format|
      format.html { redirect_to pages_texts_url }
      format.json { head :no_content }
    end
  end
end
