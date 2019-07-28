;=======================================================================================
;読込不良防止目的で、散策イベントファイルを分割しました
;=======================================================================================
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
[whosay name="お茶屋の店主"]
「いらしゃいませ～。[r]
[sp]今日は、甘ーい和菓子に合うお茶がそろっておりますよ～」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日は、こちらでお休みしようかしら？）[p]
[whosay name="猫"]
「ニャ～！」[p]
#
迷っていると、お茶屋の椅子の下に可愛らしい猫が現れた。[p]
;↑公式サイトフォームよりご指摘をいただき「可愛いらしい」→「可愛らしい」に統一させていただきました。意図と異なる場合は再調整いたしますので、お知らせください◆jsYiJcqRkk
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「あら、猫だわ。 可愛らしい」[p]
[whosay name="お茶屋の店主"]
「あら、タマちゃん！ また来たのかい？」[p]
[whosay name="猫"]
「ニャォ～ン？」[p]
#
猫は、まるで、"[ruby text="な"]撫でてもいいのよ"と、言ってるように[r]
お腹を見せながら足元で転がった。[p]
[whosay name="お茶屋の店主"]
「タマちゃん、今は忙しいから、お姉さんに遊んでもらいなさいな！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「えっ」[p]
[主人公目パチ1回]
（……行ってしまいましたわ……)[p]
[主人公憂い]
（猫は好きだけど、遊んでいると磯野に…………)[p]
[whosay name="タマという猫"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
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
