import 'package:alumni_app/utils/text_constant.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/person.png"),
          ),
        ),
        title: const Text(
          "Gresh kumar",
          style: TextStyle(
              color: Color(0xff888888),
              fontWeight: FontWeight.w400,
              fontSize: 15),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Color(0xff804EEB),
              radius: 20,
              child: Icon(
                Icons.notifications,
                color: Color(0xffffffff),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.86,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffCDBFF4)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Color(0xff111111),
                            size: 24,
                          ),
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Search for a subject"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppText.chat,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Divider(
                  height: 3,
                  color: Color(0xff888888),
                ),
              ),
              ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 12.0,
                    );
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ListTile(
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/person.png"),
                        ),
                        title: const Text(
                          "Faraz Hussain",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff2C2B2B)),
                        ),
                        subtitle: const Text(
                          "OMG ! that was funny.",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xff2C2B2B)),
                        ),
                        trailing: Container(
                          width: 60,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                '11:13',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Color(0xff888888)),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff804EEB)),
                                child: const Center(
                                  child: Text(
                                    '+1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Color(0xffffffff)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
