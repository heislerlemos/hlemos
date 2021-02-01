class BlogsController < ApplicationController
	  http_basic_authenticate_with name: "heisler", password: "heislerpass2020", except: [:index, :show]

	def index
          @pagy,  @blogs = pagy(Blog.all.order("created_at DESC"))
          @blogs = Blog.search(params[:search]).order("created_at DESC")

  
	end


	def show
		@blog = Blog.find(params[:id])
	end


	def edit
		@blog = Blog.find(params[:id])
	end

	def new
		  @blog = Blog.new
	end


  def create
  	@blog = Blog.new(blog_params)
  	if @blog.save
  	redirect_to @blog
  else
  	render 'new'
  end
end

def update
	  @blog = Blog.find(params[:id])

  if @blog.update(blog_params)
    redirect_to @blog
  else
    render 'edit'
  end

	end

def destroy
  @blog = Blog.find(params[:id])
  @blog.destroy

  redirect_to blogs_path
end



private

def blog_params
	params.require(:blog).permit(:titulo, :texto, :avatar, :image_url)

end
end
