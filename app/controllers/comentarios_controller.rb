class ComentariosController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comentario = @blog.comentarios.create(comentario_params)
    redirect_to blog_path(@blog)
  end
 
  def destroy
    @blog = Blog.find(params[:blog_id])
    @comentario = @blog.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to blog_path(@blog)
  end
  private
    def comentario_params
      params.require(:comentario).permit(:comentariador, :corpo)
    end


end
