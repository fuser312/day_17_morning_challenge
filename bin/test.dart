import 'main.dart';
import 'package:test/test.dart';

void main() {

  test("Test Case 1",(){
    expect((allPairs([2,4,5,3],7)), ([[2,5], [3,4]]));
  });

  test("Test Case 2",(){
    expect(almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41]), true);
  });


}