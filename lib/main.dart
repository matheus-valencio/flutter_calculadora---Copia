// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculos.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: "Transf. de temperatura",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController valor = TextEditingController();
  Calcular c = Calcular();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 80),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
            decoration: BoxDecoration(
              color: Color.fromARGB(68, 86, 174, 247),
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: TextField(
              enabled: false,
              controller: valor,
              decoration: InputDecoration(labelText: "Calcular"),
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 60.0,
                color: Colors.black,
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto",
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 0, right: 130, top: 5, bottom: 35),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      valor.text = '';
                    });
                  },
                  child: const Text(
                    "C",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 35),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String str = valor.text;
                      if (str != null && str.length > 0) {
                        str = str.substring(0, str.length - 1);
                      }
                      valor.text = str;
                    });
                  },
                  child: const Icon(Icons.backspace_outlined, size: 59),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '7';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "7",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '8';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "8",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '9';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "9",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      String z;
                      String negativo;
                      String removeNegativo;
                      z = valor.text;
                      if (z.length == 0) {
                      } else {
                        if (z.contains('/') ||
                            z.contains('+') ||
                            z.contains('-') ||
                            z.contains('*')) {
                          negativo = z.substring(0, 1);
                          if (negativo.contains('-') && z.length > 1) {
                            removeNegativo = z.substring(1);
                            if (removeNegativo.contains('/') ||
                                removeNegativo.contains('+') ||
                                removeNegativo.contains('-') ||
                                removeNegativo.contains('*')) {
                            } else {
                              y = valor.text + '*';
                              valor.text = y;
                            }
                          }
                        } else {
                          y = valor.text + '*';
                          valor.text = y;
                        }
                      }
                    });
                  },
                  child: const Text(
                    "x",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '4';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "4",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '5';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "5",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '6';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "6",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      String z;
                      String negativo;
                      String removeNegativo;
                      z = valor.text;

                      if (z.contains('/') ||
                          z.contains('+') ||
                          z.contains('-') ||
                          z.contains('*')) {
                        negativo = z.substring(0, 1);
                        if (negativo.contains('-') && z.length > 1) {
                          removeNegativo = z.substring(1);
                          if (removeNegativo.contains('/') ||
                              removeNegativo.contains('+') ||
                              removeNegativo.contains('-') ||
                              removeNegativo.contains('*')) {
                          } else {
                            y = valor.text + '-';
                            valor.text = y;
                          }
                        }
                      } else {
                        y = valor.text + '-';
                        valor.text = y;
                      }
                    });
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '1';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "1",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '2';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "2",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '3';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "3",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      String z;
                      String negativo;
                      String removeNegativo;
                      z = valor.text;
                      if (z.length == 0) {
                      } else {
                        if (z.contains('/') ||
                            z.contains('+') ||
                            z.contains('-') ||
                            z.contains('*')) {
                          negativo = z.substring(0, 1);
                          if (negativo.contains('-') && z.length > 1) {
                            removeNegativo = z.substring(1);
                            if (removeNegativo.contains('/') ||
                                removeNegativo.contains('+') ||
                                removeNegativo.contains('-') ||
                                removeNegativo.contains('*')) {
                            } else {
                              y = valor.text + '+';
                              valor.text = y;
                            }
                          }
                        } else {
                          y = valor.text + '+';
                          valor.text = y;
                        }
                      }
                    });
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      String z;
                      String negativo;
                      String removeNegativo;
                      z = valor.text;

                      if (z.length == 0) {
                      } else {
                        if (z.contains('/') ||
                            z.contains('+') ||
                            z.contains('-') ||
                            z.contains('*')) {
                          negativo = z.substring(0, 1);
                          if (negativo.contains('-') && z.length > 1) {
                            removeNegativo = z.substring(1);
                            if (removeNegativo.contains('/') ||
                                removeNegativo.contains('+') ||
                                removeNegativo.contains('-') ||
                                removeNegativo.contains('*')) {
                            } else {
                              y = valor.text + '/';
                              valor.text = y;
                            }
                          }
                        } else {
                          y = valor.text + '/';
                          valor.text = y;
                        }
                      }
                    });
                  },
                  child: const Text(
                    "/",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 00),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '0';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    "0",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String y;
                      y = valor.text + '.';
                      valor.text = y;
                    });
                  },
                  child: const Text(
                    ".",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String v;
                      String resultado;
                      v = valor.text;
                      c.x = v;
                      resultado = c.inter().toString();
                      valor.text = resultado;

                      SystemChannels.textInput.invokeMethod('TextInput.hide');
                    });
                  },
                  child: const Text(
                    "=",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
