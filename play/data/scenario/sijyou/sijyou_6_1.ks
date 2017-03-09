*replay_sijyou_6_1
*start
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*6_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築ボタン無し版]
[暗転]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
;ゆっくり表示
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
;bg_kinari.jpg	
;bg_kinari_sakura.jpg
#
――夢を見た。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に（思い出/夢見るシーンに
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ここは、どこでしょうか？）[p]
#
寂しいような不思議な不安にかられる。[p]
#
その途端、見たこともない大きな温室が目の前に現れた。[p]
[playse storage=shine.ogg loop=false ]
;キラキラSEとか
[chara_mod name="bg" storage="bg/test_sijyou_hanazono.jpg" time=1500]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なんて広い温室なのかしら！ それに色々な花が咲き乱れて綺麗だわ）[p]

;------------------------------------------------------
[if exp="tf.test_gamen==true"]
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


[whosay name="？？？"]
「[名前]……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（誰かしら？ ……顔は見えないけれど声はするわ[r]
[sp]優しくて懐かしいような声……）[p]
;キャライメージ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの方は！）[p]
[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃん。 こっちだよ」[p]
#
その優しい声の主は、華織お兄さまであった[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織お兄様！」 [p]
[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃん会いたかったよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私もです、華織お兄さま！」 [p]
[whosay name="華織お兄さま" color="olivedrab"]
「あの雪の日に君を置いて去っていってしまってごめんね。[r]
[sp]とても後悔してる」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんな！ だって……大人になる為の決まりですもの」 [p]
[whosay name="華織お兄さま" color="olivedrab"]
「さぁ、[名前]ちゃん。君に好きな花をあげよう。そしてワルツを踊[r]
[sp]ろうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ？！」[p]
#
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
#
華織お兄さまは、私の髪飾りに花を添えると、夢のような足取りでワルツを[r]
舞う。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうしてかしら？ 私、踊れてしまってるわ」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃん、とても上手だね。[r]
[sp]そんな君には、これからは、もっと色々な事を教えてあげたいな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい……」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「さぁ、目を閉じて」[p]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
#
華織お兄様は、静かに呟くと私の頬にご自身の頬をあてて抱きしめる。[p]
;キスはないからなー
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織お兄様、懐かしくて優しい気持ちになるわ……。[r]
[sp]私の幸せは、やっぱり、一番近くにいた華織お兄さまなのだわ……）[p]
;一応　伏線はっておくか
#
恋夢に満ち足りていると、どこかで鐘が鳴りだした。[p]
;広間時計 ボーンボーンボーン…
;【SE】時計の鐘（ボーン）３回ほど（繰り返し）
[playse storage=tokei_tokei_kane.ogg loop=false]
[playse storage=tokei_tokei_kane.ogg loop=false]
[playse storage=tokei_tokei_kane.ogg loop=false]
[chara_mod name="bg" storage="bg/test_sijyou_hanazono.jpg" time=1500]
[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃん、僕は、もうそろそろ行かないと」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうしてですか？！　私、もう子供じゃないのに！」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「僕は、今のままでは[名前]ちゃんを楽しませてあげれないからね」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「せめて兄弟のことを守れるくらい、強くならないといけない。[r]
[sp]それに僕はまだ一人前の華道家になってもなっていない、[r]
[sp]本当の僕に会うその日まで……」[p]
;一応、ストーリーの前振りをしておいて受け入れ準備をしてもらう
#
;【SE】春風
[playse storage=harukaze.ogg loop=false ]
[image name="saku1" storage="bg/B4nFWraU42/img_sakura_sijyou.png" layer=1 zindex=2 left=-200]
;------------keyframe の定義
[keyframe name="animation1"]
[frame p=100% x="3000" scale="4"]
[endkeyframe]
;アニメーション実行
[kanim name="saku1" keyframe="animation1" time="7000" ]
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
#
花吹雪に包まれ声は遠ざかっていく[p]
[iscript]
$('.saku1').remove();
[endscript]
[whosay name="華織お兄さま" color="olivedrab"]
「[名前]ちゃん 、頑張ってね……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織お兄さま！　待ってください！」 [p]
[fadeoutbgm time=4000]
#
[chara_mod name="bg" storage="toumei.gif" time=1000]

;【SE】すずめ（チュンチュン）
[playse storage=tori_suzume.ogg loop=false ]
;【背景】主人公邸 庭の見える部屋：昼
[layopt layer=fix visible=false]
[image name="junbi" layer=29 x=1 y=1 storage="bg/room_niwa.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=50]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ指]
[主人公通常]
[freeimage layer=29 time=1000]
[layopt layer=fix visible=true]
#
目が覚めると自分の部屋であった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（夢……?）
[主人公憂い]
[p]
[主人公ふぅ閉]
（ふぅ。 なんだったのかしら……不思議な夢を見た気がするわ）[p]
*seen_end
[イベントシーン終了]

[if exp="f.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

@jump storage="test_sijyou.ks"
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
[メッセージウィンドウ上ボタン表示]
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
