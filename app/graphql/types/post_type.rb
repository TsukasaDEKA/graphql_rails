module Types
    class PostType < Types::BaseObject
      field :id,         ID, null: false
      field :title,      String, null: false
      field :content,    String, null: false
      field :created_at, CustomScalarTypes::Datetime, null: false
    end
end