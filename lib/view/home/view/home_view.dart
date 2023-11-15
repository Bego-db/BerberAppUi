import 'package:berber/core/components/cards/salon_card_widget.dart';
import 'package:berber/core/components/cards/waiting_card_widget.dart';
import 'package:berber/core/components/categories_card_widget.dart';
import 'package:berber/core/components/cards/categories_label_widget.dart';
import 'package:berber/core/components/home_appbar_widget.dart';
import 'package:berber/core/constants/string_constants.dart';
import 'package:berber/core/extension/padding_ext.dart';
import 'package:berber/view/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _viewModel = HomeViewModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: context.onlyTop20,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: context.horizontal25,
                child: const WaitingCardWidget(),
              ),
            ),
            Expanded(
                   flex: 4,
              child: Padding(
                padding: context.horizontal25,
                child: const TitleWidget(
                  seeAll: true,
                  categoriesTitle: StringConstants.hizmetler,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.separated(
                  padding: context.horizontal25,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoeriesCardWidget(
                      imgPath: _viewModel.catergoriList[index].imgPath,
                      title: _viewModel.catergoriList[index].categoreisLabel),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 15.w,
                      ),
                  itemCount: _viewModel.catergoriList.length),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: context.horizontal25,
                child: const TitleWidget(
                    seeAll: true,
                    categoriesTitle: StringConstants.yakindakiyer),
              ),
            ),
            Expanded(
                flex: 10,
                child: ListView.separated(
                    padding: context.horizontal25,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const SalonCardWidget(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15.w,
                        ),
                    itemCount: 5)),
          ],
        ),
      ),
    );
  }
}
