;=============================================
;イベント5回目【財閥総帥主催のパーティ】11月1週、
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*11_1 storage="zaizen/preload_zaizen.ks"]
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
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私はもっと財前様に認めてもらいたい）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

#
ばあやに髪を梳いてもらい、髪を結ってもらう。[r]
私は目を瞑り頭が動かないようにじっとしている[p]

#
ばあやの手つきは丁寧だ、[r]
きっと、今日もまとまりよく、仕上げてくれるだろう[p]

[whosay name="ばあや" color="#916565"]
「さ、お嬢様、出来ましたよ。」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、今日もありがとう」[p]

#
目を開け鏡の中の自分を見て、少しの違和感を覚える。[r]
私はこんな顔をしていたかしら？[p]

[whosay name="ばあや" color="#916565"]
「お嬢様は最近雰囲気が変わられましたね。[r]
[sp]楚々として初々しいのは変わりませんが、華やかな艶が加わったと[r]
[sp]申しましょうか、殿方に恋をすると変わっていくのですね」[p]
#
;【立ち絵】主人公：目伏せ頬染
[主人公眉困り]
[主人公目伏]
[主人公頬染め]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんなことありません！」[p]
[主人公口通常]
（私は、恋なんてまだしていないわ）[p]

[whosay name="磯野" color="dimgray"]
[主人公眉通常]
「お嬢様、財前様がお見えになりました。[r]
[sp]入ってもよろしいでしょうか？」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、今出来た所です」[p]
[主人公眉下げ下]
（支度に時間が、[ruby text=か]掛かって、もうこんな時間だわ）[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[主人公眉通常]
#
磯野は私の姿をみて、少し驚いたように目を見張った。[p]

[whosay name="磯野" color="dimgray"]
「……お嬢様。 今日は一段と綺麗に仕上がっていますね。[r]
[sp]財前様も喜ばれるでしょう」[p]

;【立ち絵】主人公：目伏せ憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……どうかしら？[r]
[sp]あの方のお考えなんて私には分らないわ」[p]
[主人公目閉]
（知っても理解したくない）[p]

[主人公目伏]
[whosay name="磯野" color="dimgray"]
「さ、お嬢様お車の方へお越しください」[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ええ」[p]
[主人公目閉]

;====================================================================================
[暗転２]
;【背景】玄関
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[財前ベース燕尾服]
[財前通常]
[暗転２終了]
;====================================================================================

[財前目大]
;【立ち絵】財前：ハッとする
[whosay name="財前美彬" color="#7a65b2"]
「……」[p]
[主人公目通常]
;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「今日は一段と美しい装いをしていますね。[r]
[sp]美しいというのは人から好まれますが、羽目を外さないように[r]
[sp]してください」[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どういう意味でしょうか？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「男に言い寄られてもかわしてください……という意味です」[p]

;【立ち絵】主人公：驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公ポーズ片手]
「まあ！」[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
[主人公眉通常]
[主人公目通常]
「それは、ないでしょう」[p]
[主人公ポーズ通常]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「どうでしょうね[r]
[財前目パチ1回]
[sp]……車に乗ってください[r]
[sp]こんなところで立ち話する気はありません」[p]

;【立ち絵】主人公：通常　
[主人公伏目]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ええ」[p]

;====================================================================================
[暗転２]
;【背景】パーティー会場
[主人公通常]
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２終了]
;====================================================================================

#
開宴の挨拶、財閥総帥の挨拶が終わり、[r]
乾杯をし、会食の時間となるとざわめきだした。[p]
;【SE】人々のざわめき（ザワザワ…コンサート等ホール会場）
[playse storage=zawa_hall.ogg loop=false ]
;【SE】人々のざわめき（ザワザワ…屋内）
;[playse storage=zawa_room.ogg loop=false ]
[主人公眉下げ下]
[主人公目伏]
財前様はよく話しかけられる[p]

[whosay name="パーティ客男性"]
「縁談を進められていると聞きましたが[r]
[sp]そちらの御令嬢が婚約者ですか？」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「ええ、今日が社交デビューのようなものですから[r]
[sp]彼女には、お手柔らかにお願いします」[p]

[主人公伏目パチ1回]
[whosay name="パーティ客女性"]
「まあ大事にされているのですね」[p]

[fadeoutbgm time=3000]

#
そして会食が終わり余興の時間になる頃だった[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]


[whosay name="財閥総帥秘書"]
「財前さま、[r]
[主人公通常]
[sp]総帥が財前様をお呼びです。 来ていただけますか？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ええ、婚約者も同伴させてもよろしいですか？[r]
[sp]彼女はこういった場は初めてなので、 一人にするのは[r]
[sp]忍びないのですが……」[p]

[whosay name="財閥総帥秘書"]
「いえ、内密の話があるので、お[ruby text=ひと]一[ruby text=り]人でお願いします」[p]

;【立ち絵】財前：困り
[whosay name="財前美彬" color="#7a65b2"]
[財前困り]
「しかし……」[p]

;【立ち絵】主人公：通常　困り
[主人公眉困り]
[主人公目伏]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私なら大丈夫ですわ。 行ってきてくださいませ」[p]

[whosay name="財閥総帥秘書"]
[財前伏目パチ1回]
「彼女もこう言っておられますし、 総帥がお待ちです」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
「……貴方はここで大人しくしていてください。[r]
[sp]すぐに戻ってきます」[p]
[財前退場準備 storage="bg/test_zaizen_paty1.jpg" time=200]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]
[主人公憂い]
;====================================================================================
[暗転２]
#
[表示準備 storage="bg/test_zaizen_paty1.jpg"]
[暗転２終了 time=1000]
;====================================================================================
十分後ー[r]
財前さまが、席を外されて、ぼんやりする[p]
一人で知らない場所にいるというのは、寂しく不安な気持ちが広がる。[p]

[whosay name="パーティ客男性"]
「あちらでは社交ダンスを行ってます[r]
[sp]貴方も一曲どうですか？ 良ければ僕と踊りませんか」[p]

;【立ち絵】主人公：困り
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ。 連れが、もうじき戻ってきますので遠慮します」[p]

[whosay name="パーティ客男性"]
「ちょっとぐらい構わないでしょう？」[p]
#
パーティ客男性は強引に私の手を引く[p]

;【立ち絵】主人公：困り
[主人公汗]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ちょ……手を放してください、 困ります！」[p]

[whosay name="パーティ客男性"]
[主人公口ムッ]
「貴方のような方が壁の花とは、放っておく男の気が知れません[r]
[sp]さあ、パーティを楽しみましょう」[p]

;【立ち絵】主人公：困り
 [主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
「手を放して！」[p]

 [fadeoutbgm time=3000]
 [主人公眉困り]
 [主人公口ムッ]
#
私が嫌がっているのに構わず[r]
パーティ客男性は、ぐいぐいと腕を引っ張る[p]

[whosay name="？？？"]
「おやめなさい！ 彼女は嫌がっているでしょう！」[p]
[主人公効果消]
[主人公伏目]
[主人公眉下げ下]

[whosay name="パーティ客男性"]
「こ……これは[ruby text="ド"]独[ruby text="イツ"]逸大使婦人、失礼します」[p]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]


[whosay name="独逸大使夫人"]
「お連れの方はいらっしゃらないの？[r]
[sp]貴方のように可憐な方が、一人でいるのは危険ですよ」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

#
流暢な日本語を話しかけられ、綺麗な碧い瞳が私を映す[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
[主人公目大]
(あ……財前様と同じ色だわ)[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[主人公目通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今、席を外しているのです。[r]
[sp]助けて頂いてありがとうございます」[p]

[主人公目通常]
#
私は一礼をして彼女を見る。[p]
[主人公目パチ1回]
彼女の顔立ちはどことなく、財前様と似ていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……独逸の方だからかしら？）[p]

[whosay name="独逸大使夫人"]
「そんなにまじまじと見られて、どうかしましたか？[r]
[sp]あなたお名前は？」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、失礼しました。 知人に似ていましたのでつい、[r]
[sp][名字] [名前] と申します」[p]

[whosay name="独逸大使夫人"]
「そう、[名字]様とおっしゃるのね[r]
[sp]お連れの方が戻るまで、私がついていましょうか？」[p]

 [fadeoutbgm time=3000]
 
;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「私の婚約者に何かご用ですか？」[p]
[主人公通常]
;====================
;立ち絵】財前：不快
[財前ベース燕尾服]
[財前不快]
[表示開始 time=300]
;====================

[whosay name="独逸大使夫人"]
「アルベルト！」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

#
彼女は目を見開いて財前様を見つめる。[p]
[主人公眉下げ下]
[ruby text=いっ]一[ruby text=ぽう]方の財前様は、冷たく不快そうな表情を見せていた。[r]
[主人公目伏]
―― ……普段感情を見せないのに[p]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「貴方にその名で、 呼んでほしくありませんね。[r]
[sp]独逸大使夫人、よくこの国に戻ってこれましたね」[p]

[whosay name="独逸大使夫人"]
「私を恨んでいるの？」[p]

;【立ち絵】財前：不快
[財前伏目パチ1回]
[whosay name="財前美彬" color="#7a65b2"]
「ただ貴方が母という事が、恥ずかしいだけですよ、[r]
[sp]貴方は私の汚点です」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様のお母様！？　似ていると思ったけれど）[p]

[whosay name="独逸大使夫人"]
「……」[p]
#
財前様のお母様は、悲しそうで今にも泣きそうな表情だ。[p]
;財前様のお母さまは、薄っすら涙が滲んでいた。[p]
;財前様のお母さまの碧い瞳には、薄っすら涙が滲んでいた。[p]

;【立ち絵】主人公：眉ひそめ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様、[r]
[財前横目]
[sp]いくらなんでも、お言葉が過ぎます……」[p]

[whosay name="財前母"]
「私、二階の控室で休んできます」[p]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「ええ、私の前から今すぐ消えて下さい」[p]

#
彼女は逃げるように立ち去っていく。[p]

;【立ち絵】主人公：眉ひそめ
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様！あんまりです」[p]
[主人公口通常]

[fadeoutbgm time=3000]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「よりにもよって貴方がいる場に[r]
[sp]あの女に出くわすとは思いもよりませんでした。[r]
[sp]……帰りましょう」[p]


;====================================================================================
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
