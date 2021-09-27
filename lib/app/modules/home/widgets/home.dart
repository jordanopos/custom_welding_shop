import 'package:custom_welding_shop/app/global/widgets/footer.dart';
import 'package:custom_welding_shop/app/modules/home/views/home_view.dart';
import 'package:custom_welding_shop/app/modules/products/views/products_view.dart';
import 'package:flutter/material.dart';
import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

Container buildHomeController(BuildContext context, bool fullScreen) {
  bool smallfullscreen =
      MediaQuery.of(context).size.width >= kDesktopBreakpoint - 300;
  return Container(
      child: SingleChildScrollView(
    child: Column(children: [
      Container(
          height: 600,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Container(
                              height: 600,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset('assets/images/Works  _-2.png',
                                  fit: BoxFit.cover)),
                          Container(
                              child: Center(
                                child: Text(''),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5)),
                              width: MediaQuery.of(context).size.width,
                              height: 600),
                          Column(
                            children: [
                              Padding(
                                padding: fullScreen
                                    ? const EdgeInsets.only(
                                        left: 70.0, top: 100, right: 70)
                                    : const EdgeInsets.only(
                                        left: 30.0, top: 100, right: 30),
                                child: Container(
                                    padding: const EdgeInsets.all(8),
                                    width: fullScreen
                                        ? MediaQuery.of(context).size.width / 2
                                        : MediaQuery.of(context).size.width,
                                    height: 200,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Have a design problem?',
                                              style: TextStyle(
                                                  fontSize:
                                                      fullScreen ? 24 : 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.Maroon)),
                                          RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: 'We have a ',
                                                  style: TextStyle(
                                                      fontFamily: 'MainFont',
                                                      fontSize:
                                                          fullScreen ? 24 : 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors.Maroon)),
                                              TextSpan(
                                                  text: 'fabrication ',
                                                  style: TextStyle(
                                                      fontFamily: 'MainFont',
                                                      fontSize:
                                                          fullScreen ? 24 : 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          AppColors.LightRed)),
                                              TextSpan(
                                                  text: 'solution',
                                                  style: TextStyle(
                                                      fontFamily: 'MainFont',
                                                      fontSize:
                                                          fullScreen ? 24 : 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors.Maroon))
                                            ]),
                                          ),
                                          Text(
                                              'For a long time, we have been providing high quality metal fabrication solutions at affordable prices. Our experienced craftsmen have the skills to get your project done right.',
                                              style: TextStyle(
                                                  fontSize:
                                                      fullScreen ? 14 : 12,
                                                  color: Colors.white)),
                                          Spacer(),
                                          Row(children: [
                                            navButton(
                                                name: 'ABOUT US',
                                                buttonColor: AppColors.Maroon,
                                                textColor: AppColors.LightRed),
                                            SizedBox(width: 20),
                                            navButton(
                                                name: 'GET A QUOTE',
                                                buttonColor: AppColors.LightRed,
                                                textColor: AppColors.Maroon)
                                          ])
                                        ])),
                              ),
                            ],
                          )
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                          Text('Delivering High Quality, Consistently',
                              style: TextStyle(color: Colors.black)),
                          Container(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildInfoCard('Clients Served', '500+'),
                              _buildInfoCard('Clients Served', '500+'),
                              _buildInfoCard('Years of Support', '24'),
                            ],
                          )
                        ])),
                  ),
                ],
              ),
              Container(
                  height: 600,
                  child: Center(
                    child: Padding(
                      padding: fullScreen
                          ? const EdgeInsets.only(top: 170, right: 70, left: 70)
                          : const EdgeInsets.only(
                              top: 170, right: 30, left: 30),
                      child: Material(
                        elevation: 10,
                        child: Container(
                          height: 90,
                          child: !smallfullscreen
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: [
                                    Expanded(
                                      child: buildItemCard(
                                          IcoFontIcons.phone,
                                          'Phone',
                                          '0772630102',
                                          smallfullscreen),
                                    ),
                                    Expanded(
                                      child: buildItemCard(
                                          IcoFontIcons.email,
                                          'Email',
                                          'google@google.com',
                                          smallfullscreen),
                                    ),
                                    Expanded(
                                      child: buildItemCard(
                                          IcoFontIcons.locationPin,
                                          'Location',
                                          'Lweza Industrial',
                                          smallfullscreen),
                                    ),
                                  ]),
                                )
                              : Row(children: [
                                  Expanded(
                                    child: buildItemCard(Icons.call_rounded,
                                        'Phone', '0772630102', smallfullscreen),
                                  ),
                                  Expanded(
                                    child: buildItemCard(
                                        IcoFontIcons.email,
                                        'Email',
                                        'google@google.com',
                                        smallfullscreen),
                                  ),
                                  Expanded(
                                    child: buildItemCard(
                                        Icons.location_pin,
                                        'Location',
                                        'Lweza Industrial',
                                        smallfullscreen),
                                  ),
                                ]),
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                  ))
            ],
          )),
      Container(height: 60),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Container(
            child: Column(children: [
          Container(height: 30),
          Text(
              'Creating the future by bringing \n metal fabrication services to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: AppColors.Maroon)),
          Container(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, left: 30),
            child: Text(
                ' We provide high quality metal fabrication solutions at affordable prices. All of our products and services are guaranteed to be top-notch and we take special care in delivering them to you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fullScreen ? 14 : 12, color: Colors.white)),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: navButton(
                name: 'SERVICES',
                buttonColor: AppColors.LightRed,
                textColor: AppColors.Maroon),
          ),
          Spacer()
        ])),
        color: AppColors.RedColor,
        height: 300,
      ),
      Container(height: 20),
      Container(
          child: fullScreen
              ? Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(width: 30),
                  Expanded(
                    child: _buildTheItemContainer(fullScreen,
                        'Metal Fabrication', 'assets/images/Works  _-2.png'),
                  ),
                  Expanded(
                    child: _buildTheItemContainer(fullScreen, 'CNC Design',
                        'assets/images/Works  _-11.jpg'),
                  ),
                  Expanded(
                    child: _buildTheItemContainer(
                        fullScreen,
                        'Shutter Door Construction',
                        'assets/images/Works  _-19.jpg'),
                  ),
                  Container(width: 30),
                ])
              : Column(children: [
                  _buildTheItemContainer(fullScreen, 'Metal Works',
                      'assets/images/Works  _-2.png'),
                  _buildTheItemContainer(fullScreen, 'Metal Works',
                      'assets/images/Works  _-11.jpg'),
                  _buildTheItemContainer(fullScreen, 'Metal Works',
                      'assets/images/Works  _-19.jpg'),
                ])),
      Container(height: 40),
      Container(
          child: Column(children: [
        Text('We Produce',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.RedColor)),
        Container(height: 10),
        Container(
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 30),
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(8),
                    width: 250,
                    child:
                        Image.asset(productsImages[index], fit: BoxFit.cover),
                  );
                }),
            height: 250),
        Container(height: 30),
        Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(height: 20),
                Text('Projects',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.Maroon,
                        fontWeight: FontWeight.bold)),
                Container(height: 20),
                Container(
                    child: fullScreen
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                Container(width: 30),
                                Expanded(
                                  child: otherItemContainer(
                                      fullScreen,
                                      'Nsasa Project',
                                      'https://images.pexels.com/photos/8821015/pexels-photo-8821015.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                ),
                                Expanded(
                                  child: otherItemContainer(
                                      fullScreen,
                                      'Jinja Project',
                                      'https://images.pexels.com/photos/8447886/pexels-photo-8447886.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                ),
                                Expanded(
                                  child: otherItemContainer(
                                      fullScreen,
                                      'Google Project',
                                      'https://images.pexels.com/photos/962889/pexels-photo-962889.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                ),
                                Container(width: 30),
                              ])
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                otherItemContainer(fullScreen, 'Nsasa Project',
                                    'https://images.pexels.com/photos/8821015/pexels-photo-8821015.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                otherItemContainer(fullScreen, 'Jinja Project',
                                    'https://images.pexels.com/photos/8447886/pexels-photo-8447886.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                otherItemContainer(fullScreen, 'Google Project',
                                    'https://images.pexels.com/photos/962889/pexels-photo-962889.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              ])),

                              Container(height : 20),
                navButton(
                    name: 'See More Projects',
                    buttonColor: AppColors.Maroon,
                    textColor: AppColors.RedColor)
              ],
            ),
            color: AppColors.RedColor),
        Container(height: 30, color: AppColors.RedColor),
        Footer()
      ]))
    ]),
  ));
}

Widget _buildInfoCard(String name, String value) {
  return Container(
      child: Column(children: [
    Text(value,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: AppColors.LightRed)),
    Container(height: 5),
    Text(name, style: TextStyle(color: AppColors.LightRed))
  ]));
}

TextButton navButton(
    {String name, Color buttonColor, Color textColor, Function onPressed}) {
  return TextButton(
      style: TextButton.styleFrom(
          fixedSize: Size(120, 40), backgroundColor: buttonColor),
      onPressed: onPressed ?? () {},
      child: Text('$name', style: TextStyle(color: textColor)));
}

Widget buildItemCard(IconData icon, String name, String value, bool fs) {
  return Padding(
    padding: const EdgeInsets.only(left: 13.0),
    child: Container(
        child: Row(
      mainAxisAlignment:
          fs ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.LightRed, size: fs ? 34 : 17),
        Container(width: fs ? 10 : 2),
        fs
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          color: Colors.black, fontSize: fs ? 17 : 14)),
                  Text(value,
                      style: TextStyle(
                          color: AppColors.LightRed, fontSize: fs ? 14 : 13))
                ],
              )
            : Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text("$name :    ",
                    style:
                        TextStyle(color: Colors.black, fontSize: fs ? 17 : 14)),
                Text(value,
                    style: TextStyle(
                        color: AppColors.LightRed, fontSize: fs ? 14 : 13))
              ])
      ],
    )),
  );
}

Widget _buildTheItemContainer(bool fullScreen, String name, String imagePath) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.4)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("$name",
                    style: TextStyle(
                        color: AppColors.Maroon,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 20.0, left: 20, top: 5, bottom: 20),
                child: Text(
                    "Lorem Ipsum controller hwen google controller then hw egoogle contolwhen google controller hwen google ap",
                    style: TextStyle(color: Colors.white)),
              )
            ],
          )
        ]),
        width: fullScreen ? 300 : double.infinity,
        height: 500),
  );
}

Widget otherItemContainer(bool fullScreen, String name, String imagePath) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        child: Stack(fit: StackFit.expand, children: [
          Image.network(imagePath, fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.4)),
          Column(
            children: [
              Spacer(),
              Text("$name",
                  style: TextStyle(
                      color: AppColors.Maroon,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(height: 30)
            ],
          )
        ]),
        width: fullScreen ? 300 : double.infinity,
        height: 500),
  );
}
