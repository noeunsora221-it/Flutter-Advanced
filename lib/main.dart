import 'package:flutter/material.dart';
import 'package:getx_apps/api_server.dart';
import 'package:getx_apps/user_model.dart';


void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // calling ApiService to main functions
    final ApiServer apiservice = ApiServer();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API Respone HTTPS",
          style: TextStyle(
            fontSize: 25,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            wordSpacing: 5,
          ),
        ),
      ),

      body: FutureBuilder<List<UserModel>>(
        future: apiservice.fetchData(),
        builder: (context, snapshot) {
          // checking http respones

          // connection state to data
          if (snapshot.connectionState == snapshot.connectionState.name) {
            return Center(child: CircularProgressIndicator());
          }

          // checking data error
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
              // toString data jsons
            );
          }

          // Nodata null noables
          if (!snapshot.hasData ||
              snapshot.data == null ||
              snapshot.data!.isEmpty) {
            return const Center(child: Text("No data found!..."));
          }

          // converting one to one
          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text(users[index].id.toString())),
                title: Text(users[index].name.toString()),
                subtitle: Text(users[index].email.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
