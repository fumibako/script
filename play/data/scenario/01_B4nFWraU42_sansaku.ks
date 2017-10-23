*sansaku_machi_common_B4nFWraU42_01
;=======================================================================================
;◆町_共通イベント 01
;『一日のはじまりの話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
;主人公の口調は自由に調整してください。
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true storage="../fgimage/bg/bg_machi.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]

#
;散策イベント◆B4nFWraU42さんご担当その1です。[p]
;飛鳥 紗代子さん
[whosay name="？？？"]
「ごきげんよう、[名前]さん」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
#
声を掛けてきたのは、親戚の[ruby text=あす]飛[ruby text=か]鳥[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さんだ。[r]
少しふっくらとした彼女の指には、赤いルビーの指輪が光る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ごきげんよう、[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さん。　お元気になされてましたか？」[p]
[whosay name="飛鳥紗代子"]
[主人公眉困り]
「色々とありまして少し疲れていたところです……」[p]
「ふぅ、お家の作法を覚えるのに時間がかかって、[r]
[sp]毎日、お義母様に怒られないか恐々としてるわ」[p]
;花嫁修行中なのかな 婚姻、結納済みの友人でもいいかもしれません 悩みがない友人というイメージです 
[whosay name="飛鳥紗代子"]
[主人公眉下げ下]
[主人公目パチ1回]
「けど、今日の淹れたお茶が美味しかったの。[r]
[sp][ruby text=いち]一日の始まりに良いことがあると、その日の気分が良くなるわ」[p]
[whosay name="飛鳥紗代子"]
[主人公通常]
「[名前]さんは、そういうことってなくって？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公目パチ1回]
「そうですね……」[p]
[fadeoutbgm time=3000]
[if exp="tf.test_gamen1 == true"]
@jump storage="01_B4nFWraU42_test.ks"
[endif]
#
[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『一日のはじまりの話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('一日のはじまりの話題',0,1,2,1,1,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
[s]

*sansaku_machi_common_B4nFWraU42_02
;=======================================================================================
;◆町_共通イベント 02
;『聞き上手と話し上手の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
;散策イベント◆B4nFWraU42さんご担当その2です。[p] 
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
（天気の良い日に町を散策すると気持ちがスッキリするわ）[p]
[whosay name="三宮　時子" color="#c25232"]
[主人公目大]
「あら！　[名前]さん、いいところに！　ちょっと私のお話を[r]
[sp]きいてくださらない？」[p]
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

[if exp="tf.test_gamen1 == true"]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[endif]
#
[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『聞き上手と話し上手の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('聞き上手と話し上手の話題',0,2,0,-1,0,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
[s]

*sansaku_machi_common_B4nFWraU42_03
;=======================================================================================
;◆町_共通イベント 03
;『道の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
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
「失礼。 帝都大図書館へは、どちらに向かって進めば[r]
[sp]よろしいでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「それなら、あちらの大通りに出てから左に曲がると直ぐですわ」[p]
[whosay name="紳士的なおじ様"]
「ありがとう。 素敵なお嬢さん」[p]
#
おじ様は、素敵な微笑みを浮かべると目的地に向かって歩いて行った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（あの方も、今、どこかに向かっているのでしょうか？)[p]
;（あの方も、今、どこかにお出掛けになられていらっしゃるのでしょうか？)[p]
[fadeoutbgm time=3000]
#
;長い道のりに行き交う人々を目にしながら、ふと思ってしまった。[p]

[if exp="tf.test_gamen1 == true"]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[endif]

[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『道の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('道の話題',0,0,2,1,1,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]

[s]

*sansaku_machi_common_B4nFWraU42_04
;=======================================================================================
;◆町_共通イベント 04
;『緑の石の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
;散策イベント◆B4nFWraU42さんご担当その4です。[p]
[whosay name="？？？"]
「[名前]さん！　お久しぶりですわ」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
#
声を掛けてきたのは、親戚の[ruby text=あす]飛[ruby text=か]鳥[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さんだ。[r]
少しふっくらとした彼女の指には、赤いルビーの指輪が光る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ごきげんよう。　[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さん、お元気そうですね」[p]
[whosay name="飛鳥紗代子"]
「[名前]さん、ご様子が変わりましたわね。[r]
[sp]悩める時には、ご旅行にお出掛けなさるのが一番ですわよ？」[p]
「ああ、そうそう。この前、翡翠が取れるという海岸に[r]
[sp]お父様達と参りましたの」[p]
[主人公眉下げ]
「確かにそれらしい石は、たくさん落ちていて楽しかったのですが……[r]
[sp]どれが本物なのかは、家に帰って鑑定士に見せるまで、[r]
[sp]分からず仕舞いでしたわ」[p]
#
[主人公目伏柔]
持っていた[ruby text=ふく]袱[ruby text=さ]紗を広げると、緑色の小さな石を複数を見せた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「綺麗ですね」[p]
#
波に削られ、つるりとした緑色の石達が光る。[p]
[whosay name="飛鳥紗代子"]
「思い出と割り切れば良いのでしょうね」[p]
「そうだわ。 [名前]さんが宜しければ、どうぞ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
[主人公眉下げ下]
「頂いてもよろしいのでしょうか？」[p]
[whosay name="飛鳥紗代子"]
「えぇ、この様に沢山ございますから！[r]
[sp]なんでしたら、お手紙の御話の種にしていただいてよろしくってよ！」[p]
[主人公通常]
#
友人は、石を渡すと、土産話をして帰って行った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「お手紙に添えて、あの方にお送りしてみようかしら」[p]
[fadeoutbgm time=3000]

[if exp="tf.test_gamen1 == true"]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[endif]

[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『緑の石』と『緑の石の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('緑の石の話題',0,0,1,2,1,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_B4nFWraU42_test.ks"
[s]


*sansaku_machi_common_B4nFWraU42_05
;=======================================================================================
;◆町_共通イベント 05
;『お気に入りの曲の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
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
(そういえば、
[if exp="f.hujieda_au == 1"]
藤枝様が好きな曲って何かしら？)[p]
[elsif exp="f.katuraginomiya_au == 1"]
殿下が好まれる曲は、どの様なものでしょうか？)[p]
[elsif exp="f.zaizen_au == 1"]
財前様がお好きな曲って何かしら？)[p]
[elsif exp="f.kuroda_au == 1"]
黒田様がお好きな曲って何かしら？)[p]
[elsif exp="f.sijyou_au == 1"]
華織様が好きな曲って何かしら？)[p]
;園遊会後なのでok
[else]
あの方が好きな曲って何かしら？)[p]
[endif]

[fadeoutbgm time=3000]

[if exp="tf.test_gamen1 == true"]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[endif]

#
[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『お気に入りの曲の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('お気に入りの曲の話題',0,-1,2,0,2,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_06
;=======================================================================================
;◆町_共通イベント 06
;『猫の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
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
「いらしゃいませ～。[r]
[sp]今日は、甘ーい和菓子に合うお茶がそろっておりますよ～」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日は、こちらでお休みしようかしら？）[p]
[whosay name="猫"]
「ニャ～！」[p]
#
迷っていると、お茶屋の椅子の下に可愛いらしい猫が現れた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「あら、猫だわ。 可愛らしい」[p]
[whosay name="お茶の屋の店主"]
「あら、タマちゃん！ また来たのかい？」[p]
[whosay name="猫"]
「ニャォ～ン？」[p]
#
猫は、まるで、"撫でてもいいのよ"と、言ってるように[r]
お腹を見せながら足元で転がった。[p]
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

[if exp="tf.test_gamen1 == true"]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[endif]

#
[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『猫の話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('猫の話題',0,0,0,1,-1,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku_machi_common_B4nFWraU42_07
;=======================================================================================
;◆町_共通イベント 07
;『変化と永遠の話題』
;イベント発生条件：月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
;散策イベント◆B4nFWraU42さんご担当その7です。[p]
[whosay name="？？？"]
「ごきげんよう。 [名前]さん」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
#
声を掛けてきたのは、親戚の[ruby text=あす]飛[ruby text=か]鳥[ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さんだ。[r]
少しふっくらとした彼女の指には、赤いルビーの指輪が光る。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ごきげんよう。 [ruby text=さ]紗[ruby text=よ]代[ruby text=こ]子さん、お元気でしたか？」[p]
[whosay name="飛鳥紗代子"]
「[名前]さん、聞いてくださる？[r]
[sp]この前、旦那様と思い出のカフヱにまいりましたの」[p]
[whosay name="飛鳥紗代子"]
「そうしたら、移店されていたらしくって……
[主人公眉困り]
[r]
[sp]私、寂しくなってしまったわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「それは、残念ですね……」[p]
[whosay name="飛鳥紗代子"]
[主人公眉下げ下]
[主人公目通常]
「ふぅ。 永遠に変わらないものなんてないのかしらね？[r]
[sp][名前]さんにも、そういったものってあるかしら？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……」[p]
[fadeoutbgm time=3000]

[if exp="tf.test_gamen1 == true"]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[endif]

#
[layopt layer=29 visible=true]
;【話題入手】
[話題入手 wadai_txt="『変化と永遠についての話題』を手に入れました"]
[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('変化と永遠についての話題',0,1,2,1,2,'a','','','','')"]
[イベントシーン終了]
[イベントシーン終了２]
@jump storage="01_B4nFWraU42_test.ks"
[s]
*sansaku_machi_common_B4nFWraU42_08
;=======================================================================================
;◆町_共通イベント 08
;『手紙』(散策のみで話題は得ない)
;イベント発生条件：6月週～月週、期間中に町へ行くと1度だけ発生
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
梅雨の特有の湿気を帯びた土の香りがする。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
(せっかく散策に出たのに、今にも雨が降り出しそうだわ……)[p]
#
見上げた先には、暗雲が太陽を隠そうとしていた。[p]
[whosay name="町の人・壱" color="#cf5a7f"]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
「あらヤダ。 私、洗濯物を取り込まないと！」[p]
[whosay name="町の人・弐" color="#cf5a7f"]
「私もよ！」[p]
#
[主人公通常]
[主人公ポーズ指]
それに気づいたのか、町の人はいそいそと帰り道を急ぎ足で駆けていく。[p]
[whosay name="町の人・参" color="#cf5a7f"]
「おっと、今降ってきやがったか？」[p]
[whosay name="町の人・肆" color="#cf5a7f"]
「おめぇさん、建材を保護したかい！？」[p]
#
雑踏が過ぎ去っていく。[r]
そんな中、悲しげな声が耳元を掠めていった。[p]
[whosay name="町の人・伍" color="#cf5a7f"]
[主人公目大]
「私が、私から手紙を出さなかったら、あの人と疎遠になって[r]
[sp]しまったのです……でも、もう一度あの人に会いたい！」[p]
#
その言葉にドキリとして振り返ると、既に人影すらなく、[r]
街道には、ポツポツと寂しい雨が飛び跳ねていた。[p]
;振り返るが
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
(……今日は帰りましょうか)[p]

[if exp="tf.test_gamen1 == true"]
[イベントシーン終了]
@jump storage="01_B4nFWraU42_test.ks"
[endif]

[layopt layer=29 visible=true]
[イベントシーン終了]
[イベントシーン終了２]
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
