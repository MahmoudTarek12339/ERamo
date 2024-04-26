import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActiveBodyWidget extends StatelessWidget {
  const ActiveBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 251,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: ColorManager.veryLightWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.ccMastercard),
              SizedBox(
                width: 5,
              ),
              FaIcon(FontAwesomeIcons.ccVisa),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Credit Name',
            style: TextStyle(
              color: ColorManager.blue,
              fontFamily: 'DM Sans',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            height: 28,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4)),
            child: TextField(
              decoration: InputDecoration(
                  constraints: BoxConstraints(
                    minHeight: 28,
                    maxHeight: 28,
                    maxWidth: MediaQuery.of(context).size.width * 0.73,
                    minWidth: MediaQuery.of(context).size.width * 0.73,
                  ),
                  hintText: 'EX: MOHAMED RAGAB',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      fontFamily: 'DM Sans',
                      color: Color(0xFFB7B7B7)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Credit Number',
            style: TextStyle(
              color: ColorManager.blue,
              fontFamily: 'DM Sans',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            height: 28,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4)),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  constraints: BoxConstraints(
                    minHeight: 28,
                    maxHeight: 28,
                    maxWidth: MediaQuery.of(context).size.width * 0.73,
                    minWidth: MediaQuery.of(context).size.width * 0.73,
                  ),
                  hintText: 'EX:***** **** **** 5231',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      fontFamily: 'DM Sans',
                      color: Color(0xFFB7B7B7)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expiration Date',
                    style: TextStyle(
                      color: ColorManager.blue,
                      fontFamily: 'DM Sans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          constraints: BoxConstraints(
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: MediaQuery.of(context).size.width * 0.43,
                            minWidth: MediaQuery.of(context).size.width * 0.43,
                          ),
                          hintText: '02/2026',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              fontFamily: 'DM Sans',
                              color: Color(0xFFB7B7B7)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CVV',
                    style: TextStyle(
                      color: ColorManager.blue,
                      fontFamily: 'DM Sans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          constraints: BoxConstraints(
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: MediaQuery.of(context).size.width * 0.25,
                            minWidth: MediaQuery.of(context).size.width * 0.25,
                          ),
                          hintText: '****',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              fontFamily: 'DM Sans',
                              color: Color(0xFFB7B7B7)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
