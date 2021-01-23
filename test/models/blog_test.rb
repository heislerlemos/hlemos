# coding: utf-8
require 'test_helper'

class BlogTest < ActiveSupport::TestCase
   #test "the truth" do
    # assert 
   #end



   test "não deve gravar o blog sem o titulo" do
     blog = Blog.new
     blog.titulo  = "este é um titulo"
     assert  blog.save, "não guardou sem titulo artigo em titulo"
     
   end



   test "o titulo deve ter pelo 5 tamanho" do
     blog = Blog.new

      blog.titulo = "heisler"

       assert blog.save, "não guardou com um nomero  menos que 5" 
   
     
   end

end
