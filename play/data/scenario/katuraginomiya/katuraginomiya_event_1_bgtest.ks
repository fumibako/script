;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
#

[手紙葛城宮 fumi_number=1]

[font color=navy size=21]

[名字]　[名前]殿へ[l][r]
[r]
拝呈　先日は色々と失礼したが[名字]殿が気を[r]
悪くしていないといいのだが。[r]
[r]
[sp]梅雨が明けた明るい日差しの中[r]
町で君と出会い率直に君をとても好ましく思った。[r]
[r]
[sp]女性を心から美しいと思ったのは君が初めてだ。[r]
[sp]身分の所為か性格の所為か私の周囲にいる女性は[r]
私に媚か恐れをもっている者が多いが[p]

[sp]君は佇まいが淑やかななだけでなく[r]
初々しく楚々として、目が澄んでいた。[r]
[r]
[sp]君の噂を軽く聞き[r]
[sp]君が手紙を交わし始めたと知った。[r]
そして私はこうして手紙を綴るに至っている。[r]
[r]
[sp]私はこういったたぐいの手紙を書いたことがないので[r]
少々戸惑っている。[p]
[r]
[sp]私は遠回しな言い方は苦手だ。[r]
[sp]こうして手紙を出すという行為が求婚の意味を含んでいる[r]
ことも理解した上で、私は君と手紙を交わしたいと考えている。[r]
[r]
君の事を知りたいと思ったのだ。
[r]
[r]
[r]
心より返信を待つ。[r]
[r]
[r]
謹言[r]
[sp]　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[resetfont]
[手紙葛城宮読了 fumi_number=1]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ふぅ閉]
[主人公汗]

「……でもきっと殿下は[r]
[sp]少し私に興味を持たれただけだわ。[r]
[sp]求婚といっても冷静になって考えてみると[r]
[sp]周囲の方々が反対されます」[p]

[主人公目を開く]
[主人公通常]
[whosay name=磯野 color="dimgray"]
「ですが実際に手紙を出されているのです。[r]
[sp]葛城宮殿下の事をお調べしておきます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 苦笑
[主人公苦笑]
「そうね、高位の方の戯れだとは思いません。[r]
[sp]文面から殿下は率直で誠実な方だと思います。[r]
[sp]私も誠実にお返事を書きます」[p]



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
