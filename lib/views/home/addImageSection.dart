import 'package:flutter/material.dart';

class AddImagesSection extends StatelessWidget {
  const AddImagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Hey Hernadez'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(
                      'Welcom to New Fetch From Firebase', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ]
      )
    );
  }
}
