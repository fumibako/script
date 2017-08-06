﻿;=============================================
;磯野に相談： 5月、他のアドバイスイベントが発生しないなら1度だけ発生
;=============================================
*replay_common_5_1
;↓◆B4nFWraU42さん作イベント冒頭プリロード箇所を使用させていただきました。◆B4nFWraU42さん、ありがとうございます。
;=======================お芝居の準備中です==========================================
[stopbgm]
[eval exp="f.from_common_5_1 = 1"]
[freeimage layer = 1]
[wait time=10]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=10]

;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[wait time=10]
;主人公画像表示【マクロで切り替え】
[主人公ポーズ通常]
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
[wait time=50]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
;◆周回時はイベントを見るかどうか選択
;周回かどうかチェック。初プレイ時は選択肢を回避
;黒田チェック
[if exp="sf.ED_kuroda_bad == 1 || sf.ED_kuroda_normal == 1 || sf.ED_kuroda_good == 1"]
@jump target=*event_select
[endif]
;四条チェック
[if exp="sf.ED_sijyou_bad == 1 || sf.ED_sijyou_normal == 1 || sf.ED_sijyou_good == 1"]
@jump target=*event_select
[endif]
;財前チェック
[if exp="sf.ED_zaizen_bad1 == 1 || sf.ED_zaizen_bad2 == 1 || sf.ED_zaizen_normal == 1 || sf.ED_zaizen_good == 1"]
@jump target=*event_select
[endif]
;葛城宮チェック
[if exp="sf.ED_katuraginomiya_good == 1 || sf.ED_katuraginomiya_normal == 1 || sf.ED_katuraginomiya_bad == 1"]
@jump target=*event_select
[endif]
;藤枝チェック
[if exp="sf.ED_hujieda_good == 1 || sf.ED_hujieda_normal == 1 || sf.ED_hujieda_bad == 1"]
@jump target=*event_select
[endif]
;↓初プレイ時は選択肢をjumpカット
@jump target=*event_select_end

*event_select
;背景変更:和紙風 桜色
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
五月『磯野に相談』：既読イベントです。[r]
選択肢まで移動、又はイベントを終了しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=300 top=70 left=300 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=30]

[link target=*jump_ok1]選択肢まで移動する[endlink][r]
[r][r]
[link target=*jump_to_end1]イベントを終了する[endlink][r]
[r][r]
[link target=*jump_no1]最初からイベントを見る[endlink][r]
[resetfont]
[s]
*jump_ok1
[er]

[current layer="message0"]
[resetfont]
[er]
「選択肢まで移動する」[r]
移動します。[p]
[cm]
@jump target=*seen_select0
[s]

*jump_to_end1
[er]

[current layer="message0"]
[resetfont]
[er]
「イベントを終了する」[r]
終了します。[p]
[cm]
@jump target=*end_Q
[s]

*jump_no1
[er]
[current layer="message0"]
[resetfont]
「最初からイベントを見る」[r]
最初の場面に移動します。[p]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[cm]

*event_select_end
;=====================ここからお芝居の幕引きです===============================
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ……）[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【SE】時計（控え目カチコチ）
[playse storage=tokei_hikaeme.ogg loop=false ]
[主人公目閉じ]
#
白い便せんに目を落とす。[p]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……お返事が決まらないわ）[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
#
お手紙を交わして約一ヶ月。[r]
気になればなるほど、これからどうして良いのかわからなくなってきてしまう。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お手紙だけじゃないわ。 お会いしてからだって、どうしたらいいか少し[r]
[sp]不安だわ）[p]
[主人公ポーズ通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。選択肢まで移動しますか？[r]
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
@jump target=*seen_select0
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


#
再び溜息をつくと、廊下から落ち着いた足音が聞こえてきた。[p]
[主人公伏目パチ1回]
[主人公通常]
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。入っていいわよ」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「失礼します」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
#
フワリ。と新緑の芳醇な香りが漂い、心を和ませる。[p]
;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目閉じ]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの時よりも、書けるようになったと思っていたのに）[p]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]

#
緑光を映すお茶を口にすると、もうひとつ溜息をついた。[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「お嬢様？　どうかされましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、少し」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
#
私は、磯野に相談しようかと目を合わせてみたが、[r]
お相手に対して、気持ちが芽生えてきただけに、少し恥ずかしく[r]
なってしまった。[p]
[主人公ポーズ通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「お嬢様。よろしければ、この磯野に御相談くださりませ。[r]
[sp]旦那様からお手紙のやりとりについて、お嬢様のお手伝いをするよう[r]
[sp]言い付かっております」[p]
[主人公目パチ1回]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「わかりましたわ……」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今後、お会いする方に失礼がないようにするには、どのように振舞えば[r]
[sp]いいのでしょう？ ……そう考えてしまうと余計に筆が進まなくて」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

*seen_select0
[whosay name=磯野 color="dimgray"]
「お相手のことをお考えいただくのは、良いことでございます。[r]
[sp]どなたについてお悩みでしょうか？」[p]

*select
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]


#
どなたについて相談しようかしら？
;【分岐】op2と同じ順番
[glink storage="kuroda_5_1.ks" target=*seen1 text="黒田 将貴" fontcolor=gray size=23 width="200" x=200 y=50 color=white]
[glink storage="zaizen/zaizen_5_1.ks" target=*seen1 text="財前 美彬" fontcolor=gray size=23 width="200" x=200 y=150 color=white]
[glink storage="sijyou/sijyou_5_1.ks" target=*seen1 text="四条 華織" fontcolor=gray size=23 width="200" x=200 y=250 color=white]

[glink target=*buncyou text="文調や便せんについて" fontcolor=gray size=23 width="250" x=500 y=50 color=white]
[glink target=*okeiko text="それよりお稽古のことが<br/>気になった" fontcolor=gray size=20 width="250" x=500 y=150 color=white]
[glink target=*no text="大丈夫" fontcolor=gray size=23 width="200" x=500 y=250 color=white]
[s]

*okeiko
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[主人公目パチ1回]
[主人公通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「いえ、それよりお稽古のことが知りたいわ。[r] 
[sp]最近、張り合いがなくて……」[p] 
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"] 
「お稽古をすることで、淑女としての品格が身についていきます」[p]
「淑女の聞こえが高くなれば、いつか高貴な方にもお目にかかることも[r]
[sp]あるかもしれません」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公目パチ1回]
「また、お稽古に打ち込めば、もしかしたら何処かでお嬢様の頑張りを[r]
[sp]見てくださる方が、いらっしゃるかもしれませんね」[p]
[主人公ほほえみ]
「陰ながら磯野も応援させていただきます」[p] 

[whosay name=磯野 color="dimgray"] 
「お手紙のお相手については、よろしゅうございますか？」[p] 
;よろしゅうございましたか？ 
@jump target=*select
;お相手について相談するかの選択肢に戻ります
;---------------------------------------------------------------
*buncyou
;選択肢の背景からの復帰
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目を開く]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「お手紙の文章を簡潔に書くか、丁寧に書くかなどは[r]
[sp]どう選べばよいのでしょう？」[p]

[whosay name=磯野 color="dimgray"] 
「そうでございますね……最初は、簡潔な文章の御方は簡潔に、[r]
[sp]丁寧な文章の御方には丁寧に、そして徐々に親しくなれば、[r]
[sp]親しみを込めて気軽に書くと喜ばれるでしょう」[p] 

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「最初は、相手に合わせて、[r]
[sp]親しくなれば気軽に……相手の御心も変化するのですね」[p]

[whosay name=磯野 color="dimgray"]
「はい。お相手の御心に思いを巡らせることは大切でございます」[p]

「例えばの話ですが、高貴な立ち場のお方は、気軽に話せる相手を[r]
[sp]求めていらっしゃることがあるともお聞きいたします」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「高貴なお方には、丁寧に書いてしまいそうですが、[r]
[sp]逆に気軽さを求められることもあるのですね」[p]

[whosay name=磯野 color="dimgray"] 
「また御相手の身近にあるお稽古に励むと、[r]
[sp]良い事があるかもしれませんね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
（確かに、お相手の身近なお稽古に励むと話題もあうでしょう）[p]

;[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
「その場合便箋の選び方はどうしましょうか？」[p]

[whosay name=磯野 color="dimgray"]
「人によって好みも違います。[r]
[sp]暖かみがあり、力強い便箋を好まれる方も、[r]
[sp]繊細で風情の趣のある便箋を好まれる方もおられるでしょう」[p]

;[whosay name=磯野 color="dimgray"]
「お手紙の内容から察してみてはいかがでございましょうか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「そうですね」[p]

[whosay name=磯野 color="dimgray"] 
「お手紙のお相手については、よろしゅうございますか？」[p] 
;よろしゅうございましたか？ 
@jump target=*select
;お相手について相談するかの選択肢に戻ります
;----------------------------------------------

*no
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[主人公目パチ1回]
[主人公通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫。 ありがとう、磯野」[p]
[fadeoutbgm time=3000]
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「私、もう少し頑張ってみるわ」[p]
[主人公通常]
[whosay name=磯野 color="dimgray"]
「また気になるようなことがございましたら、お申し付けください。[r]
[sp]こちらからも、お伝えいたします」[p]
[stopbgm]
@jump target=*end_Q

*end_Q
;イベント終了

;[freeimage layer=29 time=1000]
[イベントシーン終了]
;=================================================================================================
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
@jump storage="01_jsYiJcqRkk_test.ks" target=﻿*test
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
