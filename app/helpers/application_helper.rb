module ApplicationHelper
  def category_dropdown
    Category.all.map{ |x| [x.name, x.id] }
  end

  def disabled_options(user)
    user.categories.map(&:id)
  end

  def answer_votes(answer, type)
    answer.votes.where(vote_type: type)
  end

  def flash_class(level)
    case level
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-error"
    end
  end
end
