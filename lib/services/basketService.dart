import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:stacked/stacked.dart';

class BasketService {
  Map<Product, int> _productList = new Map<Product, int>();
  Map<Product, int> get productList => _productList;
  int productQ = 0;

  void addProduct(int squantity, Product sproduct) {
    if (_productList[sproduct] != null) {
      _productList[sproduct] = _productList[sproduct]!.toInt() + squantity;
    } else {
      _productList[sproduct] = squantity;
    }
  }

  void removeQuantityOfProduct(int squantity, Product product) {
    if (_productList[product] != null) {
      _productList[product] = _productList[product]!.toInt() - squantity;
      if (_productList[product]! <= 0) {
        _productList.remove(product);
      }
    }
  }

  void removeAllProduct(Product product) {
    if (_productList[product] != null) {
      _productList.remove(product);
    }
  }

  int getTotalItems() {
    int total = 0;

    for (var item in _productList.entries) {
      total += item.value;
    }
    return total;
  }

  int getTotal() {
    int total = 0;

    for (var item in _productList.entries) {
      total += (item.value * item.key.price!);
    }

    return total;
  }
}
