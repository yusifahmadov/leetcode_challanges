class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

ListNode a = ListNode(2, ListNode());

class Solution {
  static ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    List<int> allData = [];
    List<int> sortedList = allData;
    ListNode? curr = list1;
    ListNode? curr2 = list2;
    int list1Count = 0;
    int list2Count = 0;
    while (curr != null) {
      list1Count++;
      curr = curr.next;
    }

    while (curr2 != null) {
      list2Count++;
      curr2 = curr2.next;
    }

    ListNode? currFor = list1;
    ListNode? currFor2 = list2;

    for (var i = 0; i < list1Count; i++) {
      if (currFor != null) {
        allData.add(currFor.val);
      }
      currFor = currFor?.next;
    }
    for (var i = 0; i < list2Count; i++) {
      if (currFor2 != null) {
        allData.add(currFor2.val);
      }
      currFor2 = currFor2?.next;
    }

    for (var i = 0; i < allData.length - 1; i++) {
      for (var j = i; j < allData.length; j++) {
        if (allData[i] > allData[j]) {
          int element = sortedList[j];
          sortedList[j] = sortedList[i];
          sortedList[i] = element;
        }
      }
    }

    ListNode? root = null;

    for (var i = 0; i < sortedList.length; i++) {
      ListNode temp = new ListNode();
      ListNode? ptr;
      temp.val = sortedList[i];
      temp.next = null;

      if (root == null) {
        root = temp;
      } else {
        ptr = root;
        while (ptr?.next != null) {
          ptr = ptr?.next;
        }
        ptr?.next = temp;
      }
    }

    return root;
  }
}

void main(List<String> args) {
  ListNode? list = Solution.mergeTwoLists(ListNode(2, ListNode(3, ListNode(4))), ListNode(1, ListNode(2, ListNode(3))));
  print(list);
}
