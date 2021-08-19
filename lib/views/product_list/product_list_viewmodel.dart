import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/services/productService.dart';

class ProductListViewModel extends FutureViewModel<List<Product>?> {
  final _productService = locator<ProductService>();
  String _title = 'Product List View';
  String get title => _title;
  final _logger = Logger();

  ProductListViewModel() {
    onRefreshList();
  }
  bool get hasProducts {
    if (data == null) return false;

    return data!.length > 0;
  }

  @override
  Future<List<Product>?> futureToRun() async {
    // TODO: implement futureToRun
    return await _fetchProducts(filter: "");
  }

  Future<List<Product>?> _fetchProducts({filter: String}) async {
    final PostgrestResponse response;
    if (filter == "") {
      response = await _productService.all();
    } else {
      response = await _productService.filtered(filter: filter);
    }
    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    List<dynamic> data = response.data;
    return data.map((e) => Product.fromJson(e)).toList();
  }

  Future<void> onRefreshList() async {
    await futureToRun();
    notifyListeners();
  }

  Future<void> onSearchOnList({filter: String}) async {
    await _fetchProducts(filter: filter);
    notifyListeners();
  }
}
