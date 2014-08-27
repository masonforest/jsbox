class ExecutionsController < ApplicationController
  def create
    binding.pry
    @script = Script.find_by(name: params[:script])
    render text: @script.execute
  end
end
