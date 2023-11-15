import 'package:berber/view/home/model/categories_model.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  final List<CategoriesModel> catergoriList = [
    CategoriesModel("assets/images/sackesim.jpg", "Saç Kesimi"),
    CategoriesModel("assets/images/bakım.jpg", "Bakım"),
    CategoriesModel("assets/images/epilasyon.jpg", "Epilasyon"),
    CategoriesModel("assets/images/sackesim.jpg", "Saç Kesimi"),
    CategoriesModel("assets/images/bakım.jpg", "Bakım"),
    CategoriesModel("assets/images/epilasyon.jpg", "Epilasyon"),
  ];
}
