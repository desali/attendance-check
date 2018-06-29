module PagesHelper
  def get_teacher_info
    # current_user_tch - is current teacher
    current_user_tch
  end

  def get_teacher_courses
    current_user_tch.courses
  end

  def teachers_name? # Returns all teacher's names in map\dict\hash
    @arr = Hash.new()
    @arr[:firstnames] = Teacher.connection.select_values(Teacher.select(:firstname).to_sql)
    @arr[:lastnames] = Teacher.connection.select_values(Teacher.select(:lastname).to_sql)
    @arr[:teacher_ids] = Teacher.connection.select_values(Teacher.select(:id).to_sql)
    return @arr
  end
  def what_is_courses_of?(t_id) # Retursn all courses of given teacher in string array
    teacher = Teacher.find_by(id: t_id)
    tname = teacher.courses.select(:name).to_sql
    tid = teacher.courses.select(:id).to_sql
    @arr[:course_names] = teacher.courses.connection.select_values(tname)
    @arr[:course_ids] = teacher.courses.connection.select_values(tid)
    return @arr
  end
  def what_is_groups_of?(course_id)
    course = Course.find_by(id: course_id)

    if (course.nil?) # Check if teacher has 0 courses
      return nil
    end

    group_names = course.groups.select(:name).to_sql
    group_ids = course.groups.select(:id).to_sql
    @arr[:group_names] = course.groups.connection.select_values(group_names)
    @arr[:group_ids] = course.groups.connection.select_values(group_ids)
    return @arr
  end

  def confirm

  end

end
