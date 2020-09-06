module Types
  # Poetry type
  class PoetryType < Types::BaseObject
    field :id, Int, null: false
    field :body_markdown, String, null: false
    field :processed_html, String, null: false
    field :title, String, null: false
    field :author, String, null: false
    field :description, String, null: true
    field :published, Boolean, null: true
  end
end
