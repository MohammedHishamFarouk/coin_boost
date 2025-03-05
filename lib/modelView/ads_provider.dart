import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdProvider with ChangeNotifier {
  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;
  bool _isBannerAdLoaded = false;
  bool _isInterstitialAdLoaded = false;

  BannerAd? get bannerAd => _bannerAd;
  bool get isBannerAdLoaded => _isBannerAdLoaded;
  bool get isInterstitialAdLoaded => _isInterstitialAdLoaded;

  AdProvider() {
    _loadBannerAd();
    _loadInterstitialAd();
  }

  // Load Banner Ad
  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111', // Test Banner Ad ID
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          _isBannerAdLoaded = true;
          notifyListeners();
        },
        onAdFailedToLoad: (ad, error) {
          _isBannerAdLoaded = false;
          ad.dispose();
          notifyListeners();
        },
      ),
    );
    _bannerAd?.load();
  }

  // Load Interstitial Ad
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId:
          'ca-app-pub-3940256099942544/1033173712', // Test Interstitial Ad ID
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isInterstitialAdLoaded = true;
          notifyListeners();
        },
        onAdFailedToLoad: (error) {
          _isInterstitialAdLoaded = false;
          notifyListeners();
        },
      ),
    );
  }

  // Show Interstitial Ad
  void showInterstitialAd() {
    if (_isInterstitialAdLoaded && _interstitialAd != null) {
      _interstitialAd!.show();
      _isInterstitialAdLoaded = false;
      notifyListeners();
      _loadInterstitialAd(); // Load new ad after showing
    }
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }
}
