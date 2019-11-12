import 'package:test/test.dart';
import 'main.dart';

void main() {
  test('test 1', () {
    expect(flattenList([1, "2",() { return 4; }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]), [1, '2', 4, 3, 'hello', 'five', 'six', true, {'prop': 'val'}]);
  });

  test('test 2', () {finalList.clear();
    expect(flattenList([1, "2",() { return 'how are you'; }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]), [1, '2', 'how are you', 3, 'hello', 'five', 'six', true, {'prop': 'val'}]);
  });

  test('test 3', () {finalList.clear();
    expect(flattenList([1, "2",() { return (4+8); }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]), [1, '2', 12, 3, 'hello', 'five', 'six', true, {'prop': 'val'}]);
  });

  test('test 4', () {finalList.clear();
    expect(flattenList([1, "2",() { return [1,3,5,7,9]; }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]), [1, '2', 1,3,5,7,9, 3, 'hello', 'five', 'six', true, {'prop': 'val'}]);
  });
}