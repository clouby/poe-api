module Types
  class MutationType < Types::BaseObject
    field :create_poem, mutation: Mutations::CreatePoetry
    field :upload_file_poem, mutation: Mutations::UploadFilePoem
  end
end
