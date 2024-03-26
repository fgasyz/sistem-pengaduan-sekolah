import 'package:flutter/material.dart';
import '../../widgets/cards/home/navbar.dart';
import '../../widgets/cards/home/jumbotron.dart';
import '../../widgets/cards/home/about_section.dart';
import '../../widgets/cards/home/report_flow_section.dart';
import '../../widgets/cards/home/faq_section.dart';
import '../../widgets/cards/home/footer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
                  child: Column(
                children: [
                  navbar(context: context, constraints: constraints),
                  jumbotron(context: context, constraints: constraints),
                  aboutSection(context: context, constraints: constraints),
                  reportFlowSection(context: context, constraints: constraints),
                  faqSection(context: context, constraints: constraints),
                  footer(context: context, constraints: constraints)
                ],
              ))),
    );
  }
}
