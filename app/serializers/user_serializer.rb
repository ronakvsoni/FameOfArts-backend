class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :artgallaries, :comments, :images
end
