import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:volt_threshold/volt_threshold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = '';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  initPlatformState() {
    final list = List();
    final seed = getSeed();
    print('seed is:\n$seed');
    list.add(seed);

    final privatekey = deriveKey(seed, 'm/0');
    print('privatekey is:\n$privatekey');
    list.add(privatekey);

    final pubkey = getPublicKey(privatekey);
    print('public key is:\n$pubkey');
    list.add(pubkey);

    final sig = getMessageSig("test", privatekey);
    print('sig is:\n$sig');
    list.add(sig);

    data = list.join('');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('result is: $data\n'),
        ),
      ),
    );
  }
}
