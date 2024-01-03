import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var showhide = [false,false,false];
//
//   // get isExpended => showhide;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Expension Penal List'),
//       ),
//       body: SingleChildScrollView(
//         child: ExpansionPanelList(
//           expansionCallback: (value, isExpanded) {
//             return setState(() {
//               showhide[value] = isExpanded;
//             });
//           },
//           children: [
//             ExpansionPanel(
//                 headerBuilder: (context, isExpended) {
//                   return ListTile(
//                     title: Text("kajal"),
//                   );
//                 },
//                 body: ListTile(title: Text("8765432178"),),
//               isExpanded: showhide[0]
//             ),
// ExpansionPanel
// (
// headerBuilder: (context, isExpended) {
// return ListTile(
// title: Text("sakshi"),
// );
// },
// body: ListTile(title: Text("8878144782"),),
// isExpanded: showhide[1]
// ),
//
//         ExpansionPanel(
//             headerBuilder: (context, isExpended) {
//               return ListTile(
//                 title: Text("appu"),
//               );
//             },
//             body: ListTile(title: Text("8783011914"),),
//             isExpanded: showhide[2]
//         )
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var showHide = [false, false, false];

  // get isExpanded => null;

// get isExpanded => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New practice'),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (value, isExpanded) {
              return setState(() {
                showHide[value] = isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isExpended) {
                    return ListTile(
                      title: Text("appu"),
                    );
                  },
                  body: ListTile(
                    title: Text("8878144782"),
                  ),
                  isExpanded: showHide[0]),
              ExpansionPanel(
                  headerBuilder: (context, isExpended) {
                    return ListTile(
                      title: Text("kajal"),
                    );
                  },
                  body: ListTile(
                    title: Text("8878144782"),
                  ),
                  isExpanded: showHide[1]),
              ExpansionPanel(
                  headerBuilder: (context, isExpended) {
                    return ListTile(
                      title: Text("sakshi"),
                    );
                  },
                  body: ListTile(
                    title: Text("8878144782"),
                  ),
                  isExpanded: showHide[2]),
            ],
          ),
        ),
      ),
    );
  }
}
