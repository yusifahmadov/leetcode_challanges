class Solution {
  static void merge(List<int> nums1, int m, List<int> nums2, int n) {
    nums1.removeRange(m, nums1.length);
    nums1.addAll(nums2);
    for (var i = 0; i < nums1.length - 1; i++) {
      if (nums1[i] > nums1[i + 1]) {
        int temp = nums1[i];
        nums1[i] = nums1[i + 1];
        nums1[i + 1] = temp;

        i = -1;
      }
    }
    print(nums1);
  }
}

void main(List<String> args) {
  Solution.merge([4, 5, 6, 0, 0, 0], 3, [1, 2, 3], 3);
}
