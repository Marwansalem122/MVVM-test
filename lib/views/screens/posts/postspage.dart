import 'package:flutter/material.dart';
import 'package:myreview/data/api_services/api.dart';
import 'package:myreview/viewmodel/post_viewmodel.dart';
import 'package:myreview/viewmodel/posts_viewmodel.dart';

class PostsPage extends StatelessWidget {
   PostsPage({super.key});
   //Dependancy Injection
   PostsMV datapost=PostsMV(postReo: PostsAPI());
  //  List posts=datapost.fetchposts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(datapost.titleAppBar),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(datapost.content),
          Expanded(
            child: FutureBuilder<List<PostVM>>(future: datapost.fetchposts(),
                builder: (context,snapshot){
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    // Handle error state
                    return Text('Error: ${snapshot.error}');
                  }
                  else{
                    var post=snapshot.data;
                    return ListView.builder(itemCount: post?.length,
                        itemBuilder: (context,index){
                          return Card(child: ListTile(
                            title:Text( post![index].title),
                            subtitle: Text(post[index].body),

                          ),);
                        });
                  }

                }),
          )
        ],
      ),
    );
  }
}