// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:project/modules/New_tasks/new_tasks_Screen.dart';
// import 'package:project/modules/archive_Screen/archive_Tasks_Screen.dart';
// import 'package:project/modules/done_Screen/done_Tasks_Screen.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:project/shared/Componets/componets.dart';
// import 'package:project/shared/Componets/Constants.dart';
// // import 'package:conditional_builder/conditional_builder.dart'
// //     show ConditionalBuilder;

// class HomeLayout extends StatefulWidget {
//   const HomeLayout({Key? key}) : super(key: key);

//   @override
//   _HomeLayoutState createState() => _HomeLayoutState();
// }

// class _HomeLayoutState extends State<HomeLayout> {
//   int currentIndex = 0;

//   List<Widget> screens = [
//     NewTasksScreen(),
//     DoneTasksScreen(),
//     ArchivedTasksScreen(),
//   ];

//   List<String> titles = [
//     'New Tasks',
//     'Done Tasks',
//     'Archived Tasks',
//   ];
//   late Database database;
//   var scaffoldKey = GlobalKey<ScaffoldState>();
//   var formKey = GlobalKey<FormState>();
//   bool isBottomSheetShown = false;
//   IconData fabIcon = Icons.edit;
//   var titleController = TextEditingController();
//   var timeController = TextEditingController();
//   var dateController = TextEditingController();

//   get defaultFormField => null;

//   void initState() {
//     super.initState();
//     createDatabase();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       appBar: AppBar(
//         title: Text(titles[currentIndex]),
//       ),
//       body: ConditionalBuilder(
//         condition: tasks.length > 0,
//         builder: (context) => screens[currentIndex],
//         fallback: (context) => Center(child: CircularProgressIndicator()),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if (isBottomSheetShown) {
//             if (formKey.currentState!.validate()) {
//               insertToDatabase(
//                 title: titleController.text,
//                 time: timeController.text,
//                 date: dateController.text,
//               ).then((value) => (value) {
//                     getDataFromDatabase(database).then((value) {
//                       Navigator.pop(context);
//                       setState(() {
//                         isBottomSheetShown = false;
//                         fabIcon = Icons.edit;

//                         tasks = value;
//                         print(tasks);
//                       });
//                     });
//                   });
//             }
//           } else {
//             scaffoldKey.currentState
//                 ?.showBottomSheet(
//                   (context) => Container(
//                     color: Colors.white,
//                     padding: EdgeInsets.all(20.0),
//                     child: Form(
//                       key: formKey,
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           defaultFormField(
//                             type: TextInputType.text,
//                             validate: (String value) {
//                               if (value.isEmpty) {
//                                 return 'title must not be empty';
//                               }
//                               return null;
//                             },
//                             label: 'Task Title',
//                             prefix: Icons.title,
//                             controller: timeController,
//                           ),
//                           SizedBox(
//                             height: 15.0,
//                           ),
//                           defaultFormField(
//                             type: TextInputType.datetime,
//                             validate: (String value) {
//                               if (value.isEmpty) {
//                                 return 'Time must not be empty';
//                               }
//                               return null;
//                             },
//                             label: 'Task Time',
//                             prefix: Icons.watch_later_outlined,
//                             controller: timeController,
//                             onTap: () {
//                               showTimePicker(
//                                 context: context,
//                                 initialTime: TimeOfDay.now(),
//                               ).then((value) {
//                                 timeController.text =
//                                     value!.format(context).toString();
//                                 print(value.format(context));
//                               });
//                             },
//                           ),
//                           SizedBox(
//                             height: 15.0,
//                           ),
//                           defaultFormField(
//                             type: TextInputType.datetime,
//                             validate: (String value) {
//                               if (value.isEmpty) {
//                                 return 'Date must not be empty';
//                               }
//                               return null;
//                             },
//                             label: 'Task Date',
//                             prefix: Icons.calendar_today,
//                             controller: dateController,
//                             onTap: () {
//                               showDatePicker(
//                                 context: context,
//                                 initialDate: DateTime.now(),
//                                 firstDate: DateTime.now(),
//                                 lastDate: DateTime.parse('2021-9-18'),
//                               ).then((value) {
//                                 //  timeController.text = value!.format(context).toString();
//                                 dateController.text =
//                                     DateFormat.yMMMd().format(value!);
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   elevation: 15.0,
//                 )
//                 .closed
//                 .then((value) {
//               isBottomSheetShown = false;
//               setState(() {
//                 fabIcon = Icons.edit;
//               });
//             });
//             isBottomSheetShown = true;
//             setState(() {
//               fabIcon = Icons.add;
//             });
//           }
//         },
//         child: Icon(fabIcon),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: currentIndex,
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Tasks',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.check_circle_outline),
//             label: 'Done',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.archive_outlined),
//             label: 'Archived',
//           ),
//         ],
//       ),
//     );
//   }
// }

// void createDatabase() async {
//   var database = await openDatabase(
//     'todo.db',
//     version: 1,
//     onCreate: (database, version) {
//       print('DataBase Created');
//       database
//           .execute(
//               'CREATE TABLE tasks(id INTEGER PRIMARY KEY ,title TEXT ,data TEXT ,status TEXT)')
//           .then((value) {
//         print('Table Created');
//       }).catchError((error) {
//         print('Error when Creating Table ${error.toString()}');
//       });
//     },
//     onOpen: (database) {
//       getDataFromDatabase(database).then((value) {
//         List<Map> tasks = value;
//       });
//       Object? tasks;
//       print(tasks);
//     },
//   );
// }

// Future insertToDatabase({
//   required String title,
//   required String time,
//   required String date,
// }) async {
//   var database;
//   return await database.transaction((txn) {
//     txn
//         .rawInsert(
//             'INSERT INTO tasks(title ,data,time,status) VALUES("$title", "$date","$time","New"')
//         .then((value) {
//       print(' $value Scuccessfuly');
//     }).catchError((error) {
//       print('Error when inserting new recored ${error.toString()}');
//     });
//     return null;
//   });
// }

// Future<List<Map>> getDataFromDatabase(database) async {
//   var database;
//   return await database.rawQuery('SELECT * FROM tasks');
// }
