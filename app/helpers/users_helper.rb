module UsersHelper
  def gravatar_for(user = nil, options = { size: 200 })
    user ||= @user
    size = options[:size]
    gravatar_id = Digest::SHA256::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded mx-auto d-block")
  end

  def can_edit_user?(user)
    logged_in? && (current_user.id == user.id || current_user.admin?)
  end

  def admin_user?(user)
    logged_in? && current_user.admin?
  end
end