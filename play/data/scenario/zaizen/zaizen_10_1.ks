;=============================================
;イベント３回目【散策イベント１】10月1週、
;時子さんより財前の噂を聞く
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
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
町の賑やかさも、今の私の心を慰めてくれない[p]
[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん 、ため息などついてどうしたのですか？」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ時子さん！　」[p]

#
気づけは時子さんは私の目の前にいた[p]
[主人公憂い]
[whosay name="三宮　時子" color="#c25232"]
「何か考え事をしていらっしゃるの？[r]
[sp] 全く私に気づかないなんて」[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、結婚について考えてました」[p]

[whosay name="三宮　時子" color="#c25232"]
「そういえば、[r]
[sp] 財前様と縁談を進めているんですってね[r]
[sp] ……とても意外でしたわ」[p]

;【立ち絵】主人公：驚き
[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「意外ですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、まあ端麗な容姿にしても、[r]
[sp] 新華族に叙せられ、[r]
[sp] 身分も申し分のない方ですが[r]
[sp][名前]さんは温かい方を選ぶと思っていました」[p]

;【立ち絵】主人公：目伏せ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手紙が真面目で、試されている気はしたのですが[r]
[sp] どんな方か会ってみたくなりましたの」[p]

[whosay name="三宮　時子" color="#c25232"]
「悪い人選ではないと思いますわよ[r]
[sp] あの方は自分の妻になる方を[r]
[sp] 蔑ろにするような方でもありませんし」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様をご存じですの？　」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、有名な方ですし社交の場に[r]
[sp] よくいらっしゃるので噂ぐらいなら」[p]

;【立ち絵】主人公：真剣
[主人公目大]
[主人公口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「よければ聞せて下さい」[r]
（お手紙を交わしても私は財前様を[r]
[sp] ほとんど知らないわ）[p]

[whosay name="三宮　時子" color="#c25232"]
「悩んでいるのは財前様の事なのですね」[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……財前様にお会いしてどうしていいか、[r]
[sp] わからなくなってしまいました」[p]

[whosay name="三宮　時子" color="#c25232"]
「財前様のご家族は少し複雑でしてね[r]
[sp] 特にお祖母様が厳し方だと聞くわ。[r]
[sp] お母様についてはご存じですか？　」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、[r]
[sp] 独逸の方だという事以外知りませんわ」[p]

[whosay name="三宮　時子" color="#c25232"]
「では私からは申し上げる訳にはいきません[r]
[sp] ……そうですね財前様は[r]
[sp] 恋愛に嫌悪感を持たれても[r]
[sp] おかしくありませんわ」[p]

;【立ち絵】主人公：けげん
[主人公目大]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それはなぜですの？　」[r]
（恋愛に嫌悪感？）[p]
[主人公口通常]

[whosay name="三宮　時子" color="#c25232"]
「詳しくは財前様に聞くといいでしょう[r]
[sp] 道筋を立てて尋ねれば答えて頂けるはずです[r]
[sp] 財前様も[名前]さんと縁談を進めていますし[r]
[sp] きっと[名前]さん の事を気に入っているとは思いますわ」[p]

;【立ち絵】主人公：困り
[主人公憂い]
[主人公汗]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんなことありません。[r]
[sp] 取り付く島もありませんでした」[p]
[fadeoutbgm time=3000]
[主人公効果消]
[whosay name="三宮　時子" color="#c25232"]
「いいえ、財前様は律儀な方でしょう？[r]
[sp] 華族の方や財界の方からも縁談は山のように来ているのに[r]
[sp] [名前]さんと会って縁談を進めようとしている[r]
[sp] 自信をもっていいのではないかしら？　」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】主人公：思案
[主人公目伏]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……確かに律儀な方ですわ」[r]
（それに縁談はまとまりかけている[r]
[sp] ……それなら）[p]
[fadeoutbgm time=3000]
;【立ち絵】主人公：目伏せ微笑み
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「自信はありませんがもう一度[r]
[sp] 財前様とゆっくりお話ししようと思います」[p]

;=====================================================================
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
