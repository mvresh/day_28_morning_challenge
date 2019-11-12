// Challenge
// Flatten a list
// Create a function that takes a list. This list can have all kinds of items, even other lists. The function should return a single, flat, one-dimensional, list with all elements. Here are the conditions:
//
// - If the item is a list, include each item in it and the following still apply:
// - If the item is a Function, include the function's output, not the function itself.
// - If the item is a plain Object or a Primitive, include it as is.

// Example
// flattenList([1, "2", [3, function () { return 4; }, [ "five" ], "six", true, { prop: "val" }]])
//  ➞ [1, "2", 3, 4, "five", "six", true, { prop: "val" }]

List finalList = [];
List flattenList(dynamic givenList){
  if(givenList is List){
    givenList.forEach((item){
      if(item is List){
        flattenList(item);
      }
      else if(item is Function){
        flattenList(Function.apply(item,null));
      }
      else {
        finalList.add(item);
      }
    });
  }
  else{
    finalList.add(givenList);
  }
  return finalList;
}

main() {
  print(flattenList([1, "2",() { return 4; }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]));
  finalList.clear();
  print(flattenList([1, "2",() { return 'how are you'; }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]));
  finalList.clear();
  print(flattenList([1, "2",() { return (4+8); }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]));
  finalList.clear();
  print(flattenList([1, "2",() { return [1,3,5,7,9]; }, [3, 'hello', [ "five" ], "six", true, { 'prop': "val" }]]));
}
