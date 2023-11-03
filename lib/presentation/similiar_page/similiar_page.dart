import '../similiar_page/widgets/similiar_item_widget.dart';import 'bloc/similiar_bloc.dart';import 'models/similiar_item_model.dart';import 'models/similiar_model.dart';import 'package:basri_s_application23/core/app_export.dart';import 'package:flutter/material.dart';class SimiliarPage extends StatefulWidget {@override _SimiliarPageState createState() =>  _SimiliarPageState();
static Widget builder(BuildContext context) { return BlocProvider<SimiliarBloc>(create: (context) => SimiliarBloc(SimiliarState(similiarModelObj: SimiliarModel()))..add(SimiliarInitialEvent()), child: SimiliarPage()); } 
 }
class _SimiliarPageState extends State<SimiliarPage> with  AutomaticKeepAliveClientMixin<SimiliarPage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(181), child: BlocSelector<SimiliarBloc, SimiliarState, SimiliarModel?>(selector: (state) => state.similiarModelObj, builder: (context, similiarModelObj) {return ListView.separated(padding: getPadding(left: 9, top: 27, right: 10), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(12));}, itemCount: similiarModelObj?.similiarItemList.length ?? 0, itemBuilder: (context, index) {SimiliarItemModel model = similiarModelObj?.similiarItemList[index] ?? SimiliarItemModel(); return SimiliarItemWidget(model);});}))])))); } 
 }
