;=============================================
;イベント１０月１週、８．５回目
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_1 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_tati_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】 主人公部屋(昼)
 [背景_庭]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公照れ目普通]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[whosay name=&sf.girl_namae color="#cf5a7f"]
（やっと、今日お兄様が帰ってこられる）[p]

[主人公目パチ1回]
#
私はそわそわしながらお兄様を待っていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（良くないとわかっている。[r]
[sp]けれどミルクホール月の光へ行きたいわ）[p]
 
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
;書くなら、お兄様！前になる為、テンポを考えるとなくてもいい。つけるなら直前にｾﾘﾌが必要のため追加

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「お兄様……その、」[p]
 
# 
歳の離れたお兄様は、私を可愛がってくれている。[r]
;どんな風に 一生懸命に　誠意をもって　or 頼めば、どんなことでも　些細なことなら
頼めば、叶えて下さるかもしれない。[p]
 
[whosay name=文矢 color="#538a8a"]
「何だい？言いにくいことなのかい？[r]
[sp]何でも相談にのるよ」[p]
 
#
私は、お兄様の優しい言葉に意を決し、[r]
ミルクホールに連れて行ってくれるよう頼むことにした。[p]
;頼み事を口にした。暫定
 

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公真剣]
「ミルクホールに連れて行ってくださいませんか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「突然どうして？」[p]
 

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公汗]
「その、生演奏のピアノを聴きたくて」[p]

「友人から、とても上手なピアニストのいるミルクホールがある、[r]
[sp]と聞いたのです！」[p]
 
[whosay name=文矢 color="#538a8a"]
「へぇ、どこのミルクホール？」[p]
 

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
「 ミルクホール月の光 です」[p]
 
#
お兄様は少し驚いた顔をしたが、すぐに穏やかな微笑みを浮かべた。[p]
 
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
「お父様とお母様の事詳しく聞いてもいいですか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「いいよ」[p]
 
#
;====================================================================================
[layopt layer=message0 visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】 全画面背景_番傘の女性
[image layer=29 x=1 y=1 storage="bg/hujieda_haha.jpg" time=1200 visible=true]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[layopt layer=message0 visible=true]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
お母様は、身分の高い公爵家の御令嬢でね。[r]
[r]
妾腹でも本妻の子同然に育てられ[r]
母譲りの美人で淑女の名も高く、[ruby text=あ]数[ruby text=また]多にお手紙が来たんだよ。 

;本妻の実子ではないとはいえ、[r]
;母譲りの美人で、淑女の名も高く、[r]
;噂を聞きつけた華族の方々から[r]
;お手紙が沢山来たそうだよ。[p]

お母様はいつか家の為に嫁ぐ事が嫌で[r]
肝心な話が出るとうまく断っていたんだ。[p]

お祖父様も、お母様を一番かわいがっていて[r]
手放すのが惜しんでいた。[r]
[r]
だから、お母様が、お手紙のお相手を[r]
見送っていても、それを許していたそうだよ。[p]

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
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;[layopt layer=message0 visible=true]
;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name=文矢 color="#538a8a"]
「お父様はね、お母様に一目惚れしたそうだよ」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
「お母様はどうだったのですか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「お母様もお父様に好意を持ったんだ」[p]

「当時お父様は武家華族の跡取りで、運動も成績も良くて[r]
[sp]将来を嘱望されている好青年だった」[p]
 
[whosay name=文矢 color="#538a8a"]
「けれど、お父様までは身分が低すぎると[r]
[sp]二人はお手紙を交わす事すら許されなかった」[p]
 
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様とお母様は、それでどうしたのですか？」[p]
 
[whosay name=文矢 color="#538a8a"]
「お祖父様が許すまで、二人とも時を待ったんだ」[p]
#
;====================================================================================
;[layopt layer=message0 visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】 全画面背景＿空
[image layer=29 x=1 y=1 storage="bg/hujieda_sky1.jpg" time=1000 visible=true]
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
;だって　はない？ので　そうだよ。で。
[r]
[r]
そのおかげで、お祖父様に お母様との[r]
お手紙を交わす事が、ようやく許されたんだ。[p]

その後も、お父様は国に貢献し続けて、[r]
爵位を上げれられ、[r]
;(数年後には数ヶ月後には)
結婚することが認められたんだ。[p]
;そうだよ

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;[layopt layer=message0 visible=false]
[主人公驚]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[freeimage layer = 29 time=1000]

;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;[layopt layer=message0 visible=true]
;==========================スクリプト・全画面表示からの復帰準備========================================

;それがお父様とお母様の～なんだ

#
お兄様は穏やかに語り、私に微笑む。[p]
[主人公目パチ1回]

[whosay name=文矢 color="#538a8a"]
「[名前]も大切な人に巡り会えるといいね」[p]
 [主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私は……」[p]
 
 
（お父様やお母様のようになれるかしら）[p]
#
言い淀む私に、お兄様は尋ねる。[p]
 
[whosay name=文矢 color="#538a8a"]
「筝の練習を熱心にしていると聞いたけど[r]
[sp]恋話に興味があるみたいだね。[r]
[sp]まさかとは思うけど好きな人でもできたの？」[p]
 
#
胸がドキッとする。[p]
 
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ！　そんな事ありません」[p]
 
#
その時、見知った女中の声が、襖外から聞こえた。[p]

[主人公眉下げ下]
[主人公目伏]
[主人公口通常]
[whosay name="女中" color=%mp.color]
「文矢様、旦那様がお呼びです」[p]
 

[whosay name=文矢 color="#538a8a"]
「今、行くと伝えておいて」[p]
 
[whosay name="女中" color=%mp.color]
「はい。失礼しました」[p]
 
#
お兄様は私に向き直って優しく笑う。[p]
 
[whosay name=文矢 color="#538a8a"]
「[名前]もお稽古ばかりじゃ疲れるだろうし[r]
[sp]ミルクホール月の光に連れて行ってあげるよ」[p]

「[名前]が頼み事をするのも滅多になくなったしね」[p]
[主人公ポーズ通常]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様！　ありがとうございます」[p]
 
 [whosay name=文矢 color="#538a8a"]
「どういたしまして！[r]
[sp]じゃあ、お父様の所へ行ってくるよ」[p]
 
#
そう言って、お兄様は部屋を後にした。[p]
 
 [主人公目閉]
 [whosay name=&sf.girl_namae color="#cf5a7f"]
 （藤枝様とお会いできる）[p]
 #
;====================================================================================
[layopt layer=message visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[layopt layer=message0 visible=true]
;一瞬裏がみえるの防止背景
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=50]
;テキスト全画面
[font color=white size=27]
;====================================================================================
  この時の藤枝さまへの気持ちはまだ興味と憧れだった。[p]
  
 けれど出会い、憧れは恋へと変わる。[p]
 
 ―― そして引き離されるほどに彼の事を考え、[r]
 恋だと自覚することになる。[p]
 ;=============================================================
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;=============================================================
 #
;次のイベントにでてしまう名前残りを消去
[イベントシーン終了]
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
