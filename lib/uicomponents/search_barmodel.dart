import 'package:logger/logger.dart';
import 'package:supabase/supabase.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/services/productService.dart';
import 'package:stacked/stacked.dart';

class SearchBarModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _logger = Logger();
  List<Product?> _data = [];
  List<Product?>? get products => _data;

  Future<List<Product>?> _fetchProducts({filter: String}) async {
    final PostgrestResponse response;
    response = await _productService.all();

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    List<dynamic> data = response.data;
    data.removeWhere((value) => value["product"] == null);

    if (filter != "") {
      data.removeWhere((value) => !(value["product"]["title"]
          .toLowerCase()
          .contains(filter.toLowerCase())));
    }
    _logger.i(data);
    _data = data.map((e) => Product.fromJson(e["product"])).toList();
    return data.map((e) => Product.fromJson(e["product"])).toList();
  }

  Future<void> onSearchOnList({filter: String}) async {
    await _fetchProducts(filter: filter);
    notifyListeners();
  }
}
