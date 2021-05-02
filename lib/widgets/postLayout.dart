import 'package:flutter/material.dart';
import 'package:mickey/models/posts.dart';


class PostLayout extends StatelessWidget {

  final Post post;
  final double height;
  final double width;
  final String type;

  const PostLayout({Key key, this.post, this.height, this.width, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: height,
        width:  width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                  offset: Offset(2.0, 2.0),
                  spreadRadius: 3.0,
                  blurRadius: 6.0,
                  color: Colors.black26
              )
            ]
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: height/2,
                //width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
                    image: DecorationImage(
                        image: AssetImage(post.imageUrl),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(post.name, style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(post.description, maxLines: 2, overflow: TextOverflow.ellipsis,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(post.price, style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  type == "desktop" ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: RaisedButton(
                        child: Text("Check Out", style: TextStyle(color: Colors.white),),
                        onPressed: () {},
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                      ),
                    ),
                  ) : Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
