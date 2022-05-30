import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/profile_image.dart';
import '../../../layout/colors.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
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
                ],
              ),
              Column(
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
                          data: '<p>Y’all ready for this next post?  </p>',
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
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
            ),
            child: Container(
              color: const Color.fromRGBO(206, 213, 220, 1),
              height: 0.5,
              width: size.width,
            ),
          )
        ],
      ),
    );
  }
}
