class Task {
 final String task;
 bool is_done;
 Task({this.task,this.is_done = false});

 void toggle_done()
 {
   is_done = !is_done;
 }
}