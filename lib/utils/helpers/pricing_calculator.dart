class FPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax rate

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    switch (location) {
      case 'Jakarta':
        return 0.1;
      case 'Bandung':
        return 0.15;
      case 'Surabaya':
        return 0.2;
      default:
        return 0.05;
    }
  }

  static double getShippingCost(String location) {
    switch (location) {
      case 'Jakarta':
        return 1000;
      case 'Bandung':
        return 1500;
      case 'Surabaya':
        return 2000;
      default:
        return 500;
    }
  }
}
