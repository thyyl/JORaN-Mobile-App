import 'package:flutter/material.dart';
import 'package:joran_app/Models/JobModel.dart';
import 'package:joran_app/Provider/MarketJobProvider.dart';
import 'package:provider/provider.dart';

class JobTitleResults extends StatelessWidget {
  const JobTitleResults({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Job> jobList = Provider.of<MarketJobProvider>(context).jobList;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Found ${jobList.length} result(s)",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 20,
              fontFamily: "NunitoSans",
            ),
          )
        ],
      ),
    );
  }
}