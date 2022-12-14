class ArticlesController < ApplicationController
    def index
        render json: Article.all 
    end 

    def create
        article = Article.create(article_params)
        render json: article, status: :created
    end

    def show
        article = find_article
        render json: article, status: :ok
    end

    def update   
        article = find_article
        article.update(update_article_params)
        render json: article, status: :accepted
    end

    def destroy
        article = find_article
        article.destroy
        head :no_content
    end

    def summaries
        articles = Article.all
        render json: articles.each.to_json(only: [:id, :title, :description , :image, :source_name, :summary ])
    end 

    private

    def article_params
        params.permit(:title, :decription, :content, :url, :image, :source_name, :source_url, :user_id, :summary)
    end

   def find_article
        Article.find_by(id: params[:id])
   end

    def update_article_params
        params.permit(:summary)
    end

end
