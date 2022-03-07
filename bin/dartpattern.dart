import 'dart:io';

void nomor1(int n) {
  print("Nomor 1 adalah $n");
}

void nomor2(int n) {
  int max = n;
  if (n > 9) {
    max = 9;
  }
  int temp = 1;
  int temp1 = max;
  for (int i = n; i > 0; i--) {
    for (int j = 0; j < n; j++) {
      if (j < i) {
        stdout.write(temp);
        temp++;
        if (temp > max) {
          temp = 1;
        }
      } else {
        stdout.write(" ");
      }
    }
    for (int j = n; j > 0; j--) {
      if (j <= i) {
        stdout.write(temp1);
        temp1--;
        if (temp1 == 0) {
          temp1 = max;
        }
      } else {
        stdout.write(" ");
      }
    }
    stdout.write("\n");
  }
}

void main(List<String> arguments) {
  String? n;
  stdout.write("Masukan jumlah n untuk nomor 1: ");
  n = stdin.readLineSync();
  nomor1(int.parse(n!));

  stdout.write("Masukan jumlah n untuk nomor 2: ");
  n = stdin.readLineSync();
  nomor2(int.parse(n!));
}
