import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyMathExpressions extends StatefulWidget {
  const MyMathExpressions({Key? key}) : super(key: key);

  @override
  State<MyMathExpressions> createState() => _MyMathExpressionsState();
}

class _MyMathExpressionsState extends State<MyMathExpressions> {
  // use this controller to get what the user typed
  final _textController = TextEditingController();
  var userInput = '';
  var answer = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Math Expressions')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'Input like: 1+2-4*3',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // clear whats currently in the TextField
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            Text(
              '= $answer',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      answer = '0';
                    });
                  },
                  child: const Text("Clear"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      userInput = _textController.text;

                      equalPressed();
                    });
                  },
                  child: const Text("Answer"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void equalPressed() {
    String finaluserinput = userInput;

    finaluserinput = userInput.replaceAll('x', '*');
    // '%'  = Modulo operator
    //finaluserinput = userInput.replaceAll('%', '*0.01');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
