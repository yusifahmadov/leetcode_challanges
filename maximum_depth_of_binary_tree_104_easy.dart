import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  static int maxDepth(TreeNode? root) {
    Queue<TreeNode?> queue = Queue<TreeNode?>();
    if (root == null) {
      return queue.length;
    }
    int depth = 0;
    queue.add(root);
    queue.add(null);

    while (!queue.isEmpty) {
      TreeNode? temp = queue.first;
      queue.removeFirst();
      if (temp == null) {
        depth++;
      }
      if (temp != null) {
        if (temp.left != null) {
          queue.add(temp.left);
        }
        if (temp.right != null) {
          queue.add(temp.right);
        }
      } else if (!queue.isEmpty) {
        queue.add(null);
      }
    }

    return depth;
  }
}

void main(List<String> args) {
  TreeNode? root = TreeNode(3);
  root.left = TreeNode(9);
  // root.left?.left = TreeNode(12);
  root.right = TreeNode(20);
  root.right?.left = TreeNode(15);
  root.right?.right = TreeNode(7);
  // root.left = TreeNode(1);
  // root.right = TreeNode(2);
  int result = Solution.maxDepth(root);
  print(result);
}
