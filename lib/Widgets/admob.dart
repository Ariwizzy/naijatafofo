import 'package:firebase_admob/firebase_admob.dart';
const String testDeveice = "8025EA1560D2A41423AC800540717A83";
class Admob{
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDeveice != null ? <String>[testDeveice] : null,
    nonPersonalizedAds: false,
    keywords: <String>["insurance","education","health","job",'loan','montage','attorney'],
  );
  BannerAd bannerAd;
  InterstitialAd interstitialAd;
  BannerAd createBannerAd(){
    return BannerAd(
        adUnitId:  "ca-app-pub-5626633173381353/7337823915",
        size: AdSize.fullBanner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event){
          print("BannerAd $event");
        }
    );
  }
  InterstitialAd createInterstitialAd(){
    return InterstitialAd(
        adUnitId: "ca-app-pub-5626633173381353/9793770321",
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event){
          print("InterstitialAd $event");
        }
    );
  }
}
