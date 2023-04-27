class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  static TreeNode? sortedArrayToBST(List<int> nums) {
    TreeNode? helper(l, r) {
      if (l > r) {
        return null;
      }
      int m = ((l + r) / 2).floor();
      TreeNode head = TreeNode()..val = nums[m];
      head.left = helper(l, m - 1);
      head.right = helper(m + 1, r);
      return head;
    }

    return helper(0, nums.length - 1);
  }
}

void main(List<String> args) {
  TreeNode? result = Solution.sortedArrayToBST([-10, -3, 0, 5, 9, 10]);
  print(result);
}
