class OrderUserQuery
  attr_reader :relation

  def initialize(join_data)
    @relation = User.joins(join_data).group('users.id')
  end

  def top_posts
    order('posts')
  end

  def top_likes
    order('likes')
  end

  private

  def order(count_resource)
    relation.order("count(#{count_resource}.id) DESC")
  end
end


