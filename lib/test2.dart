import 'helper.dart';
import 'dart:collection';

final class Entry<T> extends LinkedListEntry<Entry<T>> {
  T value;

  Entry(this.value);

  @override
  String toString() {
    return '$value';
  }
}

void main() {
  final linkedList = LinkedList<Entry<int>>();

  final arr = readStr('1. Input list of numbers (example: 1,2,3,4):');

  for (String el in arr.split(',')) {
    final val = int.parse(el.trim());
    linkedList.add(Entry(val));
  }

  final len = linkedList.length;

  late int middleNodeIdx;
  if (len % 2 == 1) {
    middleNodeIdx = ((len - 1) / 2).toInt();
  } else {
    middleNodeIdx = (len / 2).toInt();
  }
  final middleNode = linkedList.elementAt(middleNodeIdx);

  Entry<int>? node = middleNode;
  final serialization = [];
  do {
    serialization.add(node);
    node = node?.next;
  } while (node != null);

  print('Node $middleNode from this list (Serialization: ${serialization
      .toString()})');
}