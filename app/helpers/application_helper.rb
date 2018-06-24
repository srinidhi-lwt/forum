module ApplicationHelper
	def category_dropdown
	  Category.all.map{ |x| [x.name, x.id] }
  end

  def disabled_options(user)
    user.categories.map(&:id)
  end
end
