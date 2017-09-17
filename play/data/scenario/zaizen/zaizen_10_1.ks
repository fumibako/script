;=============================================
;イベント３回目【散策イベント１】10月1週、
;時子さんより財前の噂を聞く
;=======================お芝居の準備中です==========================================
*replay_zaizen_10_1
[stopbgm]
[call target=*10_1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公憂い]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
町の賑やかさも、今の私の心を慰めてくれない。
[autosave]
[wait time=10]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]
[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、ため息などついてどうしたのですか？」[p]

;【立ち絵】主人公：驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「まあ、時子さん！」[p]

#
気づけば、時子さんが私の目の前にいた。
[autosave]
[wait time=10]
[p]
;気づけば、時子さんが目の前にいた。[p]

[whosay name="三宮　時子" color="#c25232"]
[主人公憂い]
「何か考え事をしていらっしゃるの？[r]
[sp]全く私に気づかないなんて」[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、結婚について考えてました」
[autosave]
[wait time=10]
[p]

[whosay name="三宮　時子" color="#c25232"]
「そういえば、財前様と縁談を進めているんですってね。[r]
[sp]……とても意外でしたわ」[p]

;【立ち絵】主人公：驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
「意外ですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、……まあ端麗な容姿をされてますわね。[r]
[sp]それに新華族に叙せられ、身分も申し分のない方です」
[autosave]
[wait time=10]
[p]

「ですが、[名前]さんは温かい方を選ぶと思っていました」[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「お手紙で、真剣に私の考え方を知り、試そうとされていました。[r]
[sp]……どんな方なのか会ってみたくなりましたの」[p]


[whosay name="三宮　時子" color="#c25232"]
「悪い人選ではないと思いますわよ。[r]
[sp]あの方は自分の妻になる方を[ruby text=ないがし]蔑ろにするような方でも[r]
[sp]ありませんし」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「財前様をご存じですの？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、有名な方ですし、社交の場によくいらっしゃるので、[r]
[sp]噂ぐらいなら」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
[主人公目大]
「よければ、お聞かせください」[p]
[主人公目通常]
（お手紙を交わしても、私は財前様の事をほとんど知らないわ）
[autosave]
[wait time=10]
[p]

[whosay name="三宮　時子" color="#c25232"]
「悩んでいるのは財前様の事なのですね」[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……財前様にお会いして、どうしていいか分からなくなって[r]
[sp]しまいました」
[autosave]
[wait time=10]
[p]

[whosay name="三宮　時子" color="#c25232"]
「財前様のご家族は少し複雑でしてね。 特にお祖母様が[r]
[sp]厳しい方だと聞くわ。 お母様については、ご存じですか？」[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「いいえ、[ruby text="ド"]独[ruby text="イツ"]逸の方だという事以外知りませんわ」[p]

[whosay name="三宮　時子" color="#c25232"]
「では、私からは申し上げる訳にはいきません。[r]
[sp]……そうですね。　財前様は、恋愛に嫌悪感を持たれても[r]
[sp]おかしくありませんわ」
[autosave]
[wait time=10]
[p]
#
;【立ち絵】主人公：けげん
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
[主人公口開]
「それはなぜですの？」[p]

（恋愛に嫌悪感？）
[主人公口通常]
[主人公眉下げ下]
[主人公目通常]
[p]

[whosay name="三宮　時子" color="#c25232"]
「詳しくは、財前様に聞くといいでしょう。[r]
[sp]道筋を立てて尋ねれば答えて頂けるはずです」
[autosave]
[wait time=10]
[p]

「財前様も[名前]さんと縁談を進めていますし、[r]
[sp]きっと[名前]さんの事を気に入っているとは思いますわ」[p]


;【立ち絵】主人公：困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公汗]
「そんなことありません。 取り付く島もありませんでした」
[autosave]
[wait time=10]
[p]

[whosay name="三宮　時子" color="#c25232"]
[主人公効果消]
「いいえ、財前様は律儀な方でしょう？[r]
[sp]華族の方や財界の方からも縁談は山のように来ているのに[r]
[sp][名前]さんと会って縁談を進めようとしていますもの」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「財前様の縁談についても詳しくご存じなのですか？」
[autosave]
[wait time=10]
[p]

[fadeoutbgm time=3000]
[whosay name="三宮　時子" color="#c25232"]
[主人公口通常]
「ええ、外見と淑女らしさが備わっていればとおっしゃっているけれど[r]
[sp]財前様の理想の女性などごく一握りしかいないと思いますわ。[r]
[sp]自信をもっていいのではないかしら？　」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】主人公：思案
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
;[主人公口通常]
「……確かに律儀な方ですわ」
[autosave]
[wait time=10]
[p]

[主人公目閉]
（それに縁談はまとまりかけている。 ……それなら）[p]

;【立ち絵】主人公：目伏せ微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
「自信はありませんが、[r]
[sp]もう一度、財前様とゆっくりお話ししようと思います」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、[名前]さん、応援していますわ」
[autosave]
[wait time=10]
[p]
[fadeoutbgm time=3000]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「時子さん、いつもありがとうございます」[p]

[主人公通常]
（次にお会いするときには、財前様ときちんとお話ししよう）[p]
*seen_end1
#
;=====================================================================
[eval exp="sf.event_zaizen_10_1 = 1"]
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
@jump storage="test_zaizen.ks"
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]
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
