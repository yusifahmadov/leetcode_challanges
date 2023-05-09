class Solution {
  static void rotate(List<List<int>> matrix) {
    int j = 0;
    List<List<int>> matrixN = matrix;

    while (j < matrix.length) {
      int i = matrix.length - 1;
      int ptr = 0;

      List<int> arr = matrixN[j];
      while (i > -1) {
        print("Matrix[i][j]=${matrix[i][j]} - arr[ptr]=${arr[ptr]} -- matrix[j]=${matrixN[j]}");

        matrix[i][j] = arr[j];
        i--;
        ptr++;
      }
      j++;
    }
    print(matrixN);
  }
}

void main(List<String> args) {
  Solution.rotate([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]);
}
