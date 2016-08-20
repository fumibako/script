;◎四条のことを知るイベントがない
;平均的に何でもこなすが特出したものがない。というイベントがない。
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]


;水換えを行っている
花屋の前でふと立ち止まり、華織さまのことを思い返した。[p]
[whosay name="三宮　時子" color="#c25232"]
ごきげんよう 名前さん。
[whosay name=&sf.girl_namae color="#cf5a7f"]
ごきげんよう 時子さん。お久しぶりですね
[whosay name="三宮　時子" color="#c25232"]
[名前]さん何か良いことでもありましたの？
[whosay name=&sf.girl_namae color="#cf5a7f"]
私、そんな風に見えましたか？[p]
[whosay name="三宮　時子" color="#c25232"]
えぇ、まるで素敵な殿方と再会したような少女のお顔をなされていましたわ[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
そうでしょうか？[p]
[if]
[whosay name="三宮　時子" color="#c25232"]
えぇ、淑女らしかぬ浮き足だった表情をされてましたわよ[p]
[else]
[whosay name="三宮　時子" color="#c25232"]
えぇ、花屋の前で。恋絵巻に出てもおかしくない表情をされてましたわ[p]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私ったら……)[p]
[whosay name="三宮　時子" color="#c25232"]
もしかして、四条家の華織さまをお選びになられたのですね[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
！ [r]
えぇ。時子さんは四条華織さまをご存知でいらっしゃるの？[p]
[whosay name="三宮　時子" color="#c25232"]
父に華道展覧会に連れられたときに 四条綾花さまとご一緒にお会いしましたわ[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
四条綾花さま？[p]
;織り→機織り→綾+花から命名。
[whosay name="三宮　時子" color="#c25232"]
あぁ、綾花さまは、四条華織さまのお祖母様ですわ。[r]
華道会では、そこそこ有名な方ですの[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そうなのですね)[p]
[whosay name="三宮　時子" color="#c25232"]
[名前]さんが、温かい方を選ばれて私、ホッとしていますわ[p]
;ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
……[p]
[whosay name="三宮　時子" color="#c25232"]
そうだわ。
私、ちょうど華道連盟の冊子を持っていたのですわ。[p]
#
時子さんは、『華道連盟 〜花ノ道〜』とは書かれた冊子を取り出した。[p]
;書道連盟の冊子みたいなものです。
#
その冊子には、華道のお稽古の道具から、最近の華道関係のご活躍した方についてのことが、詳細に連載されていた。[p]
;もしかしたら磯野が持ってるかもしれない。
[whosay name="三宮　時子" color="#c25232"]
よかったら[名前]さんに差し上げます[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
よろしいのでしょうか？[p]
[whosay name="三宮　時子" color="#c25232"]
父から見合い相手の話の種になるように渡されましたけれど、このような物を見なくても話の種には事欠きませんから[p]
;あはは 汗といった感じ？
[whosay name=&sf.girl_namae color="#cf5a7f"]
……[p]
[whosay name="三宮　時子" color="#c25232"]
それに、先日に行われた華道競合大会に華織さまのことも載っていたはずでしてよ[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
そうなんですか！[p]
#
私は、思わず、時子さんと一緒になって冊子の中の名前欄を探ってしまった[p]
[whosay name="三宮　時子" color="#c25232"]
華織さまは……惜しくも大賞を逃して準優勝のようですわね[p]
#
大きく写真が載った四条綾花の隣には、中くらいの四条華織さまの写真が作品と共に掲載されていた[p]
[whosay name="三宮　時子" color="#c25232"]
さすが四条家の跡取りだけあって、素敵に活けてある作品が多いですわね[p]
#
しかし、批評所見欄には、こう書かれていた。[r]
『他の方には、引けは取らないのですが、イマイチ勢いにかける作品』[p]
#
『秘められた才能を感じますが、あと少し足りない』[p]
#
その表情は、柔らかく穏やかな笑みをしていたけれど、どこか寂しげな表情であった[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……)[p]


;機能ボタン表示
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


[機能ボタン表示]


;【背景】[背景_庭]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;[主人公ポーズ通常]


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