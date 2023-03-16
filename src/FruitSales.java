class FruitSeller {
    final int APPLE_PRICE = 1000; // 과일 금액
    int numOfApple = 20; // 보유하고 있는 사과 개수
    int myMoney = 0; // 수익

    public FruitSeller() {}

    // 과일 판매 함수
    public int saleApple(int money) {
        int num = money / APPLE_PRICE; // 살 수 있는 사과 개수
        numOfApple -= num; // 보유하고 있는 사과 개수에서 구매한 사과 수 빼기
        myMoney += money; // 받아온 값을 수익에 저장
        return num; // 판매한 사과 개수 반환
    }

    // 현재 상황 출력 함수
    public void showSaleResult() {
        System.out.println("남은 사과 개수: " + numOfApple);
        System.out.println("판매 수익: " + myMoney);
    }
}

class FruitBuyer {
    int numOfApple = 0; // 보유하고 있는 사과 개수
    int myMoney = 5000; // 가지고 있는 돈

    public FruitBuyer() {}

    // 과일 구매 함수
    public void buyApple(FruitSeller seller, int money) {
        numOfApple += seller.saleApple(money);
        myMoney -= money;
    }

    // 현재 상황 출력 함수
    public void showBuyResult() {
        System.out.println("현재 잔액: " + myMoney);
        System.out.println("보유한 사과 개수: " + numOfApple);
    }
}


class FruitSales {
    public static void main(String[] args) {
        FruitSeller seller = new FruitSeller();
        FruitBuyer buyer = new FruitBuyer();

        buyer.buyApple(seller, 2000);
        System.out.println("과일 판매자의 현재 상황");
        seller.showSaleResult();

        System.out.println("과일 판매자의 현재 상황");
        buyer.showBuyResult();
    }
}
