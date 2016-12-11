;=============================================
;葛城宮ルート2月2週から3月４週の間に散策イベント１
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*sansaku storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
町は今日も賑やかな様子を見せている。[r]
私は見知った姿が見えて声を掛けた[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

;【立ち絵】主人公ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「お久しぶりです時子さん！ お元気でしたか？」[p]

[whosay name="三宮時子"]
「[名前]さん、お久しぶりですね。 [名前]さんこそ、お元気でしたか？[r]
[sp]政界でもひと悶着あって心配しておりましたのよ」[p]

;【立ち絵】主人公ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「御心配をありがとうございます。[r]
[sp]確かに色々ありましたが、殿下は貴族院で[r]
[sp]忙ししていらっしゃる様です」[p]

[whosay name="三宮時子" ]
「[名前]さん、[r]
[sp]あれから葛城宮殿下とお会いになりましたか？」[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、お会いしましたけれど、どうかしましたか？」[p]

[whosay name="三宮時子" ]
「いえ、[r]
[sp]葛城宮殿下が少し変わったと宮中でもっぱらの噂ですのよ。[r]
[sp]あの政界の一件から少しやつれて、 精悍になり、大人になったと」[p]

;【立ち絵】主人公目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「そうなのでしょうね」[p]

[whosay name="三宮時子" ]
「[名前]さん、わかっておられませんね。[r]
[sp]皇族は複数妃を持ってもおかしくはありませんのよ」[p]

「先帝も複数の妃がいらっしゃったし、[r]
[sp]女官たちが葛城宮殿下に[ruby text=しゅう]秋[ruby text=は]波を送っているとか」[p]

;【立ち絵】主人公困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……殿下は女官に手を出したりしませんわ」[p]
（確かに、おもてになるでしょうけど）[p]

[whosay name="三宮時子" ]
「殿下は心配ないと思いますが、[r]
[sp]女官たちが[名前]さんに当たったりしないか[r]
[sp]思いやられますわ」[p]

;【立ち絵】主人公困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……」[p]

[whosay name="三宮時子" ]
「やはり不安でしょうね[r]
[sp]ねえ、[名前]さん 私、貴方の侍女になりましょうか？」[p]

;【立ち絵】主人公驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「え！[r]
[sp]時子さん、またどうしてそんな事を？」[p]

[whosay name="三宮時子" ]
「[名前]さんが心配ですし、お父様に勧められているけれど[r]
[sp]まだ私は縁談を受ける気はありませんの」[p]

;【立ち絵】主人公驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「でも家格は私より時子さんの方が上ですし、[r]
[sp]時子さんの家族の方は、了承して下さらないんじゃ……」[p]

[whosay name="三宮時子" ]
「親王妃になれば[名前]さんの方が、地位は上です。[r]
[sp]私が家族を説得できないと思いますの？」[p]

#
時子さんは自信ありげにクスッと笑う[r]
それがとても心強い。[p]

そして時子さんは、ためらいがちに言った。[p]

[whosay name="三宮時子" ]
「それに私にもお慕いする方が……」[p]

#
時子さんは目を伏せていて少し頬が赤い。[r]
その様子が可愛らしかった。[p]


;【立ち絵】主人公目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公口通常]
「もしかして時子さんも、想う方がいらっしゃるの？」[p]

[whosay name="三宮時子" ]
「……ええ、叶わなくとも[r]
[sp]今はこの気持ちを曲げて縁談を受けたくないのです」[p]

#
憂いげに時子さんはうなずいた。[r]
時子さんの恋も障害があるのかもしれない。[p]

;四行直せない
[whosay name="三宮時子" ]
「私はそろそろ家に戻らなければなりません、[r]
[sp][名前]さん、またお話ししましょう。[r]
[sp]ごきげんよう」[p]

;【立ち絵】主人公目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええごきげんよう」[p]

（次の機会に聞けるかしら）[p]
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_katuragi.ks"
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

