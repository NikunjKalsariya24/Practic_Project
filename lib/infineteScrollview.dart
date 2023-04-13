import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loadmore/loadmore.dart';

class infinitescrollview extends StatefulWidget {

 infinitescrollview({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  State<infinitescrollview> createState() => _infinitescrollviewState();
}

class _infinitescrollviewState extends State<infinitescrollview> {
  int get count => list.length;

  List<int> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void load() {
    if (kDebugMode) {
      print("load");
    }
    setState(() {
     list.addAll(List.generate(15, (v) => v));
     list.addAll(List.generate(15, (v) => v));
      if (kDebugMode) {
        print("data count================ ${list.length}");
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: LoadMore(
         // isFinish: count >= 100,
          onLoadMore: _loadMore,
          whenEmptyLoad: false,
          delegate: const DefaultLoadMoreDelegate(),
          textBuilder: DefaultLoadMoreTextBuilder.chinese,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 40.0,
                alignment: Alignment.center,
                child: Text(list[index].toString()),
              );
            },
            itemCount: count,
          ),
        ),
      ),
    );
  }

  Future<bool> _loadMore() async {
    if (kDebugMode) {
      print("onLoadMore");
    }
    await Future.delayed(const Duration(seconds: 0, milliseconds: 2000));
    load();
    return true;
  }

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 0, milliseconds: 2000));
    list.clear();
    load();
  }
}
