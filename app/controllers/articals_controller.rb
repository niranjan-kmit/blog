class ArticalsController < ApplicationController
  def new


  end

   def show
    @article = Article.find(params[:id])
   end

  def create

artical = article.create(:titile=>param[:title],:text=>[:text])
 
  @article.save
  redirect_to :action =>'new'
end
 
private
  def article_params
    params.require(:article).permit(:title, :text)
  end
	
  
end
