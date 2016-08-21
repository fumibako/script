;=============================================
;イベント5回目【財閥総帥主催のパーティ】11月1週、
;=============================================
;【背景】[背景_庭]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常] 
[主人公通常]

;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私はもっと財前様に[r]
[sp] 認めてもらいたい）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

#
ばあやに髪を梳いてもらい、[r]
髪を結ってもらう。[r]
私は目を瞑り頭が動かないように[r]
じっとしている[p]

#
ばあやの手つきは丁寧だ、[r]
きっと、[r]
今日もまとまりよく[r]
仕上げてくれるだろう[p]

[whosay name="ばあや" color="#916565"]
「さ、お嬢様、出来ましたよ。」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、今日もありがとう」[p]

#
目を開け鏡の中の自分を見て[r]
少しの違和感を覚える[r]
私はこんな顔をしていたかしら？[p]

[whosay name="ばあや" color="#916565"]
「お嬢様は最近雰囲気が変わられましたね[r]
楚々として初々しいのは変わりませんが[r]
華やかな艶が加わったと申しましょうか[r]
殿方に恋をすると変わっていくのですね」[p]

;【立ち絵】主人公：目伏せ頬染
[主人公困り]
[主人公頬染め]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんなことありません！」[r]
（私は恋なんてまだしていないわ）[p]

[whosay name="磯野" color="dimgray"]
「お嬢様、財前様がお見えになりました[r]
[sp] 入ってもよろしいでしょうか？　」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、今出来た所です」[r]
（支度に時間がかかり、もうこんな時間だわ）[p]

;【SE】襖を開ける（ゆっくり）

#
磯野は私の姿をみて[r]
少し驚いたように目を見張った[p]

[whosay name="磯野" color="dimgray"]
「……お嬢様[r]
[sp] 今日は一段と綺麗に仕上がっていますね[r]
[sp] 財前様も喜ばれるでしょう」[p]

;【立ち絵】主人公：目伏せ憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……どうかしら？[r]
[sp] あの方のお考えなんて私には分らないわ」[r]
（知っても理解したくない）[p]

[whosay name="磯野" color="dimgray"]
「さ、お嬢様お車の方へお越しください」[p]

;【立ち絵】主人公：通常
[主人公通常]
「ええ」[p]

;［背景玄関］
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【立ち絵】財前：ハッとする
[whosay name="財前美彬" color="#7a65b2"]
「……」[p]
;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「今日は一段と美しい装いをしていますね[r]
[sp] 美しいというのは人から好まれますが[r]
[sp] 羽目を外さないようにしてください」[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どういう意味でしょうか？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「男に言い寄られてもかわしてください[r]
[sp] という意味です」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ！」[p]
;【立ち絵】主人公：通常
[主人公通常]
「それはないでしょう」[p]
[主人公ポーズ通常]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「どうでしょうね[r]
[sp] ……車に乗ってください[r]
[sp] こんなところで立ち話する[r]
[sp] 気はありません」[p]

;【立ち絵】主人公：通常　
[主人公伏目]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ええ」[p]

;［背景パーティ会場］
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

#
開宴の挨拶、財閥総帥の挨拶が終わり[r]
乾杯をし、会食の時間となると[r]
ざわめきだした[r]
財前様はよく話しかかれる[p]
;かけられる でいいでしょうか？

[whosay name="パーティ客男性"]
「縁談を進められていると[r]
[sp] 聞きましたが[r]
[sp] そちらの御令嬢が婚約者ですか？」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「ええ、今日が[r]
[sp] 社交デビューのようなものですから[r]
[sp] 彼女にはお手柔らかにお願いします」[p]

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
[sp] 総帥が財前様をお呼びです[r]
[sp] 来ていただけますか？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ええ、[r]
[sp] 婚約者も同伴させてもよろしいですか？　[r]
[sp] 彼女はこういった場は初めてなので[r]
[sp] 一人にするのは忍びないですが……」[p]

[whosay name="財閥総帥秘書"]
「いえ、内密の話があるので[r]
[sp] おひとりでいお願いします」[p]

;【立ち絵】財前：困り
[whosay name="財前美彬" color="#7a65b2"]
「しかし……」[p]

;【立ち絵】主人公：通常　
[主人公憂い]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私なら大丈夫ですわ[r]
[sp] 行ってきてくださいませ」[p]

[whosay name="財閥総帥秘書"]
「彼女もこう言っておられますし[r]
[sp] 総帥がお待ちです」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「……貴方はここで大人しくしていてください[r]
[sp] すぐに戻ってきます」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

[主人公憂い]
#
十分後ー[r]
財前さまが席を外されてぼんやりする[r]
一人で知らない場所にいるというのは[r]
寂しく不安な気持ちが広がる[p]


[whosay name="パーティ客男性"]
「あちらでは社交ダンスを行ってます[r]
[sp] 貴方も一曲どうですか？[r]
[sp] 良ければ僕と踊りませんか」[p]

;【立ち絵】主人公：困り
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、連れが[r]
[sp] もうじき戻ってきますので[r]
[sp] 遠慮します」[p]

[whosay name="パーティ客男性"]
「ちょっとぐらい構わないでしょう？」[p]

#
パーティ客男性は強引に私の手を引く[p]

;【立ち絵】主人公：困り
[主人公汗]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ちょ……手を放してください、[r]
[sp] 困ります！」[p]

[whosay name="パーティ客男性"]
「貴方のような方が壁の花とは[r]
[sp] 放っておく男の気が知れません[r]
[sp] さあ、パーティを楽しみましょう」[p]

;【立ち絵】主人公：困り
 [主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「手を放して！」[p]

 [fadeoutbgm time=3000]
#
私が嫌がっているのに構わず[r]
パーティ客男性は[r]
ぐいぐいと腕を引っ張る[p]
[主人公憂い]
[whosay name="？？？"]
「おやめなさい！　
[sp] 彼女は嫌がっているでしょう！」[p]
[主人公効果消]
[主人公伏目]
[主人公眉下げ下]

[whosay name="パーティ客男性"]
「こ……これは独逸大使婦人[r]
[sp] 失礼します」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[whosay name="独逸大使夫人"]
「お連れの方はいらっしゃらないの？[r]
[sp] 貴方のように可憐な方が[r]
[sp] 一人でいるのは危険ですよ」[p]

#
流暢な日本語を話しかけられ[r]
綺麗な碧い瞳が私を映す[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
[主人公目大]
(あ……財前様と同じ色だわ)[p]


;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[主人公目通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今、席を外しているのです[r]
[sp] 助けて頂いてありがとうございます」[p]

[主人公目通常]
#
私は一礼をして彼女を見る[r]
彼女の顔立ちはどことなく[r]
財前様と似ていた[r]
……独逸の方だからかしら？[p]

[whosay name="独逸大使夫人"]
「そんなにまじまじと見られて[r]
[sp] どうかしましたか？[r]
[sp] あなたお名前は？」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、失礼しました。[r]
[sp] 知人に似ていましたのでつい、[r]
[sp] [名字] [名前] と申します」[p]

[whosay name="独逸大使夫人"]
「そう [名字] 様とおっしゃるのね[r]
[sp] お連れの方が戻るまで[r]
[sp] 私がついていましょうか？」[p]

 [fadeoutbgm time=3000]
 
;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「私の婚約者に何かご用ですか？」[p]
[主人公通常]

[whosay name="独逸大使夫人"]
「アルベルト！」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

#
彼女は目を見開いて[r]
財前様を見つめ、[r]
財前様は冷たく不快そうだった[r]
……普段感情を見せないのに[p]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「貴方にその名で[r]
[sp] 呼んでほしくありませんね[r]
[sp] 独逸大使夫人、[r]
[sp] よくこの国に戻ってこれましたね」[p]

[whosay name="独逸大使夫人"]
「私を恨んでいるの？」[p]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「ただ貴方が母という事が[r]
[sp] 恥ずかしいだけですよ、[r]
[sp] 貴方は私の汚点です」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様のお母様！？　[r]
[sp] 似ていると思ったけれど）[p]


財前様のお母様は悲しそうで[r]
今にも泣きそうな表情だ[p]

;【立ち絵】主人公：眉ひそめ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様いくらなんでも[r]
[sp] お言葉が過ぎます……」[p]

[whosay name="財前母"]
「私、２階の控室で休んできます」[p]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「ええ、私の前かから今すぐ消えて下さい」[p]

#
彼女は逃げるように立ち去っていく[p]

;【立ち絵】主人公：眉ひそめ
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様！あんまりです」[p]
[主人公口通常]

[fadeoutbgm time=3000]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「よりにもよって貴方がいる場に[r]
[sp] あの女に出くわすとは[r]
[sp] 思いもよりませんでした[r]
[sp] ……帰りましょう」[p]



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
