import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  // bool isChanged =false;
  // void checkboxCallback(bool checkboxState){ // mention in below comment
  //   setState(() {
  //     isChanged = checkboxState;
  //   });
  // }
  final Function checkboxCallback;
final String taskTitle;
final bool isChanged ;
TaskTile({this.taskTitle,this.isChanged, this.checkboxCallback});

@override
Widget build(BuildContext context) {
  return ListTile(
    title: Text(
      taskTitle,
      style: TextStyle(
        fontSize: 18,
        decoration: isChanged ? TextDecoration.lineThrough : null,
      ),
    ),
    trailing: Checkbox(
      activeColor: Color(0xff1E1E1E),
        value: isChanged,
        // onChanged: toggle,
    ),
  );
}
}











// class CheckBoxList extends StatelessWidget { // this class was used to explain the callback function, in this the toggle will get the value of checkboxcallback and it will will call the method and change the ischanged to true
// final bool checkboxState;
// final Function toggle;
// CheckBoxList({this.checkboxState,this.toggle});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Color(0xff1E1E1E),
//         value: checkboxState,
//         onChanged: toggle,
//     );
//   }
// }
