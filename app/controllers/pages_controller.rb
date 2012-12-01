class PagesController < ApplicationController
  def show
    @body = Page.find_by_slug(params[:page]).body
  end
end
