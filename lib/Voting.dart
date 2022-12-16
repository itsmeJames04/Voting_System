import 'dart:convert';
import 'prespage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class VoteRoute extends StatelessWidget {
  VoteRoute({Key? key}) : super(key: key);

  TextEditingController voterkey = TextEditingController();

  Future login(BuildContext cont) async {
    var url = Uri.http("192.168.10.68", '/login/login.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "voterskey": voterkey.text,
    });
    var data = json.decode(response.body);
    if (data.toString() == "success") {
      Fluttertoast.showToast(
        msg: 'Login Successfully!',
        backgroundColor: Colors.green,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(
        cont,
        MaterialPageRoute(
          builder: (context) => Pres(),
        ),
      );
    } else if (voterkey.text == "") {
      Fluttertoast.showToast(
        msg: 'Please input your Voterskey',
        backgroundColor: Colors.red,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
    } else {
      Fluttertoast.showToast(
        msg: 'Voterskey is Invalid',
        backgroundColor: Colors.red,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Voters Key',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Form(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
                          controller: voterkey,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.purple),
                          decoration: InputDecoration(
                            labelText: 'Voters Key',
                            labelStyle: TextStyle(color: Colors.purple),
                            hintText: 'Enter Voters key',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Center(
                          child: GestureDetector(
                            onTap: (() {
                              login(context);
                            }),
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.purple,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(4, 4),
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: Offset(-4, -4),
                                    )
                                  ]),
                              child: Center(
                                child: Text(
                                  'Enter',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
