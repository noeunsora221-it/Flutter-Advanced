import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'api_service.dart';
import 'post_controller.dart';
import 'post_model.dart';
import 'post_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  
  Widget build(BuildContext context) {
    final PostController controller = PostController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GETX API",
          style: TextStyle(
            fontSize: 35,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Obx(() {
        // checking validated
        if (controller.isloading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.postList.length,
          itemBuilder: (context, index) {
            final post = controller.postList[index];
            return ListTile(
              title: Text(post.title),
              subtitle: Text("ID : ${post.id}"),
            );
          },
        );
      }),
    );
  }
}
