import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first flutter app"),
        backgroundColor: Colors.orange,
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  int knowledge = 0;
  int books = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
        body: Container(
          margin: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  focusColor: const Color.fromARGB(0, 0, 0, 0),
                  splashColor: const Color.fromARGB(0, 0, 0, 0),
                  highlightColor: const Color.fromARGB(0, 0, 0, 0),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/stolenavatar.png"),
                    radius: 50.0,
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("It's not me btw"),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      children: [
                        TextSpan(
                          text: "Username: ",
                        ),
                        TextSpan(
                            text: "Orbit",
                            style: TextStyle(
                              color: Colors.amber,
                            ))
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      children: [
                        const TextSpan(
                          text: "Symbol: ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.star,
                              color: Colors.purple[600], size: 20),
                        ),
                      ]),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Current knowledge: $knowledge%",
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: (12 + (knowledge / 13)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Available book(s): $books",
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (knowledge + books <= 100) {
                          knowledge += books;
                        } else {
                          knowledge = 100;
                        }
                      });
                    },
                    child: const Text(
                      "Earn knowledge",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        books++;
                      });
                    },
                    child: const Text(
                      "Buy book",
                      style: TextStyle(
                        color: Colors.cyan,
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ) /*Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello flutter",
              style: TextStyle(
                color: Color.fromARGB(255, 118, 68, 255),
                fontSize: 40.0,
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 19, 200, 245)),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Color.fromARGB(255, 20, 170, 207).withOpacity(0.12);
                  }
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed)) {
                    return Color.fromARGB(255, 20, 170, 225).withOpacity(0.39);
                  }
                }),
              ),
              onPressed: () {
                print("Pressed test button");
              },
              child: const Text("Test button"),
            ),
          ],
        ),
      ), */
        );
  }
}
