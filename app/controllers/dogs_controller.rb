class DogsController < ApplicationController
  # GET /dogs
  # GET /dogs.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: DogsDatatable.new(view_context) }
    end
  end
end
