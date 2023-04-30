class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  static TreeNode? invertTree(TreeNode? root) {
    if (root == null) {
      return null;
    }
    swap(root);
    invertTree(root.left);

    invertTree(root.right);

    return root;
  }

  static void swap(TreeNode? root) {
    if (root == null) {
      return;
    }

    TreeNode? temp = root.left;
    root.left = root.right;
    root.right = temp;
  }
}

void main(List<String> args) {
  TreeNode root = TreeNode(4);
  root.left = TreeNode(2);
  root.right = TreeNode(7);
  root.left!.left = TreeNode(1);
  root.left!.right = TreeNode(3);
  root.right!.right = TreeNode(9);
  root.right!.left = TreeNode(7);
  TreeNode? result = Solution.invertTree(root);
  print(result?.left?.left?.val);
  print(result?.left?.right?.val);
}
