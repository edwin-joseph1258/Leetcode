class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    Map<String, String> map = {
      ')': '(',
      '}': '{',
      ']': '['
    };

    for (String char in s.split('')) {
      if (map.values.contains(char)) {
        stack.add(char);
      } else {
        if (stack.isEmpty || stack.removeLast() != map[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}