module CoursesHelper
  def convert_to_char(id)
    (65 + id - 1).chr
  end
end
