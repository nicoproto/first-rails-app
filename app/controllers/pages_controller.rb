class PagesController < ApplicationController
  def about
  end

  def contact
    # '@'' sets it as an instance variable accessible to the view
    @members = ['ed', 'sy', 'bartu', 'nico', 'nacho']
    @search = params[:member]

    if @search.present?
      @members = @members.select { |member| member.start_with?(@search.downcase) }
    end
  end

  def home
  end
end
