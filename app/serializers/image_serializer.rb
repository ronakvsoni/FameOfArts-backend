class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :url, :user, :name, :description, :artgallary, :comments
end
