[chara_mod name="bg" storage="toumei.gif" time=1500]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
;bg_kinari.jpg	
;bg_kinari_sakura.jpg
#
――夢を見た。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

(ここは、どこでしょうか？）[p]
#
寂しいような不思議な不安にかられる。[p]
#
その途端、見たことも大きな温室が目の前に現れた。[p]
;キラキラSEとか
[chara_mod name="bg" storage="bg/test_sijyou_hanazono.jpg" time=1500]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(なんて広い温室なのかしら！ それに色々な花もが咲き乱れて綺麗だわ)[p]
[whosay name=”？？？”]
「[名前]……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

(誰かしら？……顔は見えないけれど声はするわ[r]優しくて懐かしいような声……)[p]
;キャライメージ

[whosay name=&sf.girl_namae color="#cf5a7f"]

(あの方は！)[p]
[whosay name="華織お兄様" color="olivedrab"]
「[名前]ちゃん。　こっちだよ」[p]
#
その優しい声の主は、華織お兄様であった[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

「華織お兄様！」 [p]

[whosay name="華織お兄様" color="olivedrab"]
「[名前]ちゃん会いたかったよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

「私もです、華織お兄様！」 [p]
[whosay name="華織お兄様" color="olivedrab"]
「あの雪の日に君を置いていってしまってごめんね[r]
[sp]とても後悔してる」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]

「そんな！ だって……大人になる為の決まりですもの」 [p]
[whosay name="華織お兄様" color="olivedrab"]
「さぁ、[名前]ちゃん。君に好きな花をあげよう。そしてワルツを踊ろうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ？！」[p]
#
華織お兄様は、私の髪飾りに花を添えると、夢のような足取りでワルツを舞う[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうしてかしら？私、踊れてしまってるわ」[p]
[whosay name="華織お兄様" color="olivedrab"]
「[名前]ちゃん、とても上手だね。けど、これからは、もっと色々な事を教えてあげたいな」[p]
;書きながら笑ってるとこ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい……」[p]
[whosay name="華織お兄様" color="olivedrab"]
「さぁ、目を閉じて」[p]
華織お兄様は、静かに呟くと私の頬にご自身の頬をあてて抱きしめる。[p]
;キスはないからなー
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織お兄様、懐かしくて優しい気持ちになるわ……)[p]
#
恋夢に満ち足りていると、どこかで鐘が鳴りだした。[p]
;広間時計 ボーンボーンボーン…
[whosay name="華織お兄様" color="olivedrab"]

「[名前]ちゃん、僕は、もうそろそろ行かないと」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうしてですか？！」[p]
[whosay name="華織お兄様" color="olivedrab"]
「僕は、今のままでは[名前]ちゃんを楽しませてあげれないからね」[p]
[whosay name="華織お兄様" color="olivedrab"]
「せめて兄弟のことを守れるくらい、強くならないといけない。それに僕はまだ一人前の華道家になってもなっていない、本当の僕に会うその日まで……」[p]
;一応、ストーリーの前振りをしておいて受け入れ準備をしてもらう
#
花吹雪に包まれ声は遠ざかっていく[p]
[whosay name="華織お兄様" color="olivedrab"]
「 [名前]ちゃん 、頑張ってね」[p]
[chara_mod name="bg" storage="toumei.gif" time=1500]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織お兄様！　待ってください！」 [p]
;【SE】すずめ（チュンチュン）
[playse storage=tori_suzume.ogg loop=false ]
;【背景】主人公邸 庭の見える部屋：昼(光が射す)
[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
目が覚めると自分の部屋であった。[p]
;ちゅんちゅんSE
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ふぅ。なんだったのかしら……不思議な夢を見た気がするわ）[p]

[イベントシーン終了]
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
