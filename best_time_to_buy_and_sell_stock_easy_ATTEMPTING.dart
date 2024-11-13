class Solution {
  int maxProfit(List<int> prices) {
    int buyDate = 1;
    int sellDate = 2;
    int buyPrice = prices[0];
    int sellPrice = 0;
    for (var i = 0; i < prices.length - 1; i++) {
      if (prices[i] < buyPrice) {
        buyPrice = prices[i];
        buyDate = i + 1;
      }
    }

    for (var i = (buyDate - 1) < 0 ? 0 : buyDate - 1; i < prices.length; i++) {
      if (buyPrice < prices[i] && sellPrice < prices[i]) {
        sellPrice = prices[i];
        sellDate = i + 1;
      }
    }

    print("BUY DATE: ${buyDate} - BUY PRICE: ${buyPrice}");
    print("SELL DATE: ${sellDate} - SELL PRICE: ${sellPrice}");

    return sellPrice == 0 ? sellPrice : sellPrice - buyPrice;
  }
}

void main(List<String> args) {
  final result = Solution().maxProfit([3, 2, 6, 5, 0, 3]);
  print(result);
}
