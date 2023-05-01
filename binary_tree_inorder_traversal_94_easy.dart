class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  static List<int> inorderTraversal(TreeNode? root) {
    if (root == null) {
      return [];
    }

    List<int> order = inorderTraversal(root.left);
    order.add(root.val);

    order.addAll(inorderTraversal(root.right));

    return order;
  }
}

void main(List<String> args) {
  TreeNode? root = TreeNode(25);

  root.left = TreeNode(15);
  root.left!.left = TreeNode(10);
  root.left!.right = TreeNode(22);
  root.left!.right!.left = TreeNode(18);
  root.left!.right!.right = TreeNode(24);
  root.left!.left!.left = TreeNode(4);
  root.left!.left!.right = TreeNode(12);

  root.right = TreeNode(50);
  root.right!.left = TreeNode(35);
  root.right!.left!.left = TreeNode(31);
  root.right!.left!.right = TreeNode(44);
  root.right!.right = TreeNode(70);
  root.right!.right!.left = TreeNode(66);
  root.right!.right!.right = TreeNode(90);
  List<int> result = Solution.inorderTraversal(root);
  print(result);
}
