module Admin
  class MaintextsController < BaseController
    def index
      @maintexts = Maintext.priority.recent.lang
    end
    def new
      @maintext = Maintext.new
    end

    def create
      @maintext = Maintext.new(maintext_params)
      if @maintext.save
        redirect_to admin_maintexts_path
      else
        errors_to_flash(@maintext)
        render 'new'
      end
    end

    def edit
      @maintext = Maintext.find(params[:id])
    end

    def update
      @maintext = Maintext.find(params[:id])
      if @maintext.update(maintext_params)
        redirect_to admin_maintexts_path
      else
        errors_to_flash(@maintext)
        render 'edit'
      end
    end

    def destroy
      @maintext = Maintext.find(params[:id])
      errors_to_flash(@maintext) unless @maintext.destroy
      redirect_to admin_maintexts_path
    end

    private

    def maintext_params
      params.require(:maintext).permit(:order, :slug, :title, :body, :lang)
    end
  end
end
