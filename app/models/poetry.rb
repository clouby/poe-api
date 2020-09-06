class Poetry < ApplicationRecord

  validates :body_markdown, presence: true
  validates :title, presence: true
  validates :author, presence: true

  def self.markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end

  before_save :render_content, if: :body_markdown_changed?

  private

  def render_content
    self.processed_html = self.class.markdown.render(body_markdown)
  end
end
