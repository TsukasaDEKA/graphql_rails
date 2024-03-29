module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World! from QueryType"
    end
    field :all_posts, [PostType], null: false
    def all_posts()
      Post.all
    end

    field :posts, [PostType], null: true do
      argument :limit,  Integer, required: false
      argument :offset, Integer, required: false
    end
    def posts(limit: nil, offset: nil)
      posts = Post.all
      posts = posts.limit(limit)  unless limit.nil?
      posts = posts.offset(offset) unless offset.nil?
      posts
    end

    field :post, PostType, null: false do
      argument :id, ID, required: true
    end
    def post(id: nil)
      post = Post.find_by(id: id)
      raise GraphQL::ExecutionError.new("Couldn't find Post", extensions: { code: 'なんかエラー' }) unless post.present?
      post
    end
  end
end