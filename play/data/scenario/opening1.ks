[setreplay name="opening1"]
;オープニング1：手紙版
[if exp="sf.KSKIP=='ON' && sf.trail_opening1_opening1==undefined"]
;	[skipstop]
[endif]
*opening1
[cm]

[eval exp="sf.FButton='OFF'"]

;=============================================
;オープニング1
;=============================================

[cm]
;[手紙青]
[bg wait=true storage="../fgimage/bg/I9IhvvVdPo/bg_tegami_blue.jpg" time=100]
[wait time=10]

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

;メッセージレイヤサイズを手紙用に設定変更
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[font color=navy size=21]
*girl_fumi_1
[cm]
文矢お兄様[l][r]
;【SE】うぐいす（ケキョケキョ）
[if exp="sf.SE=='ON'"]
	[playse storage=tori_uguisu_pikyo.ogg loop=false ]
[endif]
[r]
拝啓　お兄様が海外に旅立たれてもう一年になりますね。お姉さまとは仲良くしておいででしょうか。[r]
[r]
[sp]こちらでは[ruby text="うぐいす"]鶯が鳴き始め、日に日に春の訪れを[r]
実感する毎日です。
[autosave]
;◆システムメッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[wait time=10]
;↓初見時のみ手紙の進め方ヒント表示
[if exp="sf.hint_fumi != 1"]
[image layer=26 x=550 y=335 storage="button/frame_fukidasi_migiue.png" height="170"]
[wait time=10]
	[ptext text="お手紙を読み進めるには" layer=27 size=18 x=595 y=385 color=slategray bold=bold]
	[ptext text="こちらのボタンを押してください" layer=27 size=18 x=580 y=423 color=slategray bold=bold]
[wait time=10]
[endif]

[glink target=*girl_fumi_2 text="→" size=10 x=800 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[wait time=10]
[s]
*girl_fumi_2
;【SE】紙に触れる（パラリ）
[if exp="sf.SE=='ON'"]
	[playse storage=paper_open.ogg loop=false ]
[endif]
[freeimage layer = 26]
[freeimage layer = 27]
[wait time=10]
[r]
[r]
[r]
[sp]そして、[名前]は今年十六の誕生日を迎えました。[r]
お姉さまが、文矢お兄様と初めて文を交わした年です。[r]
[r]
[sp]実はこの間お父様に呼ばれ、縁談の話が持ち上がって[r]
いると伝えられました。[r]
[r]
[sp]淑女としてまだまだ未熟な私が結婚なんてできるのかと[r]
不安でいっぱいですが、お兄様のような素敵なご縁になるよう[r]
遠くから見守っていてくださいね。
[glink target=*girl_fumi_1 text="←" size=10 x=80 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*girl_fumi_3 text="→" size=10 x=800 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*girl_fumi_3
;【SE】紙に触れる（パラリ）
[if exp="sf.SE=='ON'"]
	[playse storage=paper_open.ogg loop=false ]
[endif]
[r]
[r]
[r]
[sp]そちらでは、まだまだ厳しい寒さが続くと思いますが、[r]
くれぐれもお風邪など召されないよう、ご自愛くださいませ。[r]
[r]
[sp]いつかこちらに戻って来てくださる日を[r]
楽しみにお待ちしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　 　　　　　　 敬具[r]
××一三年　三月　二十六日[r]
[sp]　　　　　　　　　　　　　　　　　　　 　　　[名字]　[名前]
[glink target=*girl_fumi_2 text="←" size=10 x=80 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*girl_fumi_close" size=5 x=880 y=24 width=50 height=50]

;◆システムメッセージ表示
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[wait time=10]
;↓初見時のみ手紙の進め方ヒント表示
[if exp="sf.hint_fumi != 1"]
[image layer=26 x=665 y=80 storage="button/frame_fukidasi_migiue.png" height="150"]
[wait time=10]
	[ptext text="お手紙を閉じるには" layer=27 size=16 x=730 y=120 color=slategray bold=bold]
	[ptext text="こちらのボタンを押してください" layer=27 size=16 x=683 y=153 color=slategray bold=bold]
[wait time=10]
[eval exp="sf.hint_fumi = 1"]
[endif]

[s]

*girl_fumi_close
[freeimage layer = 26]
[freeimage layer = 27]
[wait time=10]
[cm]
[clearfix]
﻿@clearstack
[resetfont]
[endreplay] 
;------オープニング2にジャンプする
@jump storage="opening2.ks"
[s]






