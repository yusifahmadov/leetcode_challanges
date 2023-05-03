class Solution {
  static double average(List<int> salary) {
    for (var i = 0; i < salary.length - 1; i++) {
      if (salary[i] > salary[i + 1]) {
        int curr = salary[i];
        salary[i] = salary[i + 1];
        salary[i + 1] = curr;
        i = -1;
      }
    }

    salary.removeAt(0);
    salary.removeAt(salary.length - 1);
    int sum = 0;
    for (var i = 0; i < salary.length; i++) {
      sum += salary[i];
    }

    return sum / salary.length;
  }
}

void main(List<String> args) {
  double result = Solution.average([8000, 9000, 2000, 3000, 6000, 1000]);
  print(result);
}
