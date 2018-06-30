module PagesHelper
  def get_teacher_info
    # current_user_tch - is current teacher
    current_user_tch
  end

  def get_teacher_courses
    current_user_tch.courses
  end

  def get_student
    return current_user_st
  end

  def get_student_fullname(id)
    @student = Student.find(id)
    return "#{@student.firstname} #{@student.lastname}"
  end

  def teachers? # Return all teachers
    @teachers = Teacher.all
  end

  def teacher_fullname?(tt)
    tt.firstname+" "+tt.lastname
  end

  def group?(cid) # Return group for a student, based on Course_id
    @current_user.groups.where(course_id: cid).first
  end

  def what_is_courses_of?(teacher) # Return all courses of given teacher
    if (teacher.courses.nil?) # Check if teacher has 0 courses
      return nil
    end
    @courses = teacher.courses.all
  end

  def what_is_groups_of?(course) # Return all groups of given course of teacher
    if (course.nil?) # Check if teacher has 0 courses
      return nil
    end
    @groups = course.groups.all
  end

  def course?(gr_id) # Return course based on group
    @course = Course.find_by(id: Group.find_by(id: gr_id).course_id)
  end

  def teacher?(cid) # Return teacher based on course
    @teacher = Teacher.find_by(id: Course.find_by(id: cid).teacher_id)
  end

end
