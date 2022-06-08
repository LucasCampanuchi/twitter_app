import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/profile_image.dart';
import '../../../layout/colors.dart';

class PostWithThreads extends StatefulWidget {
  const PostWithThreads({Key? key}) : super(key: key);

  @override
  State<PostWithThreads> createState() => _PostWithThreadsState();
}

class _PostWithThreadsState extends State<PostWithThreads> {
  double heightColumn = 0.0;
  final GlobalKey _globalKey = GlobalKey();

  @override
  void initState() {
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      if (_globalKey.currentContext != null) {
        heightColumn = _globalKey.currentContext!.size!.height;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: heightColumn,
                child: Stack(
                  children: [
                    Positioned(
                      top: (size.width * 0.08 * 2 + 15),
                      bottom: (size.width * 0.05 * 2 + 10),
                      child: SizedBox(
                        height: heightColumn,
                        width: size.width * 0.2,
                        child: Center(
                          child: Container(
                            width: 3,
                            height: heightColumn,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(206, 213, 220, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: ProfileImage(
                              radius: size.width * 0.08,
                              url:
                                  'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 5,
                            ),
                            child: ProfileImage(
                              radius: size.width * 0.05,
                              url:
                                  'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                key: _globalKey,
                children: [
                  SizedBox(
                    width: size.width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            top: 8.0,
                          ),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              Text(
                                'Martha Craig ',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textPattern,
                                ),
                              ),
                              Text(
                                '@craig_love ·12h',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textPattern,
                                ),
                              )
                            ],
                          ),
                        ),
                        Html(
                          data:
                              '<p>UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring?  <span> #TellMeAboutYou <span></p>',
                          style: {
                            'p': Style(
                              fontFamily: 'Raleway',
                              fontSize: const FontSize(16),
                              fontWeight: FontWeight.w400,
                              color: AppColors.textPattern,
                            ),
                            'span': Style(
                              fontFamily: 'Raleway',
                              fontSize: const FontSize(16),
                              fontWeight: FontWeight.w400,
                              color: AppColors.bluePattern,
                            ),
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            top: 4.0,
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/comment.svg',
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '28',
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.textPattern,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/retweet.svg',
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '28',
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.textPattern,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/heart.svg',
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '28',
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.textPattern,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/share.svg',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Show this thread',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.bluePattern,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 15,
            ),
            child: Container(
              color: const Color.fromRGBO(206, 213, 220, 1),
              height: 0.5,
              width: size.width,
            ),
          ),
        ],
      ),
    );
  }
}
