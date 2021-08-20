import 'package:template_flutter_supabase/model/categories/category.dart';
import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/services/categoryService.dart';

class CategoryHeaderViewModel extends FutureViewModel<List<Category>?> {
  final _categoryService = locator<CategoryService>();

  final _logger = Logger();

  CategoryHeaderViewModel() {
    onRefreshList();
  }

  bool get hasCategory {
    if (data == null) return false;

    return data!.length > 0;
  }

  @override
  Future<List<Category>?> futureToRun() async {
    // TODO: implement futureToRun
    return await _fetchCategory();
  }

  Future<List<Category>?> _fetchCategory() async {
    final PostgrestResponse response;

    response = await _categoryService.all();
    // _logger.i(response.data);
    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    List<dynamic> data = response.data;
    return data.map((e) => Category.fromJson(e)).toList();
  }

  void setCategoryId(int selection) {
    _categoryService.currentCategory = data?[selection].id ?? "";
  }

  Future<void> onRefreshList() async {
    await futureToRun();
    notifyListeners();
  }
}
