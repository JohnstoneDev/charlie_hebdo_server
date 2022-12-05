class ArticlesController < ApplicationController
    def index
        render json: Articles.all
    end 

    def create
        article = Article.create(article_params)
        render json: article, status: :created
    end

    def show
        article = Article.find_by(id: params[:id])
        render json: article
    end

    #update to take summary
    def update 
        article = find_article
        article.summary.update(summary: params[:summary])
        render json: article, status: :accepted
    end

    def destroy
        article = find_article
        article.destroy
        render json: article, status: :no_content
    end
 
end
