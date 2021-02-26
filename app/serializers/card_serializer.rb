class CardSerializer
  include JSONAPI::Serializer
  attributes :title, :description
end
