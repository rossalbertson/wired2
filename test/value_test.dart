//import 'package:unittest/unittest.dart';
import 'package:test/test.dart';
import 'package:wired2/wired2.dart';
import 'classes.dart';

main() {  
  // first read yaml
  
  // then fill it in
  ApplicationContext.registerMessage("sentences", "sentence: Is this good?");
  ApplicationContext.bootstrap();
  
  test('named bean', () {
    var bean = ApplicationContext.getBean("upperCase");
    UpperCase dsc = bean;
    expect(dsc.value, "IS THIS GOOD?");
  });
}

@Config
class SomeConfig {
  
  @Value("sentence")
  String value;
  
  @Bean
  UpperCase upperCase() {
    return new UpperCase(value);
  } 
  
}