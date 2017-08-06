﻿﻿﻿[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
	[skipstart]
[endif]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=0]
;[wait time=10]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[setreplay name="opening2"]
*opening2
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene1==undefined"]
;	[skipstop]
[endif]
*scene1
[stopbgm]

;[call target=*start storage="01_sijyou_hensuu.ks"]
[call target=*start storage="hensuu.ks"]

;=============================================
;オープニング2
;=============================================

[cm]
[if exp="f.skip_sentaku == 1"]
;「オープニングから」の挙動
[freeimage layer=1] 
[endif]

;背景変更:主人公邸_庭
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】秋の夜長（オープニング等まったりシーンに）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="mattari_akinoyonaga.ogg" loop=true]
[eval exp="f.bgm_storage='mattari_akinoyonaga.ogg'"]
[endif]
;準備中の表示消去　メッセージに被る前に
[iscript]
$('.loding_pic1').remove();
[endscript]


;メッセージ窓の表示
[eval exp="f.message_storage='message_bg/frame_red.png'"]
[イベントシーン構築ボタン無し版]
[current layer="message0"]
[resetfont]

;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]


;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false]

[image name="junbi_girl" layer=29 storage="girl/S/girl_all_yubi_me_fusi_mayu_yowa_ase.png" left=1 top=381 time=300 visible=true]
;主人公画像表示【マクロで切り替え】
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=20]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=240]
[iscript]
$('.junbi_girl').remove();
[endscript]


[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]

[if exp="tf.test_gamen==true"]
テストページから開始しています。選択肢までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=lightblue size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[s]

*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]

[cm]
@jump target=*fumi_sentaku01
[s]

*jump_no
@layopt layer=message1 visible=false
[current layer="message0"]
[resetfont]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はぁ」
[autosave]
[p]
[stopbgm]
;【BGM】秋の夜長（オープニング等まったりシーンに）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="mattari_akinoyonaga.ogg" loop=true]

[stopse]
;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false]

[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=20]
#
時計の音だけが響き渡っていた広い部屋に私のため息が重なった。[p]

[主人公伏目パチ1回]
[wait time=10]

障子の外に向けていた視線を目の前に戻すと、目に入るのは[r]
黒い表紙の大きな冊子と「見合い届け在中」の文字。[p]

[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[主人公ふぅ閉]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」[p]

[主人公閉伏目パチ1回]
[wait time=10]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
#
もう一度大きなため息を吐くと同時に、廊下の軋む音が耳に入った。[r]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
今この家で、私の部屋まで訪ねてくる人は一人しかいない。
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene2==undefined"]
;	[skipstop]
[endif]
*scene2
[fadeoutbgm time=3000]
[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、入っていいわよ」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

[stopbgm]

;【BGM】みやび（磯野テーマ）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="isono_miyabi.ogg" loop=true]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene3==undefined"]
;	[skipstop]
[endif]
*scene3
[whosay name=磯野 color="dimgray"]
「失礼します」
[autosave]
[p]
#
予想通りこの家の家令である磯野が[r]
にこやかな笑みを浮かべて入ってくる。[p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]
コトリ、と私の前に温かな湯気のたつお茶が置かれた。[r]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

しかし鼻先をくすぐる芳醇な香りも、今の憂鬱な気持ちを[r]
持ち上げるには少し足りない。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、いい加減そちらに目を通されましたか？」
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[autosave]
[p]
;【SE】茶器に触れる（カチャ）
[playse storage=tya_katya.ogg loop=false ]


[chara_mod name="girl_te" storage="girl/S/katate.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[p]
#
思わずお茶を持ちあげた手を止め視線を逸らす。[r]

[主人公横伏目パチ1回]
[wait time=10]
私の目の前にあるこれは、三十分ほど前にここに置かれたまま、一度もその位置を変えていなかった。[p]
[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene4==undefined"]
;	[skipstop]
[endif]
*scene4
[whosay name=磯野 color="dimgray"]
「どうなさいました？　先日まであんなに楽しみにしておられたのに」
[autosave]
[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごめんなさい……本当にお手紙が届いたと思ったら[r]
[sp]緊張してしまって」
[p]

（それに……）[p]

[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[主人公閉伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene5==undefined"]
;	[skipstop]
[endif]
*scene5
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
#
磯野の視線に押し負けるように実際に手に取ってみると、[r]
ずっしりとした重みが両手にかかる。
[autosave]
[p]


[stopbgm ]
;【BGM】秋の夜長（オープニング等まったりシーンに）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="mattari_akinoyonaga.ogg" loop=true]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]


[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene5b==undefined"]
;	[skipstop]
[endif]
*scene5b
[whosay name=&sf.girl_namae color="#cf5a7f"]
（まさか三通も同時に届くなんて、思ってもみなかったわ）[p]
[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[主人公閉伏目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「旦那様は交友関係が広い方でいらっしゃいますからね。[r]
[sp]それでも大変悩んで決められたんだと思いますよ」
[autosave]
[p]
#
私の心の声が聞こえたのか、苦笑と共に言葉が投げかけられる。[p]

[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「それは分かっています、けれど……」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「私ったらお兄様たちとぐらいしかまともに男の人とお話しした事が[r]
[sp]無いのに、いきなり三人の方と文通なんてできるのかしら」[p]

[主人公伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene6==undefined"]
;	[skipstop]
[endif]
*scene6
#
それに、父が選んだ人たちだ。[r]
きっと三人とも格式高い御家柄の方々だろう。[r]
何かあったら父に迷惑がかかるかもしれない。
[autosave]
[p]

;立ち絵表情変更
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
その事が何よりも心配だった。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様……」[p]

[主人公閉伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene7==undefined"]
;	[skipstop]
[endif]
*scene7
[whosay name=磯野 color="dimgray"]
「そんなに気負われなくてもいいんですよ、旦那様も[r]
[sp]縁談が上手くいかなかったからといって咎めたりはされません」
[autosave]
[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「むしろ……ここだけの話、やっとお嬢様と暮らし始めたのに[r]
[sp]周りが縁談の話ばかり持ってくると嘆かれていました」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「まぁ、お父様ったら」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
#
思わずクスリと笑みが浮かぶ。
[autosave]
[p]


[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene8==undefined"]
;	[skipstop]
[endif]
*scene8
;立ち絵表情変更
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「第一、お相手の事を知るための文通なのですから[r]
[sp]無理をしては何も伝わりません。[r]
[sp]それでは実際にお会いする時困ってしまいますよ」
[autosave]
[p]

[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうね……いつかはお会いするんですものね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene9==undefined"]
;	[skipstop]
[endif]
*scene9
#
緩みかけていた表情が、また引きつっていく。[r]
最近ではきちんとお稽古を受け、少しは自信も付いてきたけれど、[r]
私はまだまだ立派な淑女とは言い難い。
[autosave]
[p]

[主人公伏目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ee.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「やっぱり心配だわ……」[p]
[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene10==undefined"]
;	[skipstop]
[endif]
*scene10
[whosay name=磯野 color="dimgray"]
「ご安心ください、お会いする事になるまで[r]
[sp]まだまだ沢山の時間が残されています」
[autosave]
[p]
[主人公伏目パチ1回]
[wait time=10]


[whosay name=磯野 color="dimgray"]
「自信を持ってお会いできるよう、お稽古に励んでくださいませ。[r]
[sp]もちろんこの私も、誠心誠意ご協力させて頂きます」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野……本当に、いつもありがとう」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene11==undefined"]
;	[skipstop]
[endif]
*scene11
[whosay name=磯野 color="dimgray"]
「それに、知らない方の事を思って緊張されるなんて……」[p]
「お転婆でいらした昔からは想像もできないほど落ち着かれて[r]

[主人公困り]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ee.png" time=0]
[wait time=10]

[sp]磯野は感動しています」
[autosave]
[p]
[whosay name=磯野 color="dimgray"]
「昔のお嬢様はそれはもう好奇心旺盛で[r]
[sp]興味を持たれると一直線に走り回られて……」[p]
[主人公ポーズ両手]
[wait time=20]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]
;【SE】茶器（カチャ）
[playse storage=tya_katya.ogg loop=false ]
[wait time=70]
[主人公驚]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「も、もう！　やめてください！[r][l]

[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[sp]貴方の話はいつも最後にそれなんだから！」[p]
[主人公ポーズ通常]
[wait time=10]
[主人公困り]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「ふふ、すみませんお嬢様」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]


[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene12==undefined"]
;	[skipstop]
[endif]
*scene12
#
でも確かに、何もせずに悩んでいるなんて[r]
私らしく無かったかもしれない……
[autosave]
[p]

（――[名前]にも、いつか届くかもしれないよ？[r]
[sp]将来[名前]の事を一番大切にしてくれて[r]
[sp][名前]も一番大切だと思える人からの手紙）
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公通常]
[wait time=10]

ふと、昔兄に聞かされた言葉を思い出す。[r]
あの時は、家族以上に大切に思える人なんて想像もつかなかった。
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene13==undefined"]
;	[skipstop]
[endif]
*scene13
[主人公ポーズ指]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（この中に、そんな風に思える人がいるのかしら？）
[autosave]
[p]

;[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene14==undefined"]
;	[skipstop]
;[endif]
*scene14
[主人公目パチ1回]
[wait time=10]
ドキリと、先ほどまでの憂鬱な気持ちが嘘のように胸が高鳴った。[r]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
私は期待に胸を膨らませて冊子の表紙を開いた。
[autosave]
[p]
#
@jump storage="opening3.ks"

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
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible=true
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[if exp="f.select_scene=='fumi_sentaku01'"]
#
どなたのお手紙を読みましょう？

[button target=*kuroda_fumi1 graphic="moji_kuroda.png" x=200 y=50]
[button target=*zaizen_fumi1 graphic="moji_zaizen.png" x=600 y=50]
[button target=*kaori_fumi1 graphic="moji_kaori.png" x=200 y=150]
[button target=*katuraginomiya_fumi1 graphic="moji_katuraginomiya.png" x=600 y=150]
[button target=*hujieda_fumi1 graphic="moji_hujieda.png" x=200 y=250]
[button target=*fumi_dokuryou01 graphic="moji_shuuryou.png" x=600 y=250]

[endif]

[if exp="f.select_scene=='isono_situmon01'"]
#
どなたか詳しく知りたい方はいらっしゃいますか？

[button target=*kuroda_isono1 graphic="moji_kuroda.png" x=200 y=50]
[button target=*zaizen_isono1 graphic="moji_zaizen.png" x=600 y=50]
[button target=*kaori_isono1 graphic="moji_kaori.png" x=200 y=150]
[button target=*katuraginomiya_isono1 graphic="moji_katuraginomiya.png" x=600 y=150]
[button target=*hujieda_isono1 graphic="moji_hujieda.png" x=200 y=250]
[button target=*isono_situmon_owari01 graphic="moji_shuuryou.png" x=600 y=250]

[endif]
[freeimage layer = 27]
[wait time=10]


[return]


