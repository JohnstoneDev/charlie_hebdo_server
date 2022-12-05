class ArticlesController < ApplicationController
    def index
        render json: Articles.all
    end 

    def create
        article = Article.create(article_params)
        render json: article, status: :created
    end

    def show
        article = find_article
        #article = Article.find_by(id: params[:id])
        render json: article, status: :ok
    end

    #update to take summary
    def update 
        #article = find_article
        #article.update(summary: params[:summary])
        #render json: article, status: :accepted
        article = find_article
        #article = article.find_by(id: params[:id])
        article.update(update_article_params)
        render json: article, status: :accepted
    end

    def destroy
        article = find_article
        article.destroy
        head :no_content
    end

private

   def find_article
        Article.find_by(id: params[:id])
   end

    def update_article_params
        params.permit(:summary)
    end

end
