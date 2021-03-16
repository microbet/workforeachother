class WelcomeController < ApplicationController

  def index
  end

  def about
  end

  def contact
  end

  def login
    @x = "hello"
  end

  def admin
    if (params["title"])
      category_params = { "title" => params["title"], "description" => params["body"], "parent" => params["parent"] } 
      insert_category = Category.new(category_params)
      insert_category.save
    end
    if (!current_user)
      redirect_back(fallback_location: root_path)
    else
      if (!current_user.admin) 
        redirect_back(fallback_location: root_path)
      else
        @categories = Category.all
        @selection_options = ['', '']
        @categories.each do |category|
          @selection_options << [category.title, category.id]
        end
      end
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:title, :description, :parent)
    end

end
