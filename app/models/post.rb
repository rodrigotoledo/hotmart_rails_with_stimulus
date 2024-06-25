class Post < ApplicationRecord
  after_update :broadcast_changes
  def toggle_completed_at
    update(completed_at: completed_at? ? nil : Time.zone.now)
    broadcast_changes
  end

  private

  def broadcast_changes
    broadcast_replace_to(self,
                         target: "post_#{id}",
                         partial: 'posts/post',
                         locals: { post: self })
  end
end
