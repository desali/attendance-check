jQuery(function() {
  var courses;
  courses = $('#course_select_id').html();
  return $('#teacher_select_id').change(function() {
    var teacher, options;
    teacher = $('#teacher_select_id :selected').text();
    options = $(courses).filter("optgroup[label=" + teacher + "]").html();
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
  return $('#course_select_id').change(function() {
    var course, options;
    course = $('#course_select_id :selected').text();
    options = $(groups).filter("optgroup[label=" + course + "]").html();
    if (options) {
      return $('#group_select_id').html(options);
    } else {
      return $('#group_select_id').empty();
    }
  });
});
