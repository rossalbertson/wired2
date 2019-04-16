//import 'package:unittest/unittest.dart';
import 'package:test/test.dart';
import 'package:wired2/wired2.dart';
import 'classes.dart';

main() {
  // First tests!
  ApplicationContext.bootstrap();

  test('order SomeComp', () {
    var bean = ApplicationContext.components.first;
    DoSomeComp dsc = bean;
    expect(dsc.someCalc(), 9);
  });
}

@Config
@Order(2)
class ConfigComp {

  @Bean
  DoSomeComp doSomeComp() {
    return new DoSomeComp();
  }

}

@Config
@Order(1)
class SomeConfig {

  @Bean
  Calc calc() {
    return new Calc();
  }

  @Bean
  Counter counter() {
    return new Counter();
  }

}
