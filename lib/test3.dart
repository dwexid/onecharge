import 'helper.dart';
import 'package:collection/collection.dart';


void main() {
  final nums1 = <int>[];
  final nums2 = <int>[];

  final arr1 = readStr('1. Input list of numbers (example: 1,2,3,4):');
  final arr2 = readStr('2. Input list of numbers (example: 1,2,3,4):');

  for (String el in arr1.split(',')) {
    nums1.add(int.parse(el.trim()));
  }

  for (String el in arr2.split(',')) {
    nums2.add(int.parse(el.trim()));
  }

  final joinedArr = [...nums1, ...nums2];
  joinedArr.sort();
  
  final len = joinedArr.length;

  final indexes = <int>[];

  if (len % 2 == 1) {
    indexes.add(((len - 1) / 2).toInt());
  } else {
    indexes.add(((len / 2) - 1).toInt());
    indexes.add((len / 2).toInt());
  }

  final medians = <int>[];
  for (int i = 0; i < indexes.length; i++) {
    medians.add(joinedArr[indexes[i]]);
  }

  late double median;
  if (medians.length == 1) {
    median = medians.sum.toDouble();
  } else {
    median = medians.sum.toDouble() / 2;
  }

  print("The median is (${medians.join('+')}) = $median");
}