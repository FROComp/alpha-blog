module ApplicationHelper

  include SessionsHelper

  def gravatar_for(user = nil, options = { size: 200 })
    user ||= @user
    size = options[:size]
    gravatar_id = Digest::SHA256::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded mx-auto d-block")
  end

  # def logged_in?
  #   !!session[:user_id]
  # end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if logged_in?
  # end

end
