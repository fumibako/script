[chara_mod name="bg" storage="toumei.gif" time=1000]
[preload storage="data/fgimage/bg/plane_sakura.jpg"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
(ふぅ……)[p]
#
書きかけの手紙に目を落とす。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……華織お兄様への返事が決まらないわ)[p]
#
気になれば、気になるほど、これからどうして良いのかわからなくなって
きてしまう[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（手紙だけじゃないわ。[r]
[sp]お会いしてからだってどうしたらいいか少し不安だわ）[p]
#
再び溜息をつくと、廊下から落ち着いた足音が聞こえた。[p]
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
[whosay name=磯野 color="dimgray"]
[主人公通常]
「お嬢様、お茶をお持ちしました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
「ありがとう。入っていいわ」[p]
[whosay name=磯野 color="dimgray"]
「失礼します」[p]
#
[主人公目閉]
[主人公口ほほえみ]
フワリと新緑の芳醇な香りが漂い、心を和ませる[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの時よりも書けるようになったと思っていたのに）[p]
#
[主人公ふぅ閉]
緑光を映すお茶を口にすると、もうひとつ溜息をついた。[p]
[whosay name=磯野 color="dimgray"]
「お嬢様？　どうかされましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
[主人公ポーズ通常]
「いえ、少し」[p]
#
私は、磯野に相談しようかと目を合わせてみたが、[r]
お相手に対して、気持ちが芽生えてきた分に少し恥ずかしくなってしまった。[p]
[whosay name=磯野 color="dimgray"]
[主人公通常]
「お嬢様。よろしければ、この磯野に御相談くださりませ。[r]
[sp]旦那様からお手紙のやりとりについてお嬢様の手伝いになるよう[r]
[sp]いい付かっております」[p]

*select
[主人公横目]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(相談しようかしら？)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢例
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;【分岐】
[link target=*sijyou]相談する[endlink][r][r][r]
[link target=*no]大丈夫[endlink][r]
;[r][r][link target=*okeiko]それよりお稽古のことが気になった。[endlink]
[resetfont]
[s]

*sijyou
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
私は、思い切って磯野に相談することにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
「わかりましたわ……」
[主人公口ほほえみ]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「今後、お会いする方に失礼がないようにするには、どのように[r]
[sp]振舞えばいいのでしょう？[r]
[主人公眉下げ下]
[sp]……そう考えてしまうと余計に筆が進まなくて」[p]
[whosay name=磯野 color="dimgray"]
「お相手のことを考えられるのは良いことです[r]
[sp]どなたについてお悩みでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「華織お兄様のことを聞いていいかしら」[p]
[whosay name=磯野 color="dimgray"]
「はい 四条華織様　のことですね」[p]
[whosay name=磯野 color="dimgray"]
「四条華織様は、華道の名家の出自でもございます。[r]
[主人公目パチ1回]
[sp]お久しぶりにやりとりなさって四条様も、難しくお考えかもしれ[r]
[sp]ませんが、根気よく返事をお出しください」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（そうですね。　少し素っ気ない気がしますけれど、もう少し頑張ってみよう[r]
[sp]かしら？）[p]
[whosay name=磯野 color="dimgray"]
[主人公ポーズ通常]
「四条様は、お花がお好きなようですから、[r]
[sp]お手紙のやりとりについては、『季節の話題』を送ってみては如何で[r]
[sp]しょうか？」[p]
[whosay name=磯野 color="dimgray"]
[主人公目パチ1回]
「また、お話があうように『華道のお稽古』も、ほどほどに重ねておくと[r]
[sp]よいでしょう」[p]
[whosay name=磯野 color="dimgray"]
「お稽古だけでは、お嬢様も滅入ってしまうと思います。[r]
[sp]気分転換に『散策』もお勧めします[r]
[sp]『秋』の色合いを眺められますと『華道』のお稽古の手助けにもなる[r]
[sp]かもしれませんね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公口ほほえみ]
「わかったわ。　ありがとう磯野。　[r]
[主人公ほほえみ]
[sp]磯野のおかげで、お返事を書く勇気が沸いてきたみたい」[p]
[whosay name=磯野 color="dimgray"]
「私もお嬢様の笑顔が励みでございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（『季節の話題』、『華道のお稽古』、『秋の散策』ね)[p]
@jump target=*end_Q
*no
#
[主人公通常]
私は、自分の力で解決することにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「大丈夫。 ありがとう磯野。　私、もう少し頑張ってみるわ」[p]
[whosay name=磯野 color="dimgray"]
「また気になるようなことがありましたらお申し付けください」[p]
@jump target=*end_Q
*okeiko
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
[主人公通常]
それよりお稽古のことが気になった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、それよりお稽古のことが知りたいわ[r]
[sp]最近、張り合いがなくて……」[p]
[whosay name=磯野 color="dimgray"]
「お稽古をしますと淑女としての品格が身についていきます。 [r]
[sp]もしかしたら何処かでお嬢様の頑張りを見てくださる方がいるかも[r]
しれません。　陰ながら磯野も応援させていただきます」[p]
[whosay name=磯野 color="dimgray"]
「お手紙のお相手になられた方については、よろしいですか？」[p]
;よろしゅうございましたか？
@jump target=select
;選択肢に戻る

*end_Q

;@jump storage="event.ks" target=*event_owari

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
