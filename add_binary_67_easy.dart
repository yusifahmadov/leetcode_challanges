class Solution {
  static String addBinary(String a, String b) {
    BigInt sum1 = BigInt.from(0);
    BigInt sum2 = BigInt.from(0);
    BigInt result = sum1 + sum2;
    a = a.split("").reversed.join();
    b = b.split("").reversed.join();
    for (var i = 0; i < a.length; i++) {
      sum1 += (BigInt.parse(a[i]) * (BigInt.from(2).pow(i)));
    }
    for (var i = 0; i < b.length; i++) {
      sum2 += (BigInt.parse(b[i]) * (BigInt.from(2).pow(i)));
    }
    result = sum1 + sum2;
    int remainder = 0;
    List<String> str = [];
    while (result > BigInt.from(0)) {
      remainder = result.remainder(BigInt.from(2)).toInt();

      result = result ~/ BigInt.from(2);
      // print("Result: ${result} - Remainder - ${remainder}");

      if (remainder == 1 || remainder == 0) {
        str.add(remainder.toString());
      } else {
        str.add(result.toString());
      }
    }

    return str.isEmpty ? "0" : str.reversed.join();
  }
}

void main(List<String> args) {
  var result = Solution.addBinary("10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101",
      "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011");
  print(result);
}
