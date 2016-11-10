[whosay name=&sf.girl_namae color="#cf5a7f"]
(ふぅ……)[p]
#
白い手紙に目を落とす。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……華織お兄様への返事が決まらないわ)[p]
#
気になれば、気になるほど、これからどうして良いのかわからなくなって
きてしまう[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（手紙だけじゃないわ。[r]
[sp]お会いしてからだってどうしたらいいか少し不安だわ）[p]
#
再び溜息をつくと、廊下から落ち着いた足音が聞こえた。[p]
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。入っていいわよ」[p]
[whosay name=磯野 color="dimgray"]
「失礼します」[p]
#
フワリと新緑の芳醇な香りが漂い、心を和ませる[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの時よりも書けるようになったと思っていたのに）[p]
#
緑光を映すお茶を口にすると、もうひとつ溜息をついた。[p]
[whosay name=磯野 color="dimgray"]
「お嬢様？　どうかされましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、少し」[p]
#
私は、磯野に相談しようかと目を合わせてみたが、[r]
お相手に対して、気持ちが芽生えてきた分に少し恥ずかしくなってしまった。[p]
[whosay name=磯野 color="dimgray"]
「お嬢様。よろしければ、この磯野に御相談くださりませ。[r]
[sp]旦那様からお手紙のやりとりについてお嬢様の手伝いになるよう[r]
いい付かっております」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「わかりましたわ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今後、お会いする方に失礼がないようにするには、どのように[r]
[sp]振舞えばいいのでしょう？[r]
[sp]……そう考えてしまうと余計に筆が進まなくて」[p]
[whosay name=磯野 color="dimgray"]
「お相手のことを考えられるのは良いことです[r]
[sp]どなたについてお悩みでしょうか？」[p]

*select
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]


#
相談しようかしら？
;【分岐】
[glink target=*sijyou text="相談する" fontcolor=gray size=23 width="200" x=200 y=200 color=white]
[glink target=*no text="大丈夫" fontcolor=gray size=23 width="200" x=200 y=100 color=white]
[s]

*sijyou
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[er]
#
相談することにした。
#
私は、思い切って磯野に相談することにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織お兄様のことを聞いていいかしら」[p]
[whosay name=磯野 color="dimgray"]
「はい 四条華織様　のことですね 」[p]
[whosay name=磯野 color="dimgray"]

「四条華織様は、華道の名家の出自でもございます。[r]
お久しぶりにやりとりなさって四条様も、難しくお考えかもしれませんが根気よく返事をお出しください」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうですね。　少し素っ気ない気がしますけれど、もう少し頑張ってみようかしら？）[p]
[whosay name=磯野 color="dimgray"]

「四条様は、お花がお好きなようですから、[r]
[sp]お手紙のやりとりについては、『季節の話題』を送ってみては如何でしょうか？」[p]
[whosay name=磯野 color="dimgray"]

「また、お話があうように『華道のお稽古』も、ほどほどに重ねておくとよいでしょう[r]
[sp]お稽古だけではお嬢様も滅入ってしまうと思います。　気分転換に『散策』もお勧めします[r]
『秋』の色合いを眺められますと『華道』のお稽古の手助けにもなるかもしれませんね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「わかったわ。　ありがとう磯野。　[r]
[sp]磯野のおかげで、お返事を書く勇気が沸いてきたみたい」[p]
[whosay name=磯野 color="dimgray"]
「私もお嬢様の笑顔が励みでございます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（『季節の話題』、『華道のお稽古』、『秋の散策』ね)[p]
@jump target=* end_Q

*no
#
私は、自分の力で解決することにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫。 ありがとう磯野。　私、もう少し頑張ってみるわ」[p]
[whosay name=磯野 color="dimgray"]
「また気になるようなことがありましたらお申し付けください」[p]
@jump target=*end_Q

*okeiko
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[er]
#
それよりお稽古のことが気になった。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、それよりお稽古のことが知りたいわ[r][sp]最近、張り合いがなくて……」[p]

[whosay name=磯野 color="dimgray"]
「お稽古をしますと淑女としての品格が身についていきます。 もしかしたら何処かでお嬢様の頑張りを見てくださる方がいるかもしれません[r]
[sp]陰ながら磯野も応援させていただきます」[p]
[whosay name=磯野 color="dimgray"]

「お手紙のお相手になられた方については、よろしいですか？」[p]
;よろしゅうございましたか？
@jump target=select
;選択肢に戻る

*end_Q

イベント終了