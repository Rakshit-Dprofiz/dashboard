class Detail {
  final String title;
  final int value;

  Detail({
    required this.title,
    required this.value,
  });

  // Static list of details
  static List<Detail> detail = [
    Detail(title: "Total Partner", value: 28),
    Detail(title: "Total Shop", value: 17),
    Detail(title: "Total Customer", value: 71),
    Detail(title: "Total QR code scan", value: 29),
    Detail(title: "Total Offers", value: 161),
    Detail(title: "Total Redeem Coupon", value: 6),
    Detail(title: "Total Unredeem Coupon", value: 153),
    Detail(title: "Total expired coupon", value: 159),
  ];
}
