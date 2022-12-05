class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :content, :url, :image, :source_name, :source_url, :summary
  belongs_to :user
end
