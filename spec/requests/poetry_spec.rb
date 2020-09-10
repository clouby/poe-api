require 'rails_helper'

def query(poetry_id:)
    <<~GQL
        query {
        getPoetry(
            id: #{poetry_id} 
        ) {
            bodyMarkdown
        }
        }
    GQL
end

RSpec.describe 'Poe GraphQL Requests', type: :request do
    let!(:poetry) { create(:poetry) }

    describe 'Get a poetry element' do
        before { post '/graphql', params: { query: query(poetry_id: poetry.id) } }
        
        it 'Poetry most be an simple object' do
            data = json['data']['getPoetry']
            expect(data).to include(
                'bodyMarkdown' => poetry.body_markdown
            )
        end
        
        it 'ID must be Numeric' do
            expect(poetry.id).to an_instance_of(Integer)
        end
    end
end