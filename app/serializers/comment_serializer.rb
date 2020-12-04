class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :image, :comment_info
end
