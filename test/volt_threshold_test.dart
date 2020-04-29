import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:volt_threshold/volt_threshold.dart';

void main() {
  const MethodChannel channel = MethodChannel('volt_threshold');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
//    expect(await VoltThreshold.platformVersion, '42');
  });
}
