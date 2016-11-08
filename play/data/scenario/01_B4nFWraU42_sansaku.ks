*sansaku_machi_common_B4nFWraU42_01
;=======================================================================================
;◆町_共通イベント 01
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
;散策イベント◆B4nFWraU42さんご担当その1です。[p]
;飛鳥 紗代子さん
[whosay name="既婚の友人"]
「ごきげんよう [名前]さん」[p]
#
少しふっくらとした友人の指には、赤いルビーの指輪が光る。[p]
[whosay name="既婚の友人"]
「ふぅ、新しい生活に慣れるのも、時間がかかって、[r]
[sp]毎日、お義母様に怒られないか恐々としてるわ」[p]
;花嫁修行中なのかな 婚姻、結納済みの友人でもいいかもしれません 悩みがない友人というイメージです 
[whosay name="既婚の友人"]
「けど、今日の淹れたお茶が美味しかったの。[r]
[sp]1日の始まりに良いことがあると、その日の気分が良くなるわ」[p]
[whosay name="既婚の友人"]
「[名前]さんは、そういうことってなくって？」[p]
#
『一日のはじまり』についての話題を手に入れました。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_02
;=======================================================================================
;◆町_共通イベント 02
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
;散策イベント◆B4nFWraU42さんご担当その2です。[p]
[whosay=三宮 時子]
「あら！　[名前]さん、いいところに！　ちょっと私の話をきいてくれない？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ………」[p]
#
長々と続く話をきいた。
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ふぅ……)[p]
[whosay=三宮 時子]
「[名前]さんって聞き上手ね！」[p]
#
『聞き上手と話し上手』についての話題を入手しました。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_03
;=======================================================================================
;◆町_共通イベント 03
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
;散策イベント◆B4nFWraU42さんご担当その3です。[p]
[whosay name="紳士的なおじ様"]
「失礼。帝都大図書館へは、どちらに向かって進めばよろしいでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それなら、あちらの大通りに出てから左に曲がると直ぐですわ」[p]
[whosay name="紳士的な老人"]
「ありがとう。素敵なお嬢さん」[p]
#
おじ様は、素敵な微笑みを浮かべると目的地に向かって歩いて行った。[p]
『道』についての話題を手に入れました。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_04
;=======================================================================================
;◆町_共通イベント 04
;『緑の石の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
散策イベント◆B4nFWraU42さんご担当その4です。[p]
[whosay name= 婚約済みの友人]
「[名前]さん！　お久しぶりですわ」[p]
#
少しふっくらとした友人の指には、赤いルビーの指輪が光る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

「ごきげんよう。　お元気そうですね」[p]
[whosay name= 婚約済みの友人]

「[名前]さん、様子が変わりましたわね。悩める時には、旅行に行くのが一番ですわよ？」[p]
「あぁ、そうそう。この前、翡翠が取れるという海岸にお父様達と行きましたの」[p]
「確かにそれらしい石は、たくさん落ちていて楽しかったのですが……」[p]
「どれが本物なのかは、家に帰って鑑定士に見せるまでは、分からず仕舞いでしたわ」[p]
#
持っていた袱紗を広げると、緑色の小さな石を複数を見せた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「綺麗ですね」[p]
#
波に削られ、つるりとした緑色の石達が光る。[p]
[whosay name= 婚約済みの友人]
「思い出と割り切ればいいのでしょうね」[p]
「そうだわ。[名前]さんが良ければ、どうぞ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいのですか？」[p]
[whosay name= 婚約済みの友人]
「えぇ、この様に沢山ありますから！[r]
[sp]なんでしたら、お手紙の話の種にしていただいてよろしくってよ！」[p]
#
友人は、石を渡すと、土産話をして帰って行った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手紙に添えて、あの方にお送りしてみようかしら」[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]


*sansaku_machi_common_B4nFWraU42_05
;=======================================================================================
;◆町_共通イベント 05
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
散策イベント◆B4nFWraU42さんご担当その5です。[p]

[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_06
;=======================================================================================
;◆町_共通イベント 06
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
散策イベント◆B4nFWraU42さんご担当その6です。[p]

[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_07
;=======================================================================================
;◆町_共通イベント 07
;『の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
散策イベント◆B4nFWraU42さんご担当その7です。[p]

[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

;=======================================================================================
;以下はメッセージウィンドウを閉じた時のクレジット表記スクリプトです
;=======================================================================================
*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
