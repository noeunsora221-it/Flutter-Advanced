import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_bloc.dart';
import 'post_event.dart';
import 'post_state.dart';
import 'post_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fetch API with Bloc")),

      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          // Loading

          if (state is PostLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          // Loaded Data

          if (state is PostLoaded) {
            return ListView.builder(
              itemCount: state.posts.length,

              itemBuilder: (context, index) {
                final post = state.posts[index];

                return Card(
                  child: ListTile(
                    title: Text(post.title),

                    subtitle: Text(post.body),
                  ),
                );
              },
            );
          }

          // Error

          if (state is PostError) {
            return Center(child: Text(state.message));
          }

          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<PostBloc>().add(fetchPostEvent());
              },

              child: const Text("Fetch Data"),
            ),
          );
        },
      ),
    );
  }
}
