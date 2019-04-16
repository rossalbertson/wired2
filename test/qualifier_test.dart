//import 'package:unittest/unittest.dart';
import 'package:test/test.dart';
import 'package:wired2/wired2.dart';
import 'classes.dart';

main() {  
  // First tests! 
  ApplicationContext.bootstrap();
  
  test('named bean', () {
    var bean = ApplicationContext.getBean("firstCounter");
    Counter dsc = bean;
    expect(dsc.count, 1);
  });
}

@Config
class SomeConfig {
  
  @Bean
  @Qualifier(name: "firstCounter")
  Counter counter() {
    return new Counter(count: 1);
  } 
  
  @Bean
  @Qualifier(name: "secondCounter")
  Counter counter2() {
    return new Counter(count: 5);
  }
  
}