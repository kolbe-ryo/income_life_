// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:state_notifier/state_notifier.dart';

// Project imports:
import '../../flavor_text.dart';
import '../../logger.dart';
import 'admob_reward_page_state.dart';

class AdmobRewardPageViewModel extends StateNotifier<AdmobRewardPageState> with LocatorMixin {
  AdmobRewardPageViewModel() : super(const AdmobRewardPageState());

  @override
  void initState() {
    loadRewardAd();
    super.initState();
  }

  @override
  void dispose() {
    state.rewardedAd?.dispose();
    state = state.copyWith(rewardedAd: null);
    super.dispose();
  }

  void loadRewardAd() {
    if (state.isLoaded) {
      return;
    }
    RewardedAd.load(
      adUnitId: _rewardAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd ad) {
          logger.info('$ad loaded.');
          state = state.copyWith(
            rewardedAd: ad,
            isLoaded: true,
          );
          FullScreenContentCallback<RewardedAd> callback() {
            return FullScreenContentCallback(
              onAdShowedFullScreenContent: (RewardedAd ad) {
                logger.info('$ad onAdShowedFullScreenContent.');
              },
              onAdDismissedFullScreenContent: (RewardedAd ad) {
                logger.info('$ad onAdDismissedFullScreenContent.');
                ad.dispose();
                state.rewardedAd?.dispose();
              },
              onAdFailedToShowFullScreenContent: (
                RewardedAd ad,
                AdError error,
              ) {
                logger.info('$ad onAdFailedToShowFullScreenContent: $error');
                ad.dispose();
                state.rewardedAd?.dispose();
              },
              onAdImpression: (RewardedAd ad) {
                logger.info('$ad impression occurred.');
              },
            );
          }

          state.rewardedAd?.fullScreenContentCallback = callback();
        },
        onAdFailedToLoad: (LoadAdError error) {
          logger.info('RewardedAd failed to load: $error');
          state = state.copyWith(isLoaded: false);
        },
      ),
    );
  }

  /// 引数は報酬を付与する処理
  Future<bool> showRewardAd(VoidCallback callback) async {
    try {
      await state.rewardedAd?.show(
        onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
          callback(); // リワードの視聴を完了した場合の報酬付与処理を呼び出す
          state = state.copyWith(
            isLoaded: false,
            rewardCount: reward.amount.toInt(),
          );
        },
      );
      return true;
    } on Exception catch (error, stackTrace) {
      logger
        ..info(error)
        ..info(stackTrace);
      return false;
    }
  }

  void decrementRewardCount({int count = 1}) {
    // リワード報酬が1以下になったら、広告をロードしておく
    if (state.rewardCount == 1 || state.rewardCount - count < 1) {
      loadRewardAd();
    }

    // 1より小さくなってしまう場合はカウントを1に設定する
    if (state.rewardCount - count < 1) {
      state = state.copyWith(rewardCount: 0);
    } else {
      state = state.copyWith(rewardCount: state.rewardCount - count);
    }
  }

  String get _rewardAdUnitId {
    String? rewardAdUnitId;
    if (Platform.isAndroid) {
      // Android のとき（テスト用広告）
      rewardAdUnitId = 'ca-app-pub-3940256099942544/5224354917';
    } else if (Platform.isIOS) {
      // iOSのとき
      rewardAdUnitId = isRelease ? admobRewardId : 'ca-app-pub-3940256099942544/1712485313';
    }
    return rewardAdUnitId ?? '';
  }
}
