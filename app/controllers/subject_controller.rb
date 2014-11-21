class SubjectController < ApplicationController
  def index
      @sub = Subject.all
  end

  def new
  end
end
