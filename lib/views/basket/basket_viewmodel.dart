import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/services/basketService.dart';

class BasketViewModel extends BaseViewModel {
  String _title = 'Basket View';
  String get title => _title;
  final _basketService = locator<BasketService>();
  final _logger = Logger();
  int _total = 0;
  int _items = 0;
  int get total => _total;
  Map<Product, int> get productList => _basketService.productList;

  void addProduct(int squantity, Product sproduct) {
    _basketService.addProduct(squantity, sproduct);
    notifyListeners();
  }

  void removeQuantityOfProduct(int squantity, Product product) {
    _basketService.removeQuantityOfProduct(squantity, product);
    notifyListeners();
  }

  void removeAllProduct(Product product) {
    _basketService.removeAllProduct(product);
    notifyListeners();
  }

  int getitemNumber() {
    this._items = _basketService.getTotalItems();
    return this._items;
  }

  int getTotal() {
    this._total = _basketService.getTotal();
    //notifyListeners();
    return _total;
  }
}
