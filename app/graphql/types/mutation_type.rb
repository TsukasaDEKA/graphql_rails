module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World from MutationType"
    end

    field :create_post, Boolean, null: false,
      description: "Create new post" do
      argument :title, String, required: true
      argument :content, String, required: true
    end
    def create_post(title:, content:)
      Post.create!(title: title, content: content)
    end
  end
end
