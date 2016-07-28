[setreplay name="opening1"]
;オープニング1：手紙版
[if exp="sf.KSKIP=='ON' && sf.trail_opening1_opening1==undefined"]
	[skipstop]
[endif]
*opening1
[cm]

[eval exp="sf.FButton='OFF'"]

;=============================================
;オープニング1
;=============================================

[cm]
[手紙青]
[cg storage="bg_tegami_blue.jpg" ]

[font color=navy size=21]

文矢お兄様[l][r]
;【SE】うぐいす（ケキョケキョ）
[playse storage=tori_uguisu_pikyo.ogg loop=false ]
[r]
拝啓　お兄様が海外に旅立たれてもう一年になりますね。お姉さまとは仲良くしておいででしょうか。[r]
[r]
[sp]こちらでは鶯が鳴き始め、日に日に春の訪れを[r]
実感する毎日です。
[autosave]
[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[r]
[r]
[r]
[sp]そして、[名前]は今年１６の誕生日を迎えました。[r]
お姉さまが、文矢お兄様と初めて文を交わした年です。[r]
[r]
[sp]実はこの間お父様に呼ばれ、縁談の話が持ち上がって[r]
いると伝えられました。[r]
[r]
[sp]淑女としてまだまだ未熟な私が結婚なんてできるのかと[r]
不安でいっぱいですが、お兄様のような素敵なご縁になるよう[r]
遠くから見守っていてくださいね。[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
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
××１３年　３月　２６日[r]
[sp]　　　　　　　　　　　　　　　　　　　 　　　[名字]　[名前][p]
[resetfont]

[endreplay] 
;------オープニング2にジャンプする
@jump storage="opening2.ks"
[s]






