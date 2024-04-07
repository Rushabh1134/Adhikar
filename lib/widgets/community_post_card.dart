import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityPostCard extends StatefulWidget {
  const CommunityPostCard({super.key});

  @override
  State<CommunityPostCard> createState() => _CommunityPostCardState();
}

class _CommunityPostCardState extends State<CommunityPostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 219, 216, 216),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/O8K2dId1ZrCXSqdhJa0LGtFXsCHFBwjAUWw8gKRYutU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS12ZWN0/b3IvcHJvZmlsaW5n/LWZsYXQtaWxsdXN0/cmF0aW9uXzEyMDgx/Ni03NTMyMy5qcGc_/c2l6ZT02MjYmZXh0/PWpwZw'),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 7,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "widget.snap['username']",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                child: ListView(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  shrinkWrap: true,
                                  children: ['Delete']
                                      .map((e) => InkWell(
                                            onTap: () async {
                                              //   if(user.username==widget.snap['username']){
                                              //     setState(() {
                                              //       isLoading=true;
                                              //     });
                                              // String res =  await  FirestoreMethods().deletePost(widget.snap['postId']);
                                              // if(res=='success'){
                                              //   setState(() {
                                              //       isLoading=false;
                                              //     });
                                              //   Navigator.pop(context);
                                              //   showSnackbar('Post deleted', context);
                                              // } else{
                                              //    setState(() {
                                              //       isLoading=false;
                                              //     });
                                              //   Navigator.pop(context);
                                              //   showSnackbar(res, context);
                                              // }
                                              //   } else{
                                              //      setState(() {
                                              //       isLoading=false;
                                              //     });
                                              //     showSnackbar('You cannot delete someone else\'s post', context);
                                              //     Navigator.pop(context);
                                              //   }
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 16),
                                              child: Text(e),
                                            ),
                                          ))
                                      .toList(),
                                ),
                              ));
                    },
                  )
                ],
              ),
            ),
            Container(
              child: const Text(
                  'lorem ipsum dipsum gipsumlorem ipsum dipsum gipsumlorem ipsum dipsum gipsumlorem ipsum dipsum gipsumlorem ipsum dipsum gipsum'),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                TextButton(onPressed: () {}, child: const Text('View comments'))
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
