module PagesHelper
  def get
      return "#{Student.first.firstname} #{Student.first.lastname}"
  end
  def teachers_name? # Returns all teacher's names in map\dict\hash
    @arr = Hash.new()
    @arr[:firstname] = Teacher.connection.select_values(Teacher.select(:firstname).to_sql)
    @arr[:lastname] = Teacher.connection.select_values(Teacher.select(:lastname).to_sql)
    @arr[:teacher_id] = Teacher.connection.select_values(Teacher.select(:id).to_sql)
    return @arr
  end
  def what_is_courses_of?(t_id) # Retursn all courses of given teacher in string array
    teacher = Teacher.find_by(id: t_id)
    tname = teacher.courses.select(:name).to_sql
    tid = teacher.courses.select(:id).to_sql
    @arr[:course_name] = teacher.courses.connection.select_values(tname)
    @arr[:course_id] = teacher.courses.connection.select_values(tid)
    return @arr
  end
  def what_is_groups_of?(course_id)
    course = Course.find_by(id: course_id)

    if (course.nil?) # Check if teacher has 0 courses
      return nil
    end

    group_names = course.select(:name).to_sql
    group_ids = course.select(:id).to.sql
    @arr[:group_names] = course.connection.select_values(group_names)
    @arr[:group_ids] = course.connection.select_values(group_ids)
    return @arr
  end

end
