module Mutations
  # Upload files about poems
  class UploadFilePoem < Mutations::BaseMutation
    null true

    description 'Upload file related to poetry information'

    argument :filename, String, required: true
    argument :content, ApolloUploadServer::Upload, required: true, prepare: lambda { |content, ctx|
      if content.content_type != 'text/markdown'
        raise GraphQL::ExecutionError, 'Invalid format to parse - must be `.md` file.'
      end

      front_matter = ctx[:front_matter]
      temp_file = content.tempfile
      value = front_matter.call(temp_file.read)
      temp_file.close(true)

      value
    }

    type Types::PoetryType

    def resolve(filename:, content:)
      data = content.front_matter.symbolize_keys
      data[:body_markdown] = content.content
      Poetry.create!(**data)
    end
  end
end
