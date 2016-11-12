*sansaku_machi_common_B4nFWraU42_01
;=======================================================================================
;◆町_共通イベント 01
;『一日のはじまりの話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;主人公の口調は自由に調整してください。
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
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
#
少しふっくらとした友人の指には、赤いルビーの指輪が光る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ごきげんよう。[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さん　お元気になされてまし[r]
[sp]たか？」[p]
[whosay name="飛鳥紗代子"]
[主人公眉困り]
「ふぅ、新しい生活に慣れるのも、時間がかかって、毎日、[r]
[sp]お義母様に怒られないか恐々としてるわ」[p]
;花嫁修行中なのかな 婚姻、結納済みの友人でもいいかもしれません 悩みがない友人というイメージです 
[whosay name="飛鳥紗代子"]
[主人公眉下げ下]
[主人公目パチ1回]
「けど、今日の淹れたお茶が美味しかったの。[r]
[sp]1日の始まりに良いことがあると、その日の気分が良くなるわ」[p]
[whosay name="飛鳥紗代子"]
[主人公通常]
「[名前]さんは、そういうことってなくって？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公目パチ1回]
「そうですね……」[p]
[fadeoutbgm time=3000]
#
『一日のはじまり』についての話題を手に入れました。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_02
;=======================================================================================
;◆町_共通イベント 02
;『聞き上手と話し上手の話題』
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
;散策イベント◆B4nFWraU42さんご担当その2です。[p] 変更してもいいなら飛鳥さんでいいです
#
今日の町は、気持ちの良い快晴。 [r]
空を仰ぐと、澄み切った青の中に真珠色の日の光が差し込んでくる。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
（天気の良い日は気軽に町を散策すると気持ちがさっぱりするわ）[p]
[whosay name="三宮　時子" color="#c25232"]
[主人公目大]
「あら！　[名前]さん、いいところに！　ちょっと私の話をきいてくれな[r]
[sp]い？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「えっ………」[p]
#
長々と続く話をきいた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
[主人公汗]
(ふぅ……)[p]
[whosay name="三宮　時子" color="#c25232"]
「[名前]さんって聞き上手ね！」[p]
[fadeoutbgm time=3000]
#
『聞き上手と話し上手』についての話題を入手しました。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_03
;=======================================================================================
;◆町_共通イベント 03
;『道の話題』
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
街道を拠点として広がる町なみ。　誰もが、目的地へと向かっていく。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日はどこに向かいましょうか？）[p]
[whosay name="紳士的なおじ様"]
「失礼。帝都大図書館へは、どちらに向かって進めばよろしいでしょ[r]
[sp]うか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「それなら、あちらの大通りに出てから左に曲がると直ぐですわ」[p]
[whosay name="紳士的なおじ様"]
「ありがとう。素敵なお嬢さん」[p]
#
おじ様は、素敵な微笑みを浮かべると目的地に向かって歩いて行った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（あの方も、今、どこかに向かっているのでしょうか？)[p]
[fadeoutbgm time=3000]
#
;長い道のりに行き交う人々を目にしながら、ふと思ってしまった。[p]
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
[whosay name="既婚の友人"]
「[名前]さん！　お久しぶりですわ」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
#
少しふっくらとした友人の指には、赤いルビーの指輪が光る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ごきげんよう。　[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さん、お元気そうですね」[p]
[whosay name="飛鳥紗代子"]
「[名前]さん、様子が変わりましたわね。[r]
[sp]悩める時には、旅行に行くのが一番ですわよ？」[p]
「あぁ、そうそう。この前、翡翠が取れるという海岸に[r]
[sp]お父様達と行きましたの」[p]
[主人公眉下げ]
「確かにそれらしい石は、たくさん落ちていて楽しかった[r]
[sp]のですが……どれが本物なのかは、家に帰って鑑定士に見せる[r]
[sp]までは、分からず仕舞いでしたわ」[p]
#
[主人公目伏柔]
持っていた袱紗を広げると、緑色の小さな石を複数を見せた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「綺麗ですね」[p]
#
波に削られ、つるりとした緑色の石達が光る。[p]
[whosay name="飛鳥紗代子"]
「思い出と割り切ればいいのでしょうね」[p]
「そうだわ。[名前]さんが良ければ、どうぞ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
[主人公眉下げ下]
「よろしいのでしょうか？」[p]
[whosay name="飛鳥紗代子"]
「えぇ、この様に沢山ありますから！[r]
[sp]なんでしたら、お手紙の話の種にしていただいてよろしくってよ！」[p]
[主人公通常]
#
友人は、石を渡すと、土産話をして帰って行った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「お手紙に添えて、あの方にお送りしてみようかしら」[p]
[fadeoutbgm time=3000]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]


*sansaku_machi_common_B4nFWraU42_05
;=======================================================================================
;◆町_共通イベント 05
;『お気に入りの曲の話題』
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
;#
;散策イベント◆B4nFWraU42さんご担当その5です。[p]
#
カフヱの前を通りかかると素敵な曲が流れていた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
[主人公口ほほえみ]
(なんという曲でしょう？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公ポーズ指]
(そういえば、あの方が好きな曲って何かしら？)[p]
[fadeoutbgm time=3000]
#
『お気に入りの曲 』についての話題を得た。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_06
;=======================================================================================
;◆町_共通イベント 06
;『猫の話題』
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
;散策イベント◆B4nFWraU42さんご担当その6です。[p]
#
お茶屋から、呼び込みの声が聞こえる。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[whosay name="お茶の屋の店主"]
「いらしゃいませ。今日は、甘ーい和菓子に合うお茶がそろっておりますよ～」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日は、こちらでお休みしようかしら？）[p]
[whosay name="猫"]
「ニャ〜！」[p]
#
迷っていると、お茶屋の椅子の下に可愛いらしい猫が現れた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「あら、猫だわ。可愛らしい」[p]
[whosay name="お茶の屋の店主"]
「あら、タマちゃん！ また来たのかい？」[p]
[whosay name="猫"]
「ニャォ〜ン？」[p]
#
猫は、まるで、"撫でてもいいのよ"と、いってるように腹を見せながら足元で転がった。[p]
[whosay name="お茶の屋の店主"]
「タマちゃん、今は忙しいから、お姉さんに遊んでもらいなさいな！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「えっ」[p]
[主人公目パチ1回]
(……行ってしまいましたわ……)[p]
[whosay name="タマという猫"]
[主人公憂い]
「ニャォーン……」[p]
#
タマと呼ばれた猫は、もの寂しげに身体を丸める。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目通常]
[主人公口通常]
「少しだけなら……」[p]
[whosay name="タマ"]
[主人公眉下げ下]
「ゴロゴロ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(あの方は、ネコはお好きかしら……？)[p]
[fadeoutbgm time=3000]
#
『猫』の話題を入手しました。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_07
;=======================================================================================
;◆町_共通イベント 07
;『変化と永遠の話題』
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
;散策イベント◆B4nFWraU42さんご担当その7です。[p]
[whosay name="既婚の友人"]
「ごきげんよう [名前]さん」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
#
少しふっくらとした友人の指には、赤いルビーの指輪が光る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ごきげんよう。[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さん、お元気でしたか？」[p]
[whosay name="飛鳥紗代子"]
「[名前]さん、聞いてくださる？[r]
[sp]この前、旦那様と思い出のカフヱにいってみたの」[p]
[whosay name="飛鳥紗代子"]
[主人公眉困り]
「そうしたら、移店されていたらしくって……私、寂しくなってしまったわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「それは、残念ですね……」[p]
[whosay name="飛鳥紗代子"]
[主人公眉下げ下]
[主人公目通常]
「ふぅ。永遠に変わらないものなんてないのかしらね？[r]
[sp][名前]さんにも、そういったものってあるかしら？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……」[p]
[fadeoutbgm time=3000]
#
『変化と永遠』についての話題を得た。[p]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[s]
*sansaku_machi_common_B4nFWraU42_08
;=======================================================================================
;◆町_共通イベント 08
;『手紙』(散策のみで話題は得ない)
;イベント発生条件：6月週～月週、期間中に町へ行くと1度だけ発生
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
梅雨の特有の湿気を帯びた土の香りがする[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
(せっかく散策に出たのに、今にも雨が降り出しそうだわ……)[p]
#
見上げた先には、暗雲が太陽を隠そうとしていた。[p]
[whosay name="町の人" color="#cf5a7f"]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
「あらヤダ。私、洗濯物を取り込まないと！」[p]
[whosay name="町の人" color="#cf5a7f"]
「私もよ！」[p]
#
[主人公通常]
[主人公ポーズ指]
それに気づいたのか、町の人はいそいそと帰り道を急ぎ足で駆けていく。[p]
[whosay name="町の人" color="#cf5a7f"]
「おっと、今降ってきやがったか？」[p]
[whosay name="町の人" color="#cf5a7f"]
「おめぇさん、建材を保護したかい！？」[p]
#
雑踏のが音が過ぎ去っていく。[r]
そんな中、悲しげな声が耳元を掠めていった。[p]
[whosay name="町の人" color="#cf5a7f"]
[主人公目大]
「私が、私から手紙を出さなかったら、あの人と疎遠になってしまった[r]
[sp]のです……でも、もう一度あの人に会いたい！」[p]
#
その言葉にドキリとして、振り返ると既に人影すらなく、街道には、ポツポツと寂しい雨が飛び跳ねていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
(……今日は帰りましょうか)[p]
;[fadeoutbgm time=3000]
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
