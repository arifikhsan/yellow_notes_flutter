import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yellow Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Colors.yellow,
        // primaryColorLight: Colors.yellow,
        appBarTheme: AppBarTheme(
          color: Colors.grey.shade200,
          elevation: 0,
          centerTitle: true,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow.shade700,
          elevation: 0,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Notes',
                  style: TextStyle(
                    color: Colors.yellow.shade700,
                  ),
                ),
                TextSpan(text: ' '),
                TextSpan(
                  text: 'Tasks',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    focusColor: Colors.grey.shade400,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Search a note',
                  ),
                ),
              ),
              Flexible(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(
                    10,
                    (index) {
                      return Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Text(
                                'Item $index',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                  'Lorem adipisicing et est voluptate. Cupidatat do exercitation dolore laborum do labore do ut anim tempor. Minim mollit commodo in dolore occaecat culpa commodo ullamco dolore do duis ipsum.'),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
