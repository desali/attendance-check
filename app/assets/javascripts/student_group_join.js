jQuery(function() {
  var courses;
  courses = $('#course_select_id').html();
  console.log(courses);

  return $('#teacher_select_id').change(function() {
    console.log("Teacher Changed");

    var teacher, options;
    teacher = $('#teacher_select_id :selected').text();
    console.log("Teacher is " + teacher);
    options = $(courses).filter("optgroup[label=" + teacher + "]").html();
    console.log(options);
    if (options) {
      return $('#course_select_id').html(options);
    } else {
      return $('#course_select_id').empty();
    }
  });
});

jQuery(function() {
  var groups;
  groups = $('#group_select_id').html();
  // console.log(groups);

  return $('#course_select_id').change(function() {
    var course, options;
    course = $('#course_select_id :selected').text();
    options = $(groups).filter("optgroup[label=" + course + "]").html();
    // console.log(options);
    if (options) {
      return $('#group_select_id').html(options);
    } else {
      return $('#group_select_id').empty();
    }
  });
});
