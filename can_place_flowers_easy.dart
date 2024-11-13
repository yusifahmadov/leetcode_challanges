class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    // We need to find a place whose neighbors are empty.
    // 1,0,0,0,1 and n=1 -> We can place a flower in the middle of the flowerbed
    // 1,0,0,0,1 and n=2 -> We cannot place two flowers in the flowerbed because of violation the no-adjacent-flowers

    // 1,0,0,0,1 and n=2
    // We'll check the left side and right side. If they are empty, then we can place a flower.
    // And also we need to substract the number of placed flowers from the given one

    int placedFlowers = 0;

    for (var i = 0; i < flowerbed.length; i++) {
      if (flowerbed.length == 1 && flowerbed[0] == 0) {
        placedFlowers++;
        break;
      } else {
        if (flowerbed[i] == 1) {
          i++;
        } else {
          if (i == 0 && flowerbed[i + 1] == 0) {
            placedFlowers++;
          } else if (i == flowerbed.length - 1) {
            if (flowerbed[i - 1] == 0) {
              placedFlowers++;
            }

            break;
          } else if (i != 0 && flowerbed[i + 1] == 0 && flowerbed[i - 1] == 0) {
            placedFlowers++;
          }
          i++;
        }
      }
    }
    return placedFlowers >= n;
  }
}

void main(List<String> args) {
  final result = Solution().canPlaceFlowers([0, 1, 0, 1, 0, 1, 0, 0], 1);

  print(result);
}
