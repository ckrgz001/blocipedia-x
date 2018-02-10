class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def show
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new
    #params
    @wiki.title = params[:wiki][:title]
    @wiki.body = params[:wiki][:title]

  def edit
  end
end
