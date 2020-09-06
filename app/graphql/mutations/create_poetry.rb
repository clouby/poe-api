class Mutations::CreatePoetry < Mutations::BaseMutation
  null true

  description "Create a new poetry"

  argument :content, String, required: true
  argument :title, String, required: true
  argument :author, String, required: true
  argument :description, String, required: false
  argument :published, Boolean, required: false

  type Types::PoetryType

  def resolve(content:, **args)
    a_poetry = Poetry.create(body_markdown: content, **args)

    Poetry.take
  end

end