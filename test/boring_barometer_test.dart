import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:boring_barometer/boring_barometer.dart';

void main() {
  const MethodChannel channel = MethodChannel('boring_barometer');

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
    expect(await BoringBarometer.platformVersion, '42');
  });
}
