;=============================================
;イベント１０月１週、８．５回目
;=======================お芝居の準備中です==================================
*replay_hujieda_10_1
[stopbgm]
[call target=*10_1 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】 主人公部屋(昼)
 [背景_庭]
[wait time=10]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公照れ目普通]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[whosay name=&sf.girl_namae color="#cf5a7f"]
（やっと、今日、お兄様が帰ってこられる）[p]
;今日はやっとお兄様が帰ってこられるわ
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[主人公目パチ1回]
#
私は、そわそわしながらお兄様を待っていた。[p]

;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]

[endif]
;------------------------------------------------------


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（良くないとわかっている。[r]
[sp]けれど、"ミルクホール月ノ光"へ行きたいわ）[p]
 
[主人公照れ目普通]
（藤枝様はどんな顔をされるかしら？）[p]
 
[主人公目閉じ]
（藤枝様は……）[p]

[whosay name=文矢 color="#538a8a"]
「[名前]、百面相をして何を考えているの？[r]
 [sp]返事をしないから部屋に居ないかと思ったよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「お兄様！」[p]

[whosay name=文矢 color="#538a8a"]
「どうしたんだい？　[名前]」[p]
# 
お兄様は、以前と変わらない様子で私に語り掛ける。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「お兄様……その、」[p]
 
# 
歳の離れたお兄様は、私を可愛がってくれている。[r]

誠意をもって頼めば、どんな些細な事でも叶えて下さるかもしれない。[p]

 
[whosay name=文矢 color="#538a8a"]
「何だい？ 言いにくいことなのかい？ 何でも相談にのるよ」[p]
 
#
[主人公眉通常]
[主人公目大]
;真剣に切り替わるまでの違和感修正
私は、お兄様の優しい言葉に意を決し、[r]
ミルクホールに連れて行ってくれるよう頼むことにした。[p]

 
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公真剣]
「ミルクホールに連れて行ってくださいませんか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「突然、どうして？」[p]
 
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公汗]
「その、ピアノの生演奏を聴きたくなったのです」[p]

「それに友人から、とても上手なピアニストのいるミルクホールがある、[r]
[sp]と聞いたのです！」[p]
 
[whosay name=文矢 color="#538a8a"]
「へぇ、どこのミルクホール？」[p]
 
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
「 "ミルクホール月ノ光" です」[p]
 
#
お兄様は、少し驚いた顔をしたが、すぐに穏やかな微笑みを浮かべた。[p]
 
[whosay name=文矢 color="#538a8a"]
「お父様とお母様の初めて会った場所だね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「え！　そうなのですか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「おや、知らなかったの？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ええ」[p]
 
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様とお母様の事を詳しく聞いてもいいですか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「いいよ」[p]
 
#
;====================================================================================
[layopt layer=message0 visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】 全画面背景_番傘の女性
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/hujieda_haha.jpg" time=1200 visible=true]
[wait time=1200]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[layopt layer=message0 visible=true]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

お母様は、公爵家の御令嬢でね。[r]
[r]
妾腹ではあったけど本妻の子同然に育てられ[r]
母譲りの美人で淑女の名も高く、[ruby text=あ]数[ruby text=また]多にお手紙が[r]
来たんだよ。[p]
;こちらは原文です。コメントではないです
;本妻の実子ではないとはいえ、[r]
;母譲りの美人で、淑女の名も高く、[r]
;噂を聞きつけた華族の方々から[r]
;お手紙が沢山来たそうだよ。[p]

お母様は、いつか家の為に嫁ぐ事が嫌で[r]
肝心な話が出るとうまく断っていたんだ。[p]

お祖父様も、お母様を一番かわいがっていて[r]
手放すのが惜しんでいた。[r]
[r]
だから、お母様が、お手紙のお相手を[r]
見送っていても、それを許していたそうだよ。[p]
;==========================
;【背景】 全画面背景_bg_prologue.jpg　ここでﾐﾙｸﾎｰﾙ関連に切り替えないとおかしい
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/mirukutennai_zengamen.jpg" time=1200 visible=true]
[wait time=1200]
;==========================
そんな折、学生達の間で人気だというミルクホールに[r]
行ってみたくて、友人達とこっそり行ったんだ。[p]

……そこで、お父様とお母様は出会ったんだ。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;[layopt layer=message0 visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;[layopt layer=message0 visible=true]
;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name=文矢 color="#538a8a"]
「お父様はね、お母様に一目惚れしたそうだよ」[p]

[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
「お母様は、どうだったのですか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「お母様もお父様に好意を持ったんだ」[p]

「当時、お父様は武家華族の跡取りで、運動も成績も良くて[r]
[sp]将来を[ruby text=しょく]嘱[ruby text=ぼう]望されている好青年だった」[p]
 
[whosay name=文矢 color="#538a8a"]
「けれど、お父様までは身分が低すぎると[r]
[sp][ruby text=ふた]二[ruby text=り]人は、お手紙を[ruby text=か]交わす事すら許されなかった」[p]
 [主人公ポーズ通常]
 [主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様とお母様は、それでどうしたのですか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「お祖父様が許すまで、[ruby text=ふた]二[ruby text=り]人とも時を待ったんだ」[p]
[主人公眉下げ下]
#
;====================================================================================
;[layopt layer=message0 visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】 全画面背景＿空
[eval exp="f.haikei_credit=''"]
[image layer=29 x=0 y=0 storage="bg/hujieda_sky1.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;[layopt layer=message0 visible=true]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
 
その後、お父様は東帝國大学に進み、[r]
文官高等試験に及第し、[r]
時の首相に見出されて欧羅巴に留学したんだ。[p]

留学後は、[r]
法制度の細分化に助力し、その功績がみとめられた[r]
そうだよ。[r]
[r]
[r]
そのおかげで、お祖父様に お母様との[r]
お手紙を交わす事が、ようやく許されたんだ。[p]

その後も、お父様は国に貢献し続けて、[r]
爵位を上げれられた後、[r]
結婚することが認められたそうだよ。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;[layopt layer=message0 visible=false]
[主人公驚]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[freeimage layer = 29 time=1000]
[wait time=1000]

;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;[layopt layer=message0 visible=true]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=文矢 color="#538a8a"]
「……それがお父様とお母様のなれ初め」[p]

#
お兄様は穏やかに語り、私に微笑む。[p]
[主人公目パチ1回]

[whosay name=文矢 color="#538a8a"]
「[名前]も大切な人に巡り会えるといいね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
 [主人公憂い]
「私は……」[p]
  
（お父様やお母様のようになれるかしら）[p]
#
言い淀む私に、お兄様は尋ねる。[p]
 
[whosay name=文矢 color="#538a8a"]
「[ruby text=こと]筝の練習を熱心にしていると聞いたけど、恋話に興味があるみたい[r]
[sp]だね。[r]
[主人公目大]
[sp]まさかとは思うけど、好きな人でもできたの？」[p]
 
#
胸がドキリとする。
[主人公頬染め]
[p]
;ドキリ 
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「そ！　そんな事ありません」[p]
 
#
[主人公効果消]
[主人公口通常]
その時、見知った女中の声が襖外から聞こえた。[p]

[whosay name="女中" color=%mp.color]
[主人公眉下げ下]
[主人公目伏]
「文矢様、旦那様がお呼びです」[p]

[whosay name=文矢 color="#538a8a"]
「今、行くと伝えておいて」[p]
 
[whosay name="女中" color=%mp.color]
「はい。 失礼しました」[p]
 
#
お兄様は、私に向き直って優しく笑う。[p]
 
[whosay name=文矢 color="#538a8a"]
「[名前]も、お稽古ばかりじゃ疲れるだろうし[r]
[sp]"ミルクホール月ノ光" に連れて行ってあげるよ」[p]

「[名前]が頼み事をするのも滅多になくなったしね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公ポーズ通常] 通常のままなのでコメントアウト
[主人公ほほえみ]
「お兄様！ ありがとうございます」[p]
 
 [whosay name=文矢 color="#538a8a"]
「どういたしまして！[r]
[sp]じゃあ、お父様の所へ行ってくるよ」[p]
 
#
そう言って、お兄様は部屋を後にした。[p]
 
 [whosay name=&sf.girl_namae color="#cf5a7f"]
  [主人公目閉]
 （藤枝様とお会いできる）[p]
 [fadeoutbgm time=3000]
 #
;====================================================================================
[layopt layer=message visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:芙蓉
[image layer=29 x=0 y=0 storage="bg/bg_hujieda_fuyou.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[layopt layer=message0 visible=true]
;一瞬裏がみえるの防止背景
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_hujieda_fuyou.jpg" time=50]
[wait time=10]
;テキスト全画面
[font color=white size=27]
;====================================================================================
  生けられた芙容の蕾と艶やかに咲く花びらを見て、[r]
  私は、胸に手を当てた。 [p]
  
 ――きっとこの淡い気持ちは育っていく。 [p]
 
 ;=============================================================
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;=============================================================

*seen_end
 #
;次のイベントにでてしまう名前残りを消去

[eval exp="sf.event_hujieda_10_1 = 1"]

[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_hujieda.ks"
[s]

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

[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]

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
