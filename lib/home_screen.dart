import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://scontent.fcai21-1.fna.fbcdn.net/v/t39.30808-1/240402790_557314218804887_6523148026396916592_n.jpg?stp=dst-jpg_p240x240&_nc_cat=100&ccb=1-6&_nc_sid=7206a8&_nc_ohc=F6lPtW6zSkIAX8Etl4J&_nc_ht=scontent.fcai21-1.fna&oh=00_AT_yQp3cja4D1XBn35DMtX2en-Q2rnaqYxLKyeP3wjqriQ&oe=6289C8CD',
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'Chat',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25.00,
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  radius: 25.00,
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    color: Colors.black12,
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      Text('Search'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 130.00,

                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal ,
                      itemBuilder: (context,index)=>buildStoryItems(),
                    itemCount: 5,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder:(context,index)=>buildChatItems(),
                    separatorBuilder: (context,index)=>SizedBox(height: 10.0,),
                    itemCount: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildStoryItems() => Row(
        children: [
          Container(
            width: 74.00,
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                const CircleAvatar(
                  radius: 30.00,
                  backgroundImage: NetworkImage(
                    'https://scontent.fcai21-1.fna.fbcdn.net/v/t39.30808-1/240402790_557314218804887_6523148026396916592_n.jpg?stp=dst-jpg_p240x240&_nc_cat=100&ccb=1-6&_nc_sid=7206a8&_nc_ohc=F6lPtW6zSkIAX8Etl4J&_nc_ht=scontent.fcai21-1.fna&oh=00_AT_yQp3cja4D1XBn35DMtX2en-Q2rnaqYxLKyeP3wjqriQ&oe=6289C8CD',
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Taher Salah',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  Widget buildChatItems() => SingleChildScrollView(
    child: Column(
      children: [
        Row(
              children: [
                const SizedBox(
                  width: 5.00,
                ),
                Stack(

                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    const CircleAvatar(
                      radius: 30.00,
                      backgroundImage: NetworkImage(
                        'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/274267236_1636113953397691_4503971868430823644_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=VDrsk4BS2eoAX_mOKRj&tn=F33TexqbGd5oReoD&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_fx9nMwE96lVyz_oAJ5lb6s83uGzJrC2xD2TGf-DUSVw&oe=628B53B2',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                    ),

                  ],
                ),
                const SizedBox(
                  width: 7.00,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'Ali El-Mahdy',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 7.00,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                                'Hello this is The First Message for you My Name \'s Reham',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),

                            ),
                          ),
                          const SizedBox(
                            width:2.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 15.00),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.only(top: 15.00),
                            child: Text('02.00 PM'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
      ],
    ),
  );
}
