class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  static ListNode? reverseList(ListNode? head) {
    List<int> order = [];
    if (head == null) {
      return null;
    }

    int count = 0;
    ListNode? temp = head;
    while (temp != null) {
      temp = temp.next;
      count++;
    }
    ListNode? temp1 = head;

    for (var i = 0; i < count; i++) {
      temp1 != null ? order.add(temp1.val) : null;

      temp1 = temp1?.next;
    }
    order = order.reversed.toList();
    ListNode? temp2 = null;

    for (var i = 0; i < order.length; i++) {
      ListNode? temp = ListNode();
      ListNode? ptr;
      temp.val = order[i];
      temp.next = null;
      if (temp2 == null) {
        temp2 = temp;
      } else {
        ptr = temp2;
        while (ptr?.next != null) {
          ptr = ptr?.next;
        }
        ptr?.next = temp;
      }
    }

    return temp2;
  }
}

void main(List<String> args) {
  ListNode? head = ListNode(1);
  head.next = ListNode(2);
  head.next!.next = ListNode(3);
  head.next!.next!.next = ListNode(4);
  head.next!.next!.next!.next = ListNode(5);

  ListNode? result = Solution.reverseList(head);
  print(result?.val);
  print(result?.next?.val);
  print(result?.next?.next?.val);
  print(result?.next?.next?.next?.val);
}
