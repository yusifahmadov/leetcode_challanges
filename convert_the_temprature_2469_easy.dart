class Solution {
  static List<double> convertTemperature(double celsius) {
    return [celsius + 273.15, celsius * 1.80 + 32];
  }
}

void main(List<String> args) {
  List<double> result = Solution.convertTemperature(36.5);
  print(result);
}
