条件:華織の迷いのイベントを一つでも見ている　【全力】の手紙をよんだ後日 夜
;主人公庭夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;華織様のことを思う主人公。
棚引く雲の中から、満ちたりた月の輝きが現れる[r]
今日ほど、春の夜を一番美しいと感じた日はないかもしれない。[p]
;季節は変えておけばいいです
私は筆をとる[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さま……手紙、読ませていただきました。[r]
[sp]華織様から頂いた手紙からは、霧が晴れたような明るい気持ちが伝わってきました。）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は、華道競合会にて大賞受賞されて、どのようにご活躍していらっしゃるのでしょうか？）
[p]
#
私は手紙をもう一度、開いた。[p]
;～～～～～～選択肢～～～～～
[link target=*see_fumi]よく見る[endlink]
[link target=*not_fumi]さらりと眺めた。(スキップ)[endlink]
[s]
;～～～～～～選択肢～～～～～

*see_fumi
[手紙四条 fumi_number=]
[名前]へ[r]
[r]
メジロが庭の桜の蜜をあつめており、心穏やかにさせてくれます。[r]
[名前]さんは、お変わりなくお元気でしょうか？[r]
[r]
さて、この度、四条華織は、[名前]のお約束とおり、[r]
祖母の開いた華道競合会にて大賞受賞を果たしました。[r]
場所が場所だけに七光りと思われがちですが、[r]
祖父にも、来ていただいた方にも心にくる華だと褒めていただき[r]
ました。[p]
もう、何も迷うこともない。[r]
だから今、全力で自分を使って色々な場所で活躍していきます。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
*not_fumi
;共通
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ……お兄様から、華織様は家業上、冬から春にかけて、お忙しいとお聞きしていますが……）[p]
;春はどうだろう。冬は忙しいはず。クリスマスと正月だけで花屋は忙しい
[whosay name=&sf.girl_namae color="#cf5a7f"]
(やっぱり、こういう時はお傍について、喜びを共にしたいです）[p]
;主人公横目　ポーズ指
[whosay name=&sf.girl_namae color="#cf5a7f"]
（磯野に頼んで行ってみようかしら？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ですが、殿方のお仕事が忙しい時に会いに行っても迷惑ではないでしょうか？）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いえ、そもそも……）[p]
;うんうん
#
あの寂しい夜とはうってかわって私は、幸せな悩みを抱えて眠ってしまった。[p]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;ちゅんちゅんSE
[if exp="f.para_shujinkou_shukujodo >= 200"]
;～～～～～～～淑女度高い～～～～～
;すぐに起きて返事をする
[whosay name="磯野" color="dimgray"]
「お嬢様？」[p]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……磯野の声だわ……私、こんな場所で寝てしまったのね）
[whosay name="磯野" color="dimgray"]
「お嬢様、今はお休みでしたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、起きています。　入って頂戴」[p]
私は素早く身だしなみを整えると、いつも通りに整然と筆をとった姿勢で磯野を迎えいれた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、丁度、あなたにお願いしたいことが……」[p]
;共通２にジャンプ
[else]
;磯野が四条の手紙をもってきて、返事がなく、
;～～～～～～～～淑女度ひくい～～～～～～～～
;心配して部屋をみるとそこには机に突っ伏して寝てしまった主人公がいた
[whosay name="？？？" color="dimgray"]
「お…様？」[p]
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name="磯野" color="dimgray"]
「お嬢様！ 大丈夫えすか？！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「うーん……あら、磯野……？][p]
[whosay name="磯野" color="dimgray"]
「お嬢様、心配して部屋をみてみたら机の上で寝てしまったのですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ちょっと、眠ってただけですわ。[r]
[sp]そ、それより丁度、あなたにお願いしたいことが……」[p]
[endif]

;共通２
*common2
;言うまでもなく磯野は手紙をもってきていた
;四条の手紙には華道展の切符が。　
;自身は早朝から会場の設営で身動きできず、迎えにいけませんが……[名前]さんが、よろしければ、御家族もご一緒に是非見に来てください　
;～後日～　という流れで主人公達は出かける。文也もくる？


;¥¥¥¥¥¥¥¥イベント5おわり¥¥¥¥¥¥¥¥
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
