// Challenge 1
// Write failing test cases for the next two challenges

// Challenge 2
// All Pairs that Sum to Target
// Create a function that returns all pairs of numbers in an list that sum to a target.
// Sort the pairs in ascending order with respect to the smaller number,
// then order each pair in this order: [smaller, larger].
// Examples
// allPairs([2, 4, 5, 3], 7) ➞ [[2, 5], [3, 4]]
/// 2 + 5 = 7, 3 + 4 = 7

List  allPairs(List list, int n){

  List finalList = [];
  for(int i = 0; i< list.length; i++){
    List tempList = [];
    for(int j = i+1; j<list.length; j++){
      if (list[i]+list[j] == n){
        tempList.add(list[i]);
        tempList.add(list[j]);
      }
    }
    if(tempList.length == 2) {
      tempList.sort();
      finalList.add(tempList);
    }
  }
  return finalList;
}
// Challenge 3
// Almost Sorted Sequence
// An almost-sorted sequence is a sequence that is strictly increasing
// if you remove a single element from the list
// (no more, no less). Write a function that returns true if an list is almost-sorted,
// and false otherwise.
/// For example, if you remove 80 from the first example,
/// it is perfectly sorted in ascending order.
// Examples
// almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41] ) ➞ true

bool almostSorted(List<int> list){
  int toRemove;
  int count = 0;
  for(int i = 0; i<list.length-1; i++){
    if(list[i] > list[i+1]){
      int tempNum = list[i];
      count++;
      toRemove = tempNum;
    }
  }
  if (count == 1){
    list.remove(toRemove);
    return true;
  }
  else {
    return false;
  }
}

main() {
  print(allPairs([2, 4, 5, 3], 7));
  print(almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41] ));
}
