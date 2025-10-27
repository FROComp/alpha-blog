module ArticlesHelper
  def can_modify_article?(article)
    logged_in? && (current_user.id == article.user.id || current_user.admin?)
  end
end