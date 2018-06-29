module PagesHelper
  def get
      Student.first.fullname
  end
end
