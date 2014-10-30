$(function() {
  var newTaskForm = $("#new_task");

  var createNewTask = function(){
    var formData = newTaskForm.serialize();
    var task =  $.ajax({
      data: formData,
      url: "/tasks",
      type: 'POST',
      success: function(){
        alert("Sucess!");
      }
    });

    task.done(addTaskToList);

    return false;
  };

  var addTaskToList = function(taskHTML){
    var taskList = $("#task-list");
    taskList.append(taskHTML);
  };

  newTaskForm.on("submit", createNewTask);

});

