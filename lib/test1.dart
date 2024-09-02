import 'helper.dart';

void main() {
  final len = readInt('n:');

  for (int i = 0; i <= len; i++) {
    String tmp = '';
    for (int j = len; j > i; j--) {
      tmp = '$tmp ';
    }
    for (int j = 0; j < i; j++) {
      tmp = '$tmp*';
    }
    print(tmp);
  }
}