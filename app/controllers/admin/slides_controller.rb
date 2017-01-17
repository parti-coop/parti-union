module Admin
  class SlidesController < BaseController
    def index
      @slides = Slide.priority.recent
    end
    def new
      @slide = Slide.new
    end

    def create
      @slide = Slide.new(slide_params)
      if @slide.save
        redirect_to admin_slides_path
      else
        errors_to_flash(@slide)
        render 'new'
      end
    end

    def edit
      @slide = Slide.find(params[:id])
    end

    def update
      @slide = Slide.find(params[:id])
      if @slide.update(slide_params)
        redirect_to admin_slides_path
      else
        errors_to_flash(@slide)
        render 'edit'
      end
    end

    def destroy
      @slide = Slide.find(params[:id])
      errors_to_flash(@slide) unless @slide.destroy
      redirect_to admin_slides_path
    end

    private

    def slide_params
      params.require(:slide).permit(:order, :image, :title, :url, :body)
    end
  end
end
