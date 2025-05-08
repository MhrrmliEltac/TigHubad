import 'package:flutter/material.dart';
import 'package:tighubad/_mock/WordMeaningData.dart';
import 'package:tighubad/widgets/navigate_home_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Wordmeaningdata> words = [
    Wordmeaningdata(
      id: 1,
      grammarCategory: "noun",
      description: "someone deranged and possibly dangerous.",
      synonimList: ["crazy, looney, loony, nutcase, weirdo"],
      item: "colloquialism",
      itemDesc:
          "a colloquial expression; characteristic of spoken or written communication that seeks to imitate informal speech.",
    ),
    Wordmeaningdata(
      id: 2,
      grammarCategory: "adjective",
      description:
          'foolish; totally unsound.; "a crazy scheme"; "half-baked ideas"; "a screwball proposal without a prayer of working"',
      synonimList: ["crazy, half-baked, screwball, softheaded"],
    ),
  ];

  final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D93F3),
        toolbarHeight: 80,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.white, size: 30),
            ),
            Expanded(
              child: Container(
                height: 45,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.blue),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Pakno',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.mic_none, color: Colors.white, size: 30),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 44),
        child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 0,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          "pakno",
                          style: TextStyle(
                            fontSize: 48,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold,
                            color: Color(0xff434D65),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                size: 40,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.share_outlined, size: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    height: 1,
                    decoration: BoxDecoration(color: Color(0xffD5DEE8)),
                  ),
                ),
                WordDetailSection(_controller),
              ],
            ),
            NavigateHomeWidget(),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Flexible WordDetailSection(ScrollController scrollController) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Adjective",
                style: TextStyle(
                  color: Color(0xff434D65),
                  fontSize: 24,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "pakno",
                  style: TextStyle(
                    color: Color(0xff434D65),
                    fontFamily: "Inter",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_up_outlined,
                    size: 30,
                    color: Color(0xff1D93F3),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: RichText(
                      text: TextSpan(
                        text: "Synonyms: ",
                        style: TextStyle(
                          color: Color(0xff434D65),
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          height: 1.6,
                        ),
                        children: [
                          TextSpan(
                            text: "buang",
                            style: TextStyle(
                              color: Color(0xff1D93F3),
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Theme(
                        data: ThemeData(highlightColor: Color(0xff1D93F3)),
                        child: Scrollbar(
                          thumbVisibility: true,
                          controller: scrollController,
                          child: ListView.builder(
                            controller: scrollController,
                            scrollDirection: Axis.vertical,
                            itemCount: words.length,
                            itemBuilder:
                                (context, index) => ListTile(
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: words[index].grammarCategory,
                                            style: TextStyle(
                                              color: Color(0xff1D93F3),
                                              fontSize: 18,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${words[index].id.toString()}.',
                                                style: TextStyle(
                                                  color: Color(0xff434D65),
                                                  fontFamily: "Inter",
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      words[index]
                                                          .synonimList![0]
                                                          .toString(),
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xff1D93F3,
                                                        ),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      words[index]
                                                              .description ??
                                                          "",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xff434D65,
                                                        ),
                                                        fontFamily: "Inter",
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(
                                                              text: "~",
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      words[index]
                                                                          .item,
                                                                  style: TextStyle(
                                                                    color: Color(
                                                                      0xff1D93F3,
                                                                    ),
                                                                    fontFamily:
                                                                        "Inter",
                                                                    fontSize:
                                                                        18,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            words[index]
                                                                    .itemDesc ??
                                                                "",
                                                            style: TextStyle(
                                                              color: Color(
                                                                0xff434D65,
                                                              ),
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  "Inter",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
