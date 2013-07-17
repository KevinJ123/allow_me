module ApplicationHelper
  def validation_errors_for(object)
    render(:partial => '/shared/validation_errors', :locals => { :object => object }) if object.errors.any?
  end
end
