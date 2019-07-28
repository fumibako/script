;夢イベント財前が好感度が一番高い場合発生
;=========================================================
*replay_zaizen_6_1
*start
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*6_1 storage="zaizen/preload_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
[イベントシーン構築ボタン無し版]
[暗転１]
;[財前ベース背広]
;[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
;ゆっくり表示
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kinari_sakura.jpg" time=2000]
[eval exp="f.haikei_credit=''"]
――夢を見た。[p]

[イベントシーン構築枠茶色]
;【背景】財前邸居間
[bg wait=true method='crossfade' storage="../fgimage/bg/test_room_zaizen_ima.jpg"  time=1000]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]

[whosay name="女中"]
「若旦那様、今朝の新聞と、[名字]様からの手紙が届いております」
[autosave改]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

#
女中から新聞と手紙を手渡される。[r]
新聞に目を通し、彼女の手紙を読んだ。[p]
;私は新聞に目を通し、彼女の手紙を読んだ。[p]

;【SE】紙に触れる（スッ）

[手紙主人公]
財前美彬様へ[l][r]
[sp]拝啓　紫陽花の花が雨に濡れて鮮やかな季節。[r]
財前様にはお変わりなくお過ごしでしょうか？[r]
[r]
[sp]先日はお手紙のお返事をありがとうございます。 [r]
財前様の考え方もお手紙もとても真面目で[r]
私も見習いたいと思っております。[r]
[r]
[sp]財前様はお手紙にはよく私の考えを尋ねる事が[r]
多くて私も色々な事について深く考えるようになりました。
[autosave改]
[wait time=10]
[p]
;自動で改ページするので分けます
[sp]梅雨の季節は本当に雨ばかり降ります。[r]
[sp]けれど草木は生き生きとして美しくみえますわ。[r]
[r]
[sp]財前様も雨に濡れて風邪など召さないように、[r]
お気を付けて下さい。[r]
[r]
[sp]またお手紙をお出しします。[r]
[sp]財前様からのご返事お待ち申し上げております。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具 [r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　[名字][名前] [p]
[手紙読了]
[resetfont]
;【SE】紙に触れる（パラリ）
[if exp="sf.SE=='ON'"]
[playse storage=paper_open.ogg loop=false ]
[endif]

[whosay name="財前美彬" color="#7a65b2"]
;[財前通常] 見合い前なので表示なしでお願いします
（便宜上、妻という者も必要と思うようになって、何人かと手紙を[r]
[sp]交わしたが、彼女は芯がある。[r]
[sp]媚びるでもなく、真面目に返している）
[autosave改]
[wait time=10]
[p]

[whosay name="財前美彬" color="#7a65b2"]
;[財前目伏]
（まだ考え方が拙く、幼いと思う事もあるが、[r]
[sp]手紙からは彼女なりに考え、[r]
[sp]私の視点からは思いもよらない事を書くこともある）[p]

[whosay name=財前父"]
「手紙を読んで楽し気で何よりだ。[r]
[sp]その手紙の相手とは長く手紙を交わせそうか？」[p]
[autosave改]
[wait time=10]
[p]

[whosay name="財前美彬" color="#7a65b2"]
;[財前通常]
（私が楽し気？　……確かに少々興味をひかれている）[p]

「はい。[r]
[sp]そういえば、この手紙の相手は、父上の友人御令嬢でしたね」[p]

[whosay name=財前父"]
「ああ。 気の合う友人の御令嬢だよ。[r]
[sp]今度こそ、お前が結婚すると期待している」
[autosave改]
[wait time=10]
[p]

[whosay name="財前美彬" color="#7a65b2"]
;[財前目閉じ]
「……どうでしょうね。[r]
[sp]まだ手紙を交わして数か月ほどですから」[p]

[whosay name="財前美彬" color="#7a65b2"]
（実際に会い、気に入ったのは藤枝晶子ぐらいだったが、[r]
[sp]彼女は私との婚約を断り、庶民になる道を選んだ）[p]

#
ため息をつき、再び手紙に目を落とす。[p]

[whosay name="財前美彬" color="#7a65b2"]
（このまま私の手紙を真剣に書いてくれる相手なら[r]
[sp]会ってみてもいいかもしれない）
[autosave改]
[wait time=10]
[p]

[whosay name=財前父"]
「……お前が生理的に女性を嫌っているのは、私にも責任がある」[p]

[whosay name="財前美彬" color="#7a65b2"]
;[財前通常]
「父上に責任はありませんよ」[p]

[whosay name="財前美彬" color="#7a65b2"]
（華族であり、貞淑で見た目がよけれはそれでいい。[r]
[sp]だが母や祖母のような者も十分だ）
[autosave改]
[wait time=10]
[p]

[fadeoutbgm time=3000]
[暗転１]

;===================================================================================
#
; 背景お稽古部屋？
;【背景】主人公邸 お稽古部屋
[layopt layer=fix visible=false]
[image name="junbi" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=100]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29 time=1000]
[layopt layer=fix visible=true]
[メッセージウィンドウ上ボタン表示]
;===================================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様の夢？」[p]

[主人公ポーズ指]
（財前様のお手紙は、いつも冷淡だけど[r]
[sp]財前様の意図と自分の意見を考えながら[r]
[sp]よく考えてお返事を書くと好感をもってくださるのかしら）[p]
[eval exp="sf.event_zaizen_event_6_1 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_zaizen.ks"
[s]
