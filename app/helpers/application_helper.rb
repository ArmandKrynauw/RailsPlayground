module ApplicationHelper
  def has_errors?(resource, attribute)
    resource.errors[attribute].any?
  end
end
