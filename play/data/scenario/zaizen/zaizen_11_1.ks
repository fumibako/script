;=============================================
;イベント5回目【財閥総帥主催のパーティ】11月1週、
;ラスト好感度分岐
;zaizen_11_1_2.ks" target="seen_1" good　つづきをみる
:zaizen_11_bad2.ks" target="seen_1" バッド１　財前の言う通りにする
;=======================お芝居の準備中です==========================================
*replay_zaizen_11_1
[stopbgm]
[call target=*11_1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ財前ドレス通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私はもっと財前様に認めてもらいたい）
[autosave改]
[wait time=10]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[if exp="tf.test_gamen == true"]
テストページから開始しています。bad分岐手前までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
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
[暗転２]
[bg wait=true method='crossfade' storage="../fgimage/bg/test_zaizen_paty1.jpg" time=600]
[wait time=10]
[財前ベース燕尾服]
[wait time=10]
[財前不快]
[wait time=10]
[主人公憂い]
[wait time=10]
[暗転２終了 time=1000]
@jump target=*bad_bunki_mae
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

#
ばあやに髪を[ruby text=す]梳いてもらい、髪を結ってもらう。[r]
私は、目を[ruby text=つむ]瞑り頭が動かないようにじっとしている。[p]

#
ばあやの手つきは丁寧だ。[r]
きっと、今日もまとまり良く、仕上げてくれるだろう。[p]

[whosay name="ばあや" color="#916565"]
「さ、お嬢様、出来ましたよ」
[autosave改]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
「ええ、今日もありがとう」[p]

#
目を開けると、鏡の中の自分に違和感を覚える。[p]
;句点続き
;目を開けると、鏡の中の自分に違和感を覚える。
;目を開けると、鏡の中にいつもと違う自分がうつっていた。　少しの違和感を覚える。
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私はこんな顔をしていたかしら？）[p]

[whosay name="ばあや" color="#916565"]
「お嬢様は、最近、雰囲気が変わられましたね。[r]
[sp]楚々として初々しいのは変わりませんが、華やかな艶が加わったと[r]
[sp]申しましょうか、殿方に恋をすると変わっていくのですね」
[autosave改]
[wait time=10]
[p]
#
;エモが多いので直書きに
;【立ち絵】主人公：目伏せ頬染
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口： [主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[主人公頬染め]
「そんなことありません！」[p]
[主人公口通常]
（私は、恋なんてまだしていないわ）[p]

[whosay name="磯野" color="dimgray"]
[主人公眉下げ下]
「お嬢様、財前様がお見えになりました。[r]
[sp]入っても、よろしいでしょうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、今出来た所です」[p]

（[ruby text=し]支[ruby text=たく]度に時間が[ruby text=か]掛かって、もうこんな時間だわ）[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

#
磯野は私の姿をみて、少し驚いたように目を見張った。
[autosave改]
[wait time=10]
[p]

[whosay name="磯野" color="dimgray"]
「……お嬢様。 今日は一段と綺麗に仕上がっていますね。[r]
[sp]財前様も喜ばれるでしょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ憂い
[主人公憂い]
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
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_genkan.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[財前ベース燕尾服]
[財前通常]
[暗転２終了]
;====================================================================================

;【立ち絵】財前：ハッとする
[whosay name="財前美彬" color="#7a65b2"]
[財前目大]
「……」[p]
[主人公目通常]
;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「今日は一段と美しい装いをしていますね。[r]
[sp]美しいというのは人から好まれますが、羽目を外さないように[r]
[sp]してください」
[autosave改]
[wait time=10]
[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どういう意味でしょうか？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「男に言い寄られてもかわしてください……という意味です」
[autosave改]
[wait time=10]
[p]

;【立ち絵】主人公：驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公ポーズ財前ドレス片手]
「まあ！」[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公眉困り]
「それは、ないでしょう」[p]
[主人公ポーズ財前ドレス通常]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「どうでしょうね。
[財前目パチ1回]
[sp]……車に乗ってください。[r]
[主人公眉通常]
[sp]こんなところで立ち話する気はありません」[p]

;【立ち絵】主人公：通常　
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公伏目]
「……ええ」[p]

;====================================================================================
[暗転２]
;【背景】パーティー会場
[主人公通常]
[bg wait=true method='crossfade' storage="../fgimage/bg/test_zaizen_paty1.jpg" time=600]
;[eval exp="f.haikei_credit=''"]
[暗転２終了]
;====================================================================================

#
開宴の挨拶と、財閥総帥の挨拶が終わる。[r]
その後、盛大な乾杯で会食が始まり、財前様の周囲には多くの貴人が[ruby text=つど]集った。[p]

;【SE】人々のざわめき（ザワザワ…コンサート等ホール会場）
[playse storage=zawa_hall.ogg loop=false ]
;【SE】人々のざわめき（ザワザワ…屋内）
;[playse storage=zawa_room.ogg loop=false ]
[主人公眉下げ下]
[主人公目伏]
#
財前様は優雅な微笑みを浮かべ、社交性に富んだ様子だった。
[autosave改]
[wait time=10]
[p]
;上に地の文が完成したので（セリフ）でも。（社交界～なのね）

[主人公口ほほえみ]
（財前様は社交界でも有名で人気があるのね）[p]
[whosay name="パーティ客男性"]
「縁談を進められていると聞きましたが、そちらの御令嬢が[r]
[sp]婚約者ですか？」
[autosave改]
[wait time=10]
[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
[財前微笑み]
「ええ、[r]
[sp]今日が社交デビューのようなものですから、彼女には、[r]
[sp]お手柔らかにお願いします」[p]

[主人公伏目パチ1回]
[whosay name="パーティ客女性"]
「まあ！ 大事にされているのですね」[p]

[fadeoutbgm time=3000]

;全画面だと　――　会食が終わり余興の時間になる頃
#
そして、会食が終わり余興の時間になる頃――
[autosave改]
[wait time=10]
[p]

[whosay name="財閥総帥秘書"]
「財前様、[r]
[主人公通常]
[sp]総帥が財前様をお呼びです。 来ていただけますか？」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]
;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「ええ、婚約者も同伴させてもよろしいですか？[r]
[sp]彼女はこういった場は初めてなので、 一人にするのは[r]
[sp]忍びないのですが……」
[autosave改]
[wait time=10]
[p]

[whosay name="財閥総帥秘書"]
「いえ、内密の話があるので、お[ruby text=ひと]一[ruby text=り]人でお願いします」[p]

;【立ち絵】財前：困り
[whosay name="財前美彬" color="#7a65b2"]
[財前困り]
「しかし……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常　困り
[主人公眉困り]
[主人公目伏]
[主人公口ほほえみ]
「私なら大丈夫ですわ。 行ってきてくださいませ」
[autosave改]
[wait time=10]
[p]

[whosay name="財閥総帥秘書"]
[財前伏目パチ1回]
「彼女もこう言っておられますし、 総帥がお待ちです」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
「……貴方はここで大人しくしていてください。[r]
[sp]すぐに戻ってきます」[p]
[財前退場準備 storage="bg/test_zaizen_paty1.jpg" time=200]
#
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

[主人公憂い]
;====================================================================================
[暗転２]
#
;[bg wait=true method='crossfade' storage="../fgimage/bg/bg_syanderia.jpg" time=50]
[暗転２終了 time=1000]
;====================================================================================
十分後――。[r]
財前様が席を外されて、ぼんやりする。
[autosave改]
[wait time=10]
[p]
一人で知らない場所にいるというのは、寂しく不安な気持ちが広がる。[p]

[whosay name="パーティ客男性"]
「あちらで社交ダンスを行ってます。[r]
[sp]貴方も一曲どうですか？ 良ければ僕と踊りませんか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：困り
[主人公困り]
「いいえ。 連れが、もうじき戻ってきますので遠慮します」[p]

[whosay name="パーティ客男性"]
「ちょっとぐらい構わないでしょう？」
[autosave改]
[wait time=10]
[p]
#
パーティ客男性は強引に私の手を引く。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：困り
[主人公汗]
[主人公口開]
「ちょ……手を放してください、 困ります！」[p]

[whosay name="パーティ客男性"]
[主人公口ムッ]
「貴方のような方が壁の花とは、放っておく男の気が知れません、[r]
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
私が嫌がっているのに構わず、パーティ客男性は、ぐいぐいと腕を[r]引っ張る。[p]


[whosay name="？？？"]
「おやめなさい！ 彼女は嫌がっているでしょう！」
[autosave改]
[wait time=10]
[p]
[主人公効果消]
[主人公伏目]
[主人公眉下げ下]
;====================================================================================
;[bg wait=true method='crossfade' storage="../fgimage/bg/test_zaizen_paty1.jpg" time=1000]
[表示準備 storage="bg/test_zaizen_paty1.jpg"]
;====================================================================================
[whosay name="パーティ客男性"]
「こ……これは[ruby text="ド"]独[ruby text="イツ"]逸大使婦人、失礼します」[p]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]


[whosay name="独逸大使夫人"]
「お連れの方はいらっしゃらないの？[r]
[sp]貴方のように可憐な方が、一人でいるのは危険ですよ」
[autosave改]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

#
流暢な日本語で話しかけられ、綺麗な碧い瞳が私を映す。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
;[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
(あ……財前様と同じ色だわ)[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[主人公目通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今、席を外しているのです。[r]
[sp]助けて頂き、ありがとうございます」[p]

[主人公目通常]
#
私は一礼をして彼女を見る。[p]
[主人公目パチ1回]
彼女の顔立ちは、どことなく財前様と似ていた。
[autosave改]
[wait time=10]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……独逸の方だからかしら？）[p]

[whosay name="独逸大使夫人"]
「そんなにまじまじと見られて、どうかしましたか？[r]
[sp]あなた、お名前は？」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、失礼しました。 知人に似ていましたのでつい、[r]
[sp][名字] [名前] と申します」[p]

[whosay name="独逸大使夫人"]
「そう、[名字]様とおっしゃるのね。[r]
[sp]お連れの方が戻るまで、私がついていましょうか？」
[autosave改]
[wait time=10]
[p]

 [fadeoutbgm time=3000]
 
;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「私の婚約者に何かご用ですか？」[p]
[主人公通常]
#
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
彼女は目を見開いて財前様を見つめる。
[autosave改]
[wait time=10]
[p]
[主人公眉下げ下]
[ruby text=いっ]一[ruby text=ぽう]方の財前様は、冷たく不快そうな表情を見せていた。[r]
[主人公目伏]
―― 普段、感情を見せないのに。[p]

;【立ち絵】財前：不快
[財前目閉じ]
[whosay name="財前美彬" color="#7a65b2"]
「その名で呼ばないで下さい、不快です。[r]
[sp]独逸大使夫人、よくこの国に戻ってこられましたね」
[autosave改]
[wait time=10]
[p]

[whosay name="独逸大使夫人"]
「……私を恨んでいるのね」[p]

;【立ち絵】財前：不快
[財前不快]
[whosay name="財前美彬" color="#7a65b2"]
「ただ貴方が母という事が、恥ずかしいだけですよ。[r]
[財前伏目パチ1回]
[sp]貴方は私の汚点です」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様のお母様！？　似ていると思ったけれど）
[autosave改]
[wait time=10]
[p]

[whosay name="独逸大使夫人"]
「……」[p]
#
財前様のお母さまの碧い瞳には、薄っすらと涙が滲んでいた。[p]

;【立ち絵】主人公：眉ひそめ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様、[r]
[財前横目]
[sp]いくらなんでも、お言葉が過ぎます……」[p]

[whosay name="財前母"]
「ごめんなさいね、失礼します」
[autosave改]
[wait time=10]
[p]

;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「ええ、私の前から今すぐ消えて下さい」[p]

#
彼女は逃げるように立ち去っていく。[p]

;【立ち絵】主人公：眉ひそめ
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様！ あんまりです」[p]
[主人公口通常]

[fadeoutbgm time=3000]
*bad_bunki_mae
;【立ち絵】財前：不快
[whosay name="財前美彬" color="#7a65b2"]
「よりにもよって、貴方がいる場に あの女に出くわすとは[r]
[sp]思いもよりませんでした。 ……帰りましょう」
#
;=================テストとリプレイ時をスキップ========================
[if exp="f.okeiko_gamen == true"]
@jump target=*sentaku_to_bad_or_other
[endif]
;=================テストとリプレイ時の処理========================
*replay_sentaku_to_bad_or_other
;バッドをみていない場合はシームレスに次にリプレイ
[if exp="f.okeiko_gamen != true && f.event_replay == 'zaizen' && sf.ED_zaizen_bad1 != 1"]
[p]
@jump storage="zaizen/zaizen_11_1_2.ks" target="*seen_1"
[endif]

;バッドをみている場合は選択　みていない場合はシームレスに次にリプレイ
[if exp="tf.test_zaizen == true || (f.event_replay == 'zaizen' && sf.ED_zaizen_bad1 == 1)"]
[p]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示選択肢用]
[wait time=10]
#
どうしましょうか？
[wait time=10]
[glink target=*next11_bad text="帰　　る" size=20 width=500 x=250 y=50 graphic="select_waku_x300.png" font_color=black]
[glink target=*next11_1_2 text="帰らない" size=20 width=500 x=250 y=170 graphic="select_waku_x300.png" font_color=black]
[glink target=*end text="回想を終了する" size=20 width=500 x=250 y=290 graphic="select_waku_x300.png" font_color=black]
;↑この場面の選択肢はBadを見ている場合、本編のテキストや選択肢画面に合わせる方が"選択する行為"含めて回想プレイできるのではないかと思いますので、本編に合わせる内容に変更します。↓こちらに変更前の選択肢テキストをコメントアウトで残します◆jsYiJcqRkk
;@layopt layer=fix visible=false
;[image name="sentaku" layer=29 x=0 y=0 zindex=0 storage="bg/plane_sakura.jpg" time=100]
;[er]
;選択肢用レイヤーを追加
;[position layer=message1 height=550 top=50 left=250 opacity=0]
;[wait time=50]
;@layopt layer=message1 visible=true
;[current layer="message1"]
;回想中です。続きを選択してください。[r][r][r]
;[glink target=*next11_1_2 text="続きをみる" size=20 width=500 x=250 y=150 graphic="select_waku_x300.png" font_color=black]
;[glink target=*next11_bad text="Badエンド1をみる" size=20 width=500 x=250 y=250 graphic="select_waku_x300.png" font_color=black]
;[glink target=*end text="回想を終了する" size=20 width=500 x=250 y=350 graphic="select_waku_x300.png" font_color=black]
[s]
[endif]
;endifを探してバグるので細かに対応　どのみち上でスキップしている
*next11_1_2
;↓テストメニューから動作確認時に「続きを見る」選択する際にも続きを見られるように(↓この条件文を入れるとテストメニューから見る際にはじかれて見られなくなるため)if文をコメントアウトさせていただきます。
;リプレイ時は上の選択肢表示時に条件分岐されているため動作に支障は無いと思います。◆jsYiJcqRkk
;[if exp="f.okeiko_gamen != true && f.event_replay == 'zaizen' && sf.ED_zaizen_bad1 == 1"]
;[er]
;[current layer="message0"]
;[resetfont]
;[iscript]
;$(".sentaku").remove();
;[endscript]
;[cm]
;@layopt layer=fix visible=true
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
@jump storage="zaizen/zaizen_11_1_2.ks" target="*seen_1"
[s]
;[endif]
*next11_bad
;[if exp="f.okeiko_gamen != true && f.event_replay == 'zaizen' && sf.ED_zaizen_bad1 == 1"]
;[er]
;[current layer="message0"]
;[resetfont]
;[iscript]
;$(".sentaku").remove();
;[endscript]
;[cm]
;@layopt layer=fix visible=true
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
@jump storage="zaizen/zaizen_11_bad2.ks" target="*seen_1"
[s]
[endif]


*end0
[if exp="f.okeiko_gamen != true && f.event_replay == 'zaizen' && sf.ED_zaizen_bad1 == 1"]
[cm]
[current layer="message0"]
[resetfont]
[iscript]
$(".sentaku").remove();
[endscript]
@layopt layer=fix visible=true
@jump target=sentaku_to_bad_or_other2
[s]
[endif]

*end
;[if exp="f.okeiko_gamen != true && f.event_replay == 'zaizen' && sf.ED_zaizen_bad1 == 1"]
;[cm]
;[current layer="message0"]
;[resetfont]
;[iscript]
;$(".sentaku").remove();
;[endscript]
;@layopt layer=fix visible=true
@jump target=*seen_end_11_1
[endif]

;============================================================================================================
*sentaku_to_bad_or_other
[if exp="f.okeiko_gamen == true"]
;Evernoteシナリオに書いていただいている選択肢による分岐処理です
*sentaku_to_bad_or_other2
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示選択肢用]
[wait time=10]
#
どうしましょうか？
[glink storage="zaizen/zaizen_11_bad2.ks" text="帰　　る" target="*seen_1" size=45 width="300" x=250 y=50 color=white]
[glink storage="zaizen/zaizen_11_1_2.ks" text="帰らない" target="*seen_1" size=45 width="300" x=250 y=200 color=white]
[wait time=10]
[iscript]
$('.white').css({ 'backgroundImage' : 'url("../play/data/image/select_waku_x300.png")' , 'background-size' : 'center', 'background-position':'contain', 'background-repeat': 'no-repeat' , 'border-style' : 'none','box-shadow':'0px','border-radius':'0px' });
[endscript]
[s]
[endif]
*seen_end_11_1
[イベントシーン終了]
@jump storage="test_zaizen.ks"
[s]
