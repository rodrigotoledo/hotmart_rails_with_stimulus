class Post < ApplicationRecord
  def toggle_completed_at
    update(completed_at: completed_at? ? nil : Time.now)
    broadcast_replace_to(self,
                         target: "post_#{id}",
                         partial: 'posts/post',
                         locals: { post: self })
  end
end
