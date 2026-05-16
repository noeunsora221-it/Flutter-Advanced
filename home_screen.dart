import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/3a/ed/df/3aeddfe73e098119f6253cb361987311.jpg",
            ),
          ),
        ],
        title: Text(
          "Category of Product",
          style: TextStyle(
            fontSize: 22,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: InkWell(
        canRequestFocus: true,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Card(
                          elevation: 50,

                          child: Container(
                            width: 200,
                            height: 330,

                            child: SizedBox(
                              height: 40,
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://i.pinimg.com/736x/92/a5/57/92a557158114ef453dfc0ccf808c140c.jpg",
                                    width: 220,
                                    height: 220,
                                  ),
                                  Text("Orange Shirt"),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.red,
                                      ),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.green,
                                      ),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.orange,
                                      ),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.blue,
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    autofocus: true,
                                    onPressed: () {},
                                    child: Text("Price : \$100"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 50,
                      child: Column(
                        children: [
                          Image.network(
                            "https://i.pinimg.com/736x/bb/03/21/bb03213c8a57c10205f7d0912abd7151.jpg",
                            width: 220,
                            height: 220,
                          ),
                          Text("Orange Shirt"),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.red,
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.orange,
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                              ),
                            ],
                          ),
                          ElevatedButton(
                            autofocus: true,
                            onPressed: () {},
                            child: Text("Price : \$200"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 50,
                      child: Column(
                        children: [
                          Image.network(
                            "https://i.pinimg.com/1200x/5c/b3/8e/5cb38e95e1cd7dc605cc6b5bd660bb6b.jpg",
                            width: 210,
                            height: 210,
                          ),
                          Text("Orange Shirt"),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.red,
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.orange,
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                              ),
                            ],
                          ),
                          ElevatedButton(
                            autofocus: true,
                            onPressed: () {},
                            child: Text("Price : \$200"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Card(
                  elevation: 50,
                  child: Column(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/736x/f1/ed/6c/f1ed6c22d8937e6fb8eede2b56062573.jpg",
                        width: 210,
                        height: 210,
                      ),
                      Text("Orange Shirt"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(radius: 10, backgroundColor: Colors.red),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.orange,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        child: Text("Price : \$200"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  elevation: 50,
                  child: Column(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/1200x/bc/d9/bd/bcd9bdb42f1842b3ea6ee695d60ff218.jpg",
                        width: 210,
                        height: 210,
                      ),
                      Text("Orange Shirt"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(radius: 10, backgroundColor: Colors.red),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.orange,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        child: Text("Price : \$200"),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 50,
                  child: Column(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/1200x/b7/f3/f0/b7f3f07ea020d7436966f29b439e82d3.jpg",
                        width: 210,
                        height: 210,
                      ),
                      Text("Orange Shirt"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(radius: 10, backgroundColor: Colors.red),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.orange,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        child: Text("Price : \$200"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  elevation: 50,
                  child: Column(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/1200x/b7/f3/f0/b7f3f07ea020d7436966f29b439e82d3.jpg",
                        width: 210,
                        height: 210,
                      ),
                      Text("Orange Shirt"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(radius: 10, backgroundColor: Colors.red),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.orange,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        child: Text("Price : \$200"),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 50,
                  child: Column(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/1200x/01/34/f3/0134f31cf0a86e7da124be759cd850e1.jpg",
                        width: 210,
                        height: 210,
                      ),
                      Text("Orange Shirt"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(radius: 10, backgroundColor: Colors.red),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.orange,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        child: Text("Price : \$200"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
