import 'package:flutter/material.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({super.key});

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> interests = [
      {'title': 'Painting', 'imageUrl': 'assets/images/105.png'},
      {'title': 'Sketching', 'imageUrl': 'assets/images/106.png'},
      {'title': 'Music', 'imageUrl': 'assets/images/107.png'},
      {'title': 'Wall Artist', 'imageUrl': 'assets/images/108.png'},
      {'title': 'Digital Art', 'imageUrl': 'assets/images/109.png'},
      {'title': 'Singing', 'imageUrl': 'assets/images/110.png'},
      {'title': 'Singing', 'imageUrl': 'assets/images/111.png'},
      {'title': 'Singing', 'imageUrl': 'assets/images/112.png'}
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(vertical: 30),
                child:
                    Image(image: AssetImage('assets/images/ativesLogo.png'))),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              alignment: Alignment.topLeft,
              child: Text(
                'Select Interest',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    mainAxisExtent: 120),
                itemCount: interests.length,
                itemBuilder: (_, index) {
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 120,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "${interests.elementAt(index)['imageUrl']}"),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 120,
                            padding: EdgeInsets.all(15),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "${interests.elementAt(index)['title']}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ));
                }),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => LoginPage(),
                //     ));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xff3159A6),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
