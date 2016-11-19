[chara_mod name="bg" storage="toumei.gif" time=1000]
;////////////表示準備/////////
;選択肢背景＿表示遅れ防止
[preload storage="data/fgimage/bg/plane_sakura.jpg"]
;//////////////////////////////
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
#
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]

;調整中のため、文章を変更する可能性があります（スクリプト担
;=======================================================================================
;◆共通イベント『磯野に相談』
;イベント発生条件：5月1週に1度だけ発生（パラメーター条件は無くプレイヤー全員に発生。余裕があれば周回プレイ時はカット可の選択肢を付けて実装したい）
;=======================================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ……）
[主人公ふぅ閉]
[p]
;【SE】時計（控え目カチコチ）
[playse storage=tokei_hikaeme.ogg loop=false ]
#
[主人公目伏]
[主人公口通常]
白い便せんに目を落とす。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……お返事が決まらないわ）[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#
お手紙を交わして一か月。[r]
気になれば、気になるほど、これからどうして良いのかわからなく[r]
なってきてしまう。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（お手紙だけじゃないわ。　お会いしてからだってどうしたらいいか[r]
[sp]少し不安だわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
(ふぅ……)[p]
#
[主人公通常]
再び溜息をつくと、廊下から落ち着いた足音が聞こえた。[p]
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]
;[if exp="sf.BGM=='ON'"]
;【BGM】みやび（磯野登場シーン：若干コミカルな場面など目立たせたいときに
;[playbgm storage="isono_miyabi.ogg" loop=true]
;[eval exp="f.bgm_storage='isono_miyabi.ogg'"]
;[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
「ありがとう。入っていいわよ」[p]
;音楽はどちらかひとつでいいです
[whosay name=磯野 color="dimgray"]
「失礼します」[p]
#
[主人公目閉]
[主人公口ほほえみ]
#
フワリ。と新緑の芳醇な香りが漂い、心を和ませる。[p]
;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの時よりも書けるようになったと思っていたのに）[p]
#
[主人公ふぅ閉]
緑光を映すお茶を口にすると、もうひとつ溜息をついた。[p]
[whosay name=磯野 color="dimgray"]
「お嬢様？　どうかされましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
[主人公口通常]
[主人公ポーズ通常]
「いえ、少し」[p]
#
私は、磯野に相談しようかと目を合わせてみたが、[r]
お相手に対して、気持ちが芽生えてきた分に少し恥ずかしくなって[r]
しまった。[p]
[whosay name=磯野 color="dimgray"]
[主人公通常]
「お嬢様。よろしければ、この磯野に御相談くださりませ。[r]
[sp]旦那様からお手紙のやりとりについてお嬢様の手伝いになるよう[r]
[sp]いい付かっております」[p]
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
「お相手のことを考えられるのは良いことです。[r]
[sp]どなたについてお悩みでしょうか？」[p]

*select
[主人公横目]
[主人公ポーズ通常]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
#
どなたについて相談しようかしら？
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
[glink target=*sijyou text="四条 華織" fontcolor=gray size=23 width="200" x=200 y=100 color=white]
[glink target=*zaizen text="財前 美彬" fontcolor=gray size=23 width="200" x=200 y=150 color=white]
[glink target=*kuroda text="黒田 将貴" fontcolor=gray size=23 width="200" x=200 y=200 color=white]
[glink target=*no text="大丈夫" fontcolor=gray size=23 width="200" x=450 y=200 color=white]
[glink target=*okeiko text="それよりお稽古のことが気になった" fontcolor=gray size=22 width="400" x=200 y=250 color=white]
[s]

==============================================================================================================
*sijyou
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「華織お兄様のことを聞いていいかしら」[p]
[whosay name=磯野 color="dimgray"]
「はい [ruby text=し]四[ruby text=じょう]条[ruby text=かお]華[ruby text=り]織様　のことですね」[p]
[whosay name=磯野 color="dimgray"]
「四条華織様は、華道の名家の出自でもございます。[r]
[主人公目パチ1回]
[sp]お久しぶりにやりとりなさって四条様も、難しくお考えかもしれ[r]
[sp]ませんが、根気よく返事をお出しください」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（そうですね。　少し素っ気ない気がしますけれど、もう少し頑張って[r]
[sp]みようかしら？）[p]
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
「お稽古だけでは、お嬢様も滅入ってしまうと思います」[p]
;読みにくいので切って
「気分転換に『散策』もお勧めします。[r]
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

；==============================================================================================================
;wikiのシナリオ基準によって鍵括弧前の句点をとってあります
*zaizen
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様のことを聞いていいかしら？」[p]
[whosay name=磯野 color="dimgray"]
「[ruby text=ざい]財[ruby text=ぜん]前[ruby text=よし]美[ruby text=あきら]彬様のことですね 」[p]
[whosay name=磯野 color="dimgray"]
「財前美彬様は、やり手の銀行家でざいます。[r]
[sp] 財前様の銀行の投資は我が国でも、 一歩先を行っていると[r]
[sp]いわれ、お手本にする方もいらっしゃいます」[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（凄い方なのね……）[p]
[whosay name=磯野 color="dimgray"]
「ドイツ人とのハーフで、偏見など苦労されてます。 [r]
[sp]礼儀を重んじる方とか」[p]
;と聞き及んでおります　聞いております
[whosay name=磯野 color="dimgray"]
[主人公通常]
「『礼法のお稽古をほどほどに重ねておくとよいでしょう[r]
[sp]お稽古だけではお嬢様も滅入ってしまうと思います。　気分転換に[r]
[sp]『散策』もお勧めします」[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう磯野。　財前様の事を聞いて[r]
[sp]お手紙を書きたくなりました」[p]
[whosay name=磯野 color="dimgray"]
「私もお嬢様の笑顔が励みでございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（『季節の話題』、『礼法のお稽古』、『散策』ね)[p]
@jump target=*end_Q
；==============================================================================================================
*kuroda
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様のことを聞いていいかしら？」[p]
[whosay name=磯野 color="dimgray"]
「[ruby text=くろ]黒[ruby text=だ]田[ruby text=まさ]将[ruby text=たか]貴様のことですね」[p]
[whosay name=磯野 color="dimgray"]
「黒田様は地方に沢山の土地をもつ[r]
[sp]古くから続く伝統ある御家柄とお聞きしています」[p]
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
[sp]机上の学問だけではなく、野山など自然にも親しまれているそうです」[p]
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~変更してください~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[whosay name=磯野 color="dimgray"]
[主人公ポーズ通常]
「黒田様は、自然に関わるお話にお好きなようですから、[r]
[sp]お手紙のやりとりについては、『季節の話題』を送ってみては如何で[r]
[sp]しょうか？」[p]
[whosay name=磯野 color="dimgray"]
[主人公目パチ1回]
「また、人との繋がりを大切にされる方でいらっしゃるので[r]
[sp]おもてなしできるように『茶道のお稽古』も、ほどほどになされる[r]
[sp]と良いでしょう」[p]
[whosay name=磯野 color="dimgray"]
「お稽古だけでは、お嬢様も滅入ってしまうと思います」[p]
;読みにくいので切って
「気分転換に『散策』もお勧めします。[r]
[sp]『秋』の色合いを眺められますとお手紙の話題への切っ掛けにもなる[r]
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
（『季節の話題』、『茶道のお稽古』、『秋の散策』ね)[p]
@jump target=*end_Q
；==============================================================================================================
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
[主人公眉困り]
[sp]最近、張り合いがなくて……」[p]
[whosay name=磯野 color="dimgray"]
[主人公眉通常]
「お稽古をしますと淑女としての品格が身についていきます」[p]
「淑女の聞こえが高くなれば、いつか高貴な方にもお目にかかる[r]
[sp]こともあるかもしれません」[p]
「また、お稽古に打ち込めば、もしかしたら何処かでお嬢様の[r]
[sp]頑張りを見てくださる方がいらっしゃるかもしれませんね。[r]
[主人公眉下げ下]
[sp]陰ながら磯野も応援させていただきます」[p]
[whosay name=磯野 color="dimgray"]
[主人公通常]
「お手紙のお相手については、よろしいですか？」[p]
;よろしゅうございましたか？
@jump target=*select
;現在の現在の好感度の高い相手について相談するかの選択肢に戻ります

；==============================================================================================================
*no
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
[主人公通常]
;私は、磯野に相談せず、自分の力で解決することにした。[p]
;↑相談した後、シナリオに戻るために「大丈夫」を選んだ際にも自然な流れとなるようにコメントアウトさせていただきました(スクリプト担
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「大丈夫。 ありがとう磯野。私、もう少し頑張ってみるわ」[p]
[whosay name=磯野 color="dimgray"]
「また気になるようなことがありましたらお申し付けください」[p]
@jump target=*end_Q


；==============================================================================================================
*end_Q
#
;@jump storage="event.ks" target=*event_owari
[イベントシーン終了]
@jump storage="02_kyoutuu_test.ks"
[s]
；==============================================================================================================

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
