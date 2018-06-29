module PagesHelper
  def get
      return "#{Student.first.firstname} #{Student.first.lastname}"
  end
  

end
