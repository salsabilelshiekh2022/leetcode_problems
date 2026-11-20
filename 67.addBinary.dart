void main() {
  Solution s = Solution();
  print(s.addBinary("11", "1")); // Output: "100"
  print(s.addBinary("1010", "1011")); // Output: "10101"
}

class Solution {
  String addBinary(String a, String b) {
    int i = a.length - 1;
    int j = b.length - 1;
    int carry = 0;

    String result = '';

    while (i >= 0 || j >= 0 || carry != 0) {
      int bitA = i >= 0 ? int.parse(a[i]) : 0;
      int bitB = j >= 0 ? int.parse(b[j]) : 0;

      int sum = bitA + bitB + carry;

      int digit = sum % 2;
      carry = sum ~/ 2;

      result += digit.toString();

      i--;
      j--;
    }

    return result.split('').reversed.join();
  }
}
