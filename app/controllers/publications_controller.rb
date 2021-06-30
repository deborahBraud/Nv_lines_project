class PublicationsController < ApplicationController
  before_action :set_publication, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [ :index, :show]
  # GET /publications or /publications.json
  def index
    @publications = Publication.all
  end

  # GET /publications/1 or /publications/1.json
  def show
    @publication = Publication.find(params[:id])
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications or /publications.json
  def create
    @publication = Publication.new(publication_params)

    doc = find(params[:ids])

    @publication.publication_name = doc[0][:title]
    @publication.publication_date = doc[0][:date].to_date
    @publication.pubmed_link = doc[0][:url]
    @publication.authors = doc[0][:authors]
    #raise

    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: "Publication was successfully created." }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end 
  end

  # PATCH/PUT /publications/1 or /publications/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to @publication, notice: "Publication was successfully updated." }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1 or /publications/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url, notice: "Publication was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  require "net/http"
  require "uri"
  require 'open-uri'
  require "nokogiri"

  def find(ids) # can accept an array of ids or a single id or a string of ids separated by commas

    param = ids.class == Array ? ids.join(",") : ids
    documents = []

    if true
      response = Nokogiri::HTML(URI.open("http://pubmed.ncbi.nlm.nih.gov/#{ids}/"))

        doc = {} 
        doc[:title] = response.css("title")[0].text
        doc[:id] = response.css(".current-id")[0].text
        doc[:date] = response.css(".cit")[0].text.to_s.split(/;/)[0]
        doc[:url] = "http://www.ncbi.nlm.nih.gov/pubmed/#{doc[:id]}"
        doc[:authors] = response.css('.heading-title + .inline-authors a').to_a.join(', ')
        
        documents << doc 
    end
    documents
  end

###########################################################
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def publication_params
      params.require(:publication).permit(:ids, :publication_name, :publication_date, :authors, :pubmed_link, :doi_link, line_ids: [], lines_attributes: [:publication_ids])
    end
  end  

###########################################################

