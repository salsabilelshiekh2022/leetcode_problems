void main() {
  Solution s = Solution();
  print(s.findTheDifference("abcd", "abecd")); // Output: "e"
  print(s.findTheDifference("a", "aa")); // Output: "a"
  print(s.findTheDifference("ae", "aea")); // Output: "a"
}

class Solution {
  String findTheDifference(String s, String t) {
    int result = 0;

    for (int i = 0; i < s.length; i++) {
      result ^= s.codeUnitAt(i);
    }

    for (int i = 0; i < t.length; i++) {
      result ^= t.codeUnitAt(i);
    }

    return String.fromCharCode(result);
  }
}
