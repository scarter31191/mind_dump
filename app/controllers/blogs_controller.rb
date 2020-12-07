class BlogsController < ApplicationController

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        @blog.user_id = current_user.id
        if @blog.valid?
            @blog.save
            redirect_to blog_path(@blog)
        else
            render :new
        end
    end

    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end


    def edit
        @blog = Blog.find(params[:id])
    end
 
    def update
        @blog = Blog.find(params[:id])
        if @blog.update(blog_params)
            redirect_to blog_path(@blog) 
        else
            render :edit
        end
    end

    








    private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
