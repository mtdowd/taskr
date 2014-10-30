
$(function() {
  var taskList = $("#task-list");

  var deleteTask = function(){
    var url = $(this).attr("action");

    var task =  $.ajax({
      url: url,
      type: "DELETE"
    });

    var taskObject = $(this).parent();
    deleteTaskFromList(taskObject)

    return false;
  };

  var deleteTaskFromList = function(taskObject){
    taskObject.slideUp();
  };

  taskList.on("submit", ".delete-task", deleteTask);

});

