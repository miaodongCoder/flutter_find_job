part of profile_category_page;

class ProfileCategoryController extends GetxController {
  List<CategoryModel> selected = [];

  List<CategoryModel> get categories => ConfigStore.to.categories;

  void changedCategories(List<CategoryModel> value) => selected = value;
}
