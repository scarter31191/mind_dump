class BlogsController < ApplicationController

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            redirect_to blogs_show_path(@blog)
        else
            redirect_to blogs_new_path
        end
    end



    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end




    








    private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
