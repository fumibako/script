;=============================================
;イベント【主人公奮闘する】１２月2週
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*12_2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公真剣]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
;【立ち絵】主人公：真剣
#
金融関係の本や新聞を沢山集めて読む。[p]

これで読んだ本は８冊目。[r]
専門用語もあり、読み解くのには時間がかかった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]

[whosay name="磯野"]
「お嬢様、お疲れ様です。[r]
[sp]失礼ながら、ですが現状を知っても、どうにもならないことも[r]
[sp]ありますよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「それでも財前様が立ち向かっているのです[r]
[sp]何か私にもできる事があるかもしれません……」[p]

[whosay name="磯野"]
「財前様にお手紙を書くだけで十分です」[p]
[主人公眉通常]
[主人公目伏]
「銀行は今、国民から敵視されています。[r]
[sp]この状態が続くなら、当家は少し距離を置くことに[r]
[sp]なるかもしれません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「それはどういう意味ですか？」[p]
[whosay name="磯野"]
「婚約を考え直すことになるかもしれない、という意味です」[p]

[主人公憂い]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野！[r]
[sp]こんな大変な時に悪い冗談は止めて下さい！」[p]

[whosay name="磯野"]
「冗談ではありません。　お嬢様の為です。[r]
[sp]もし好転しなければ当家にまで害が及ぶこともあります」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
[主人公眉強気]
[主人公目閉]
「そんなことをしたら私、磯野を許せませんわ」[p]

[whosay name="磯野"]
「正論ですが、[r]
[sp]庶民の生活というのはお嬢様が思っているより悪いものでございます。[r]
[sp]加えて、教養がある者も少ないのです」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
「では磯野の知っている事を教えてください」[p]

「磯野は家令として沢山の知識を知っています。[r]
[sp]磯野は現状をどう見ているのですか？」[p]

#
磯野は驚いた顔をし、暖かく微笑んだ。[p]

[whosay name="磯野"]
「分りました、少し長い話になりますが[r]
;よろしいでしょうか　などで区切る
[sp]沢山の本や新聞を読み今、何かできないかと[r]
[sp]考えているお嬢さまのお役に立てれるといいのですが……」[p]

#
私は磯野の話を聞き、庶民の暮らしについて、[r]
また国の銀行の成り立ちとその営業、[r]
仕組みについての磯野の意見を聞いた。[p]


[イベントシーン終了]
;=================================================================================================
;@jump storage="event.ks" target=*event_owari

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
