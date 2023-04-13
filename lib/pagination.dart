import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practproject/controller.dart';

class Pagination extends StatefulWidget {
  const Pagination({Key? key}) : super(key: key);

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  final Controller _controller =
  Get.put(Controller());

  final ScrollController _scrollController = ScrollController();
  List<String> items = [];
   // bool loading = false;
   // bool allLoaded = false;

   mockFetch() async {
    if (_controller.allLoaded.value) {
      return;
    }


    _controller.allLoaded.value = true;


    await Future.delayed(const Duration(milliseconds: 500));
    List<String> newData = items.length >= 60
        ? []
        : List.generate(20, (index) => "List Item ${index + items.length}");
    if (newData.isNotEmpty) {
      items.addAll(newData);
    }
//    setState(() {
     _controller.loading.value = false;
    //  allLoaded = newData.isEmpty;
     _controller.allLoaded.value=newData.isEmpty;
  //  });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mockFetch();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        print("NEW DATA CALL");
        mockFetch();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (items.isNotEmpty) {
            return Stack(
              children: [
                ListView.separated(
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      if (index < items.length) {
                        return ListTile(
                          title: Text(items[index]),
                        );
                      } else {
                        return SizedBox(
                          width: constraints.maxWidth,
                          height: 50,
                          child: const Center(child: Text("Nothing more to Load")),
                        );
                      }
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 1,
                      );
                    },
                    itemCount: items.length + (//allLoaded
                        _controller.allLoaded.value

                        ? 1 : 0)),
                if (
                //loading
                _controller.loading.value
                ) ...[
                  const Positioned(
                      left: 0,
                      bottom: 0,
                      child: SizedBox(
                        height: 30,
                        child: CircularProgressIndicator(),
                      ))
                ]
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
