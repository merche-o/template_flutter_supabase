import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/services/categoryService.dart';
import 'package:template_flutter_supabase/services/productService.dart';

class ProductListViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _categoryService = locator<CategoryService>();
  final _navService = locator<NavigationService>();

  String _title = 'Product List View';
  String get title => _title;
  final _logger = Logger();
  final _filter = "";
  List<Product?> _data = [];
  List<Product?>? get products => _data;

  ProductListViewModel() {
    onRefreshList();
  }

  Future<List<Product>?> futureToRun() => _fetchProducts();
  // TODO: implement futureToRun

  Future<List<Product>?> _fetchProducts() async {
    final PostgrestResponse response;
    if (_filter == "") {
      response = await _productService.byCategory(
          categoryid: _categoryService.currentCategory);
    } else {
      response = await _productService.filtered(filter: _filter);
    }
    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    List<dynamic> data = response.data;
    _data = data.map((e) => Product.fromJson(e["product"])).toList();
    return data.map((e) => Product.fromJson(e["product"])).toList();
  }

  Future<void> onRefreshList() async {
    await _fetchProducts();
    //_logger.i(data);
    notifyListeners();
  }

  Future<void> onSearchOnList({filter: String}) async {
    await _fetchProducts();
    notifyListeners();
  }

  void moveToDetailView(Product product) async {
    _navService.navigateTo(Routes.detailsScreen, arguments: {product: product});
    //   await _navService.navigateToView(DetailsScreen(product));
  }
}
