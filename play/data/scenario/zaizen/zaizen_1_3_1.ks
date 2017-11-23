;=============================================
;イベント８回目【新聞に投稿】１月３週
;=======================お芝居の準備中です==========================================
*replay_zaizen_1_3_1
[stopbgm]
[call target=*1_3_1 storage="zaizen/preload_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸_庭_昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日こそ何かよい進展がありますように……）[p]
#

毎朝、一番最初に新聞を読むのが日課になった。
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【立ち絵】主人公：真剣
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、私に新聞を読ませて頂戴」[p]
#
磯野は頷き、新聞を差し出した。
[autosave]
[wait time=10]
[p]
[whosay name="磯野" color="dimgray"]
「はい、お嬢様、[r]
[sp]今日は少しご安心いただけると思います」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「なにかあったのですね！」[p]
#
私は急いで新聞に目を通した。
[autosave]
[wait time=10]
[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:新聞
[image layer=29 x=0 y=0 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp]現在取り付け騒ぎは全国に広まり、[r]
銀行の遅れた体質を浮き彫りにした。[r]
[sp]好景気により資産が豊富になった銀行は[r]
企業と癒着し、業績が悪化した企業へも[r]
貸し付けを続けた。[r]
また、放漫に投資したことで、不良債権を抱えた。
[autosave]
[wait time=10]
[p]

[sp]さらに富を築き上げた北村商店が倒産し、[r]
大きな騒ぎとなった。 中小銀行にとどまらず[r]
大銀行も取り付け騒ぎとなっている。[p]

[sp]政府は緊急に法律を公布、[r]
一斉に全国の銀行を休業させて[r]
三週間の猶予期間を設けた。またその他細々とした[r]
法律を出し銀行の信頼回復に着手している。[p]
;==========================スクリプト・全画面表示からの復帰準備========================================

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;メッセージをもどします
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

;【立ち絵】主人公：不安
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……これで落ち着くといいのだけど）[p]

#
細々とした法律をみても適格なものだ。[p]

;【立ち絵】主人公：不安
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様はどうしていらっしゃるかしら？[r]
[sp]多分、すごく疲れていらっしゃるのではないかしら）
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目閉じ
[主人公目閉]
（今すぐお会いしたい）[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：真剣
[主人公通常]
（財前様の銀行も対応に追われている。 私に出来ることは[r]
[sp]ないのかしら？）[p]

（新聞の文章から見て取れるけれど、現政府も事態を[r]
[sp]重くみて動いているようだわ）[p]

#
新聞をめくり、他の記事にも目を通していく。[r]
『世の中に一言』という投稿者欄が目に入った。
[autosave]
[wait time=10]
[p]

いつもは読むだけの読者欄について、ふとある考えが浮かんだ。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ハッとする
[主人公驚]
（採用されるかわらないけれど、[r]
[sp]私からも読者欄に投稿してみましょう！）[p]

;【立ち絵】主人公：真剣
[主人公通常]
「磯野、[r]
[sp]出来るだけ沢山の新聞社の新聞を集めてもらえるかしら？」
[autosave]
[wait time=10]
[p]

（一社だけではなく沢山の新聞に出して、国民に[r]
[sp]落ち着くように訴えたいわ！）[p]

[whosay name="磯野" color="dimgray"]
「どうされるのですか？」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口開]
「採用されるかはわかりませんが、読者欄に投稿します」[p]

[whosay name="磯野" color="dimgray"]
[主人公口通常]
「新聞社へのお手紙は、旦那様と、よくご相談の上になさって[r]
[sp]ください」
[autosave]
[wait time=10]
[p]

[fadeoutbgm time=3000]
;【立ち絵】主人公：目閉じ
[主人公眉下げ下]
[主人公目伏柔]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]
#
;========================================================================
[if exp="f.okeiko_gamen == true || f.event_replay == 'zaizen'"]
@jump storage="zaizen/zaizen_1_3_2.ks" target=*seen1
[endif]
[イベントシーン終了]
@jump storage="test_zaizen.ks"
[s]
