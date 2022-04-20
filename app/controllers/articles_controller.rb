class ArticlesController < ApplicationController
    
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(:id)
    end
    
    def new
        @article = Article.new
    end
    

    def create 
        article = Article.create! params.require(:article).permit(:title, :content)
        redirect_to article
    end

    def edit
        @article = Article.find(:id)
    end
    
    def update
        @article = Article.find(params[:id])
        if @article.update_attributes(params[:article])
          flash[:success] = "Article was successfully updated"
          redirect_to @article
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    
    def destroy
        @article = Article.find(params[:id])
        if @article.destroy
            flash[:success] = 'Article was successfully deleted.'
            redirect_to articles_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to articles_url
        end
    end
    
end
