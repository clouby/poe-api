require 'rails_helper'

RSpec.describe Poetry, type: :model do
  
  context 'Validate presences on the model' do
    it { should validate_presence_of(:body_markdown) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:author) }
  end

  context 'Get the model create by content markdown' do
    let(:poetry) { create(:poetry) }
    
    it 'Generate poetry object on markdown to html content' do
      expect(poetry.processed_html).to eq("<p>#{poetry.body_markdown}</p>\n")
    end
  end
end
