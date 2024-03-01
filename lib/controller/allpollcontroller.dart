import 'package:cc_yard_test/model/allpolls.dart';
import 'package:get/get.dart';

class AllPollsController extends GetxController {
  var pollsData = AllPollsModel().obs;

  List<AllPollsModel> getAllPollsList = [];
  getData() {
    List<AllPollsModel> getAllPollsInfo = [
      AllPollsModel(
        topic: "Rohit Sharma Speaks Out on Mumbai Pollution Amidst ODI Worlds",
        question: "US Intel Aids Canada in Nijjar Case",
        newsName: "Times of India (TOI)",
        newsNickName: "TOI",
        newsSubtext: "Us intel ... comments...",
        noOfLikes: "2.1",
        comments: "4.5",
        textOptions: TextOptions(
            s1: "US Intel Aids Canada in Nijjar Case",
            s2: "US Intel Aids Canada in Nijjar Case",
            s3: "US Intel Aids Canada in Nijjar Case",
            s4: "US Intel Aids Canada in Nijjar Case"),
      ),
      AllPollsModel(
        topic: "Bangalore climate",
        question: "Climate in bangalore",
        newsName: "The Hindu (TH)",
        newsNickName: "TH",
        newsSubtext: "Us intel HINDHU ... comments...",
        noOfLikes: "3.1",
        comments: "6.5",
        textOptions: TextOptions(
          s1: "warm",
          s2: "Cool",
          s3: "Hot",
          s4: "Cold",
        ),
      ),
    ];
    getAllPollsList.assignAll(getAllPollsInfo);
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
