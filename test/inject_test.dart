//import 'package:unittest/unittest.dart';
import 'package:test/test.dart';
import 'package:wired2/wired2.dart';
import 'classes.dart';

main() {  
  // First tests! 
  ApplicationContext.bootstrap();
  
  test('lookup SomeComp', () {
    var bean = ApplicationContext.components.first;
    DoSomeComp dsc = bean;
    expect(dsc.someCalc(), 9);
  });
}

@Config
class SomeConfig {
  
  @Bean
  Counter counter() {
    return new Counter();
  }
  
  @Bean
  Calc calc() {
    return new Calc();
  }
  
}
