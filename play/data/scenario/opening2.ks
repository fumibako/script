[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
	[skipstart]
[endif]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[setreplay name="opening2"]
*opening2
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene1==undefined"]
;	[skipstop]
[endif]
*scene1
[stopbgm]

;[call target=*start storage="01_sijyou_hensuu.ks"]
[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;オープニング2
;=============================================

[cm]
;背景変更:主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】秋の夜長（オープニング等まったりシーンに）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="mattari_akinoyonaga.ogg" loop=true]
[eval exp="f.bgm_storage='mattari_akinoyonaga.ogg'"]
[endif]

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
[wait time=10]
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
[wait time=200]
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

;[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene15==undefined"]
;	[skipstop]
;[endif]
*scene15
*fumi_sentaku01
[eval exp="f.select_scene='fumi_sentaku01'"]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

[chara_mod name="message_bg" storage=&f.message_storage]
[eval exp="f.haikei_credit=''"]
[wait time=10]
;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;[機能ボタン表示]
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]

;背景変更:和紙風
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]

[button target=*kuroda_fumi1 graphic="moji_kuroda.png" x=200 y=50]
[button target=*zaizen_fumi1 graphic="moji_zaizen.png" x=600 y=50]
[button target=*kaori_fumi1 graphic="moji_sijyou.png" x=200 y=150]
;[button target=*katuraginomiya_fumi1 graphic="moji_katuraginomiya.png" x=600 y=150]
;[button target=*hujieda_fumi1 graphic="moji_hujieda.png" x=200 y=250]
[button target=*fumi_dokuryou01 graphic="moji_shuuryou.png" x=600 y=150]
#
どなたのお手紙を読みましょう？
[autosave]
[s]
[s]

[cm]
@jump target=*fumi_sentaku01
[s]


*kuroda_fumi1
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
;[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kuroda_fumi1b==undefined"]
;	[skipstop]
;[endif]
*kuroda_fumi1b
;背景変更:手紙
[eval exp="f.select_scene=''"]

[font color=white size=0][r]【 『黒田 将貴』を選択 】[r][resetfont]
[cm]
[chara_mod name="bg" storage="bg/bg_tegami_kuroda.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
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
[名字] [名前]様[r]
[r]
初めてお手紙を差し上げます。黒田 将貴と申します。[r]
私は植物の研究をしている大学生です。[r]
[r]
[sp]御尊父様には私の幼少時より学業の励ましをいただき、お話をするたびに御見識の広さや深さに感銘を受けておりました。[r]
[名前]様のお話もお聞きしておりましたので、お手紙をお送りする機会をいただき、嬉しく感じております。
[autosave]
[p]
[r]
[sp][名前]様はお花や生き物はお好きでしょうか。[r]
もしお好きでしたら嬉しいです。[r]
[r]
[sp]生き物の事や調査で見つけた興味深い事などをお手紙に書いてみたいと思います。[r]
お返事をいただけると嬉しいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　黒田　将貴[p]
[iscript]
f.kuroda_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*zaizen_fumi1
[eval exp="f.select_scene=''"]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_zaizen_fumi1b==undefined"]
;	[skipstop]
[endif]
*zaizen_fumi1b
[font color=white size=0][r]【 『財前 美彬』を選択 】[r][resetfont]
[cm]
;背景変更:手紙
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_tegami_zaizen.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
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
[名字] [名前]様[r]
[r]
謹啓　春暖の候、皆様ますますご清栄のこととお喜び申し上げます。[r]
このたび、古式日本の伝統に則り婚約の申し出を行うべく、手紙と釣書を送らせて頂きました。
[autosave]
[p]
[r]
[sp]これからしばらくの間、私の事を知って頂けるよう努力いたしますのでよろしくお願いします。[r]
では、お体にお気をつけてお過ごしください。返事をお待ちしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
[iscript]
f.zaizen_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*kaori_fumi1
[eval exp="f.select_scene=''"]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kaori_fumi1b==undefined"]
;	[skipstop]
[endif]
*kaori_fumi1b
[font color=white size=0][r]【 『四条 華織』を選択 】[r][resetfont]
[cm]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_tegami_sijyou.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
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
[名字] [名前]様[r]
[r]
拝啓　最近では桜も咲き始め、暖かくなってきました。ご家族一同元気にお過ごしですか？[r]
久しぶり、僕の事覚えてるかな？[r]
小さい頃、よく一緒に遊んだ華織です。[r]
[r]
[sp]今更文通なんて、なんだか不思議な気持ちだね。昔からお父様が、僕のお嫁さんには[名前]ちゃんを、なんて言っていたけど、本当に実行するなんて驚いたでしょう？　まぁもちろん、僕も君なら大歓迎だけど……なんてね。
[autosave]
[p]
[r]
[sp]ああ、けれど君になら、他にもたくさんの人からお手紙がきてる[r]
だろうね。[r]
知り合いだからって気を遣わないで、君の気持ちが一番大切なん[r]
だから。[r]
何かあったら昔みたいに相談に乗るよ。[r]
[r]
[sp]それじゃあ体に気をつけて、また会える日を楽しみにしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　四条　華織[p]
[iscript]
f.kaori_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*fumi_dokuryou01
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
	[skipstart]
[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene16==undefined"]
;	[skipstop]
[endif]
*scene16
[eval exp="f.select_scene=''"]
[cm]
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[背景_庭]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[主人公ふぅ閉]
[wait time=10]
[主人公汗]
[wait time=10]

[if exp="tf.test_gamen==true"]
テストページから開始しています。次の選択肢までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=lightblue size=32]

[link target=*jump_ok2]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no2]い　い　え[endlink][r]
[resetfont]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[s]

*jump_ok2
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*isono_situmon01
[s]

*jump_no2
[current layer="message0"]
「いいえ」[r]
そのまま続けます。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「お疲れ様です」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公効果消]
[wait time=10]
#
私が読み終えるのと同時に、新しくお茶が注がれる。
[autosave]
[p]
[主人公眉下げ]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene17==undefined"]
;	[skipstop]
[endif]
*scene17
[whosay name=磯野 color="dimgray"]
「何か気になる事はございましたか？」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「お相手の事は多少旦那様にお聞きしていますので、何かありましたら[r]
[sp]お尋ねください」
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene18==undefined"]
;	[skipstop]
[endif]
*scene18
*isono_situmon01
[eval exp="f.select_scene='isono_situmon01'"]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

;背景変更:和紙風
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]

#
どなたか詳しく知りたい方はいらっしゃいますか？

[button target=*kuroda_isono1 graphic="moji_kuroda.png" x=200 y=50]
[button target=*zaizen_isono1 graphic="moji_zaizen.png" x=600 y=50]
[button target=*kaori_isono1 graphic="moji_sijyou.png" x=200 y=150]
;[button target=*katuraginomiya_isono1 graphic="moji_katuraginomiya.png" x=600 y=150]
;[button target=*hujieda_isono1 graphic="moji_hujieda.png" x=200 y=250]
[button target=*isono_situmon_owari01 graphic="moji_shuuryou.png" x=600 y=150]
[autosave]
[s]

[cm]
@jump target=*isono_situmon01
[s]

*kuroda_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kuroda_isono1b==undefined"]
;	[skipstop]
[endif]
*kuroda_isono1b
[whosay name=磯野 color="dimgray"]
「黒田様は地方に沢山の土地をもつ[r]
[sp]古くから続く伝統ある御家柄とお聞きしています」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「黒田様のお父様は亡くなられて数年になりますが[r]
[sp]旦那様と古くからのお知り合いでいらしたそうです」[p]
[主人公眉下げ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様ご本人はどんな方なのかしら？」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「黒田様は幼い頃から学業に才能を示され[r]
[sp]大学でも優秀な成績を修めておられるそうですよ。[r]
[sp]次の春にはご卒業予定とお聞きしております」[p]
[whosay name=磯野 color="dimgray"]
「旦那様がおっしゃるには、努力家で優しいお人柄だそうです。[r]
[主人公目パチ1回]
[wait time=10]
[sp]机上の学問だけではなく、野山など自然にも親しまれている[r]
[sp]そうです」[p]
[whosay name=磯野 color="dimgray"]
「他の方で何か気になる事はありますか？」[p]
@jump target=*isono_situmon01
[s]

*zaizen_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_zaizen_isono1b==undefined"]
;	[skipstop]
[endif]
*zaizen_isono1b
[whosay name=磯野 color="dimgray"]
「財前様のお父様は一代にして数多の事業を成功され、[r]
[sp]新華族に叙せられた実業家でございます」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口開]
[wait time=10]
[主人公眉下げ]
[wait time=10]
「華族として日が浅いながらも、財政界に強い発言力を[r]
[sp]持たれています」[p]
[whosay name=磯野 color="dimgray"]
「旦那様とは叙爵される以前からのご友人だという事ですから、[r]
[sp]そのご縁でしょう」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様はどんな方なのかしら？」
[autosave]
[p]
[whosay name=磯野 color="dimgray"]
「旦那様がおっしゃるには、実力のある真面目な方だそうですよ。[r]
[sp]銀行の頭取として、素晴らしい成果を上げていらっしゃるそうです」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……凄い方なんですね」[p]

[whosay name=磯野 color="dimgray"]
「はい。お母様は[ruby text="ド"]独[ruby text="イツ"]逸出身の方なので苦労されたとお聞きしましたが、[r]
[sp]今では社交界でも指折りの人気をほこる方です」[p]

[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ！」[p]

[主人公通常]
[wait time=10]
「そうなのですね。ありがとう」[p]

[whosay name=磯野 color="dimgray"]
「他の方で何か気になる事はありますか？」[p]
@jump target=*isono_situmon01
[s]

*kaori_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kaori_isono1b==undefined"]
;	[skipstop]
[endif]
*kaori_isono1b
[主人公ポーズ指]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「四条華織様って……」
[autosave]
[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公眉下げ]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「ああ、華織様ですか、懐かしいですねぇ。[r]
[sp]文矢様と同じお年なので、２２になられましたか」[p]
[主人公口開]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「やっぱり華織お兄様……何故私に？」[p]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「四条様は昔から華織様とお嬢様のご結婚を望まれていましたから[r]
[sp]不思議な事ではないと思いますが」
[autosave]
[p]

[主人公口開]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まぁ……ご冗談だと思ってました」[p]
[主人公口通常]
[wait time=10]
#
なんといっても６つも年が離れているのだ。[r]
もう結婚されたのだとばかり思っていた。[p]
[主人公眉通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

最後に会ったのはいつだったか、当時は本当の兄のように慕っていたのを覚えている。ぼんやりと過去の記憶を思い起こした。
[autosave]
[p]
[主人公眉困り]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織お兄様と結婚の話なんて、なんだか変な感じがするわね）[p]
[主人公眉下げ]
[wait time=10]
[主人公効果消]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「といっても、四条様も破談になったからといって[r]
[sp]何か仰るような方ではないので、ご安心ください」[p]
[主人公眉通常]
[wait time=10]
[主人公目にこ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、それはよく分かってます」[p]
[whosay name=磯野 color="dimgray"]
「ふふ、そうですね。[r]
[sp]他に何かございますか？」[p]
@jump target=*isono_situmon01
[s]

*katuraginomiya_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_katuraginomiya_isono1b==undefined"]
;	[skipstop]
[endif]
*katuraginomiya_isono1b
#
（仮）[r]
まだ未定です。[p]
@jump target=*isono_situmon01
[s]

*hujieda_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_hujieda_isono1b==undefined"]
;	[skipstop]
[endif]
*hujieda_isono1b
#
（仮）
まだ未定です。[p]
@jump target=*isono_situmon01
[s]

*isono_situmon_owari01
[eval exp="f.select_scene=''"]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene19==undefined"]
;	[skipstop]
[endif]
*scene19
[cm]
[背景_庭]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[if exp="tf.test_gamen==true"]
テストページから開始しています。イベント終わりまでjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=lightblue size=32]

[link target=*jump_ok3]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no3]い　い　え[endlink][r]
[resetfont]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[s]

*jump_ok3
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_owari
[s]

*jump_no3
[current layer="message0"]
「いいえ」[r]
そのまま続けます。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「もういいわ、色々ありがとう磯野」
[autosave]
[p]

[whosay name=磯野 color="dimgray"]
「いえ、お役に立てたなら何よりです」[p]

[主人公口通常]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「返事のお手紙は……そうですね、遅くても来月中にはお書きに[r]
[sp]なったほうがよろしいかと」
[autosave]
[p]
[主人公ポーズ指]
[wait time=10]
[主人公横目]
[wait time=30]
[主人公横目パチ1回]
[wait time=10]
「もちろん早いほどお相手も喜ばれると思いますが[r]
[sp]なかなか言葉が浮かばない事もあるでしょう」[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目通常]
[wait time=30]
[主人公眉困り]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「分かりました」[p]
[主人公目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene20==undefined"]
;	[skipstop]
[endif]
*scene20
[whosay name=磯野 color="dimgray"]
「ふふ、来月からはお嬢様が自信を持ってお相手に会えるよう[r]
[sp]お稽古も今まで以上に厳しくするよう先生方にお伝えしておきますね」
[autosave]
[p]
[主人公目にこ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ふふ、お願いします」[p]
[主人公閉目パチ1回]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「それでは、そろそろ失礼させて頂きます。[r]
[sp]また何かございましたら、いつものようにお呼びください」[p]
[主人公眉通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、ありがとう」[p]
[主人公口通常]
[wait time=10]
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[wait time=30]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
[主人公ポーズ指]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene21==undefined"]
;	[skipstop]
[endif]
*scene21
#
磯野がいなくなるのを見届けて、もう一度じっくりと送られた手紙を見直す。
[autosave]
[p]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（――黒田様、財前様、華織お兄様）[p]
[主人公眉困り]
[wait time=10]
[主人公目通常]
[wait time=30]
[主人公横目パチ1回]
[wait time=20]
（どんな方達なのかしら、[r]
[sp]華織お兄様もきっとお変りになってるだろうな）[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目通常]
[wait time=10]
[主人公眉強気]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……早速お返事を考えないと）[p]
[主人公目パチ1回]
[wait time=10]
#
私は急いで机に向かいペンを手に取った。[p]
[主人公ポーズ指]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[主人公ポーズ片手]
[wait time=10]
[主人公眉困り]
[wait time=10]
[主人公汗]
[wait time=10]
[主人公横伏目パチ1回]
[wait time=10]
（何も思いつかない）[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[主人公口大]
[wait time=10]
#
焦る気持ちを抑えるため、大きく深呼吸をする。[p]
[主人公ポーズ指]
[wait time=10]
[主人公効果消]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公口通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene21b==undefined"]
;	[skipstop]
[endif]
*scene21b
;【BGM】フェードアウト
[fadeoutbgm time=2000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだ、とりあえずお兄様にこの事をお伝えしよう。[r]
[sp]何かアドバイスをもらえるかもしれない）
[autosave]
[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
（時間は沢山あるのだから……ゆっくり、考えよう）
[autosave]
[p]

*seen_owari
#

[stopbgm]
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
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;オープニング　終

;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

;背景非表示
[chara_mod name="bg" storage="toumei.gif" time=100]
[endreplay]


[if exp="tf.test_gamen == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;------タイトルへ戻る
;@jump storage="title.ks"

[stopbgm]
;------シナリオの最初にジャンプする
@jump storage="okeiko.ks"
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


