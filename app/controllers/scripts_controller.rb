class ScriptsController < ApplicationController
  def new
    @script = Script.new
  end

  def show
    @script = Script.find(params[:id])
  end

  def create
    @script = Script.new(script_params)

    if @script.save
      redirect_to @script
    else
      redirect_to new_script_path
    end
  end

  def script_params
    params
      .require(:script)
      .permit(
        :body,
        :name
      )
  end
end
