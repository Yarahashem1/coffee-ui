import 'package:coffee/Models/coffee.dart';
import 'package:coffee/Widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class secondScreen extends StatefulWidget {
  coffee? coffId;
  secondScreen(this.coffId);

  @override
  State<secondScreen> createState() => _secondScreenState(coffId);
}

class _secondScreenState extends State<secondScreen> {
  coffee? coffId;
  _secondScreenState(this.coffId);

  int counter = 1;
  @override
  void initState() {
    super.initState();
  }

  openDialog() async {
    final value = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
          backgroundColor: Color.fromARGB(255, 65, 61, 61),
          content: Text(
            'Confirm the order',
            style: TextStyle(color: Colors.amber),
          ),
          actions: [
            MaterialButton(onPressed: () {
                showToast(
                      text: 'canceled successfully',
                      state: ToastStates.SUCCESS,
                    );

            }, child: Text('No'),color: Colors.amber,),
             MaterialButton(onPressed: () {
               
                
             }, child: Text('Yes'),color: Colors.amber,),
          ]),
    );
    if (value != null) {
      return Future.value(value);
    } else
      return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 61, 61),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 65, 61, 61),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'How many do you need?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.amber),
            ),
            SizedBox(
              height: 80,
            ),
            Center(child: element(coffId!)),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            counter--;
                            print(counter);
                          });
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35.0,
                    ),
                    child: Text(
                      '$counter',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                            print(counter);
                          });
                        },
                        icon: Icon(Icons.add, color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 20, end: 20),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(10)),
                  color: Colors.amber),
              child: Row(children: [
                Text('${(coffId!.price! * counter)} \$'),
                Spacer(),
                IconButton(
                    onPressed: () {
                      openDialog();
                    },
                    icon: Icon(Icons.arrow_forward))
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
