;================================================================================
;イベント6.6回目【財前への手紙】11月４週イベント６回目翌日
;=======================お芝居の準備中です==========================================
[stopbgm]
;11_4_1からのjump先ラベル。つながりが自然になるように、テキスト調整時に翌日である旨の(全画面?)地の文を入れる予定です(スクリプト担
[freeimage layer = 1]
[wait time=10]
*seen1
[call target=*11_4_2 storage="zaizen/preload_zaizen.ks"]
;【背景】主人公邸_庭_昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[if exp="f.okeiko_gamen!=true"]
[イベントシーン構築ボタン無し版]
[endif]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
――翌日。
[autosave]
[wait time=10]
[p]
;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、今日の新聞は届いているかしら？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
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
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]
[whosay name="磯野" color="dimgray"]
「はい、もうお聞き及びと存じますが[r]
[sp]町では多くの銀行が、倒産するという噂で持ち切りです。[r]
[sp]財前様の銀行はいかがでしょうか？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：不安
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今の所は大丈夫だそうです」[p]

（けれど何があるかわからないわ）[p]

;================================================================================
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
;==========================スクリプト・全画面表示の間に設定　新聞===============================
#
;【テキスト全画面】;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=1000]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
[sp]実際にはまだ倒産してなかったが、大蔵大臣の[r]
「志井銀行がとうとう倒産した」[r]
という発言は波紋を呼び[r]
海軍高官の贈賄事件から持ち直しかけていた内閣を[r]
総辞職に追い込む形になった。
[autosave]
[wait time=10]
[p]

[sp]町では多数の銀行が倒産するというデマが[r]
飛び交い、取り付け騒ぎに及び、[r]
混乱し営業を停止する銀行も少なくない。[r]
また暴動に発展し憲兵が動く場合もあり、[r]
ガラスを割られるなどの被害も出ている。[p]

[sp]政府もこの騒ぎを早急に治める対策について[r]
話し合いが行われているが[r]
この問題は次の内閣に持ち越しになりそうな見通しだ。[r]
当面混乱することが予想される。[p]

[sp]新聞各社も情報が錯乱し、[r]
当社でも先走った記事が出たことを深く謝罪致します。[r]
特に各銀行の方々には迷惑をおかけしました。[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
[主人公憂い]
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
[whosay name=&sf.girl_namae color="#cf5a7f"]
（この記事では皆落ち着けるはずがない……。[r]
[sp]当分銀行は混乱するし、 銀行が休めば個人も会社も[r]
[sp]支障をきたすわ）
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：真剣
[主人公目閉じ]
「財前様にお手紙を書きます！」[p]

（銀行のお客様への対応が大変だわ。[r]
[sp]それに内閣が暫く機能しないなら、ますます状況は悪くなる)[p]

;コメントアウトのままでいいのでしょうか（スクリプト担当_2
;【SE】ペンで書く
[playse storage=paper_open.ogg loop=false ]
;【SE】ペンで書く
;[playse storage=paper_open.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公　通常
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「このお手紙を出してくれますか？」[p]

[whosay name="女中"]
「かしこまりました、財前様へですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 真剣
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、よろしくお願いします」[p]

;【立ち絵】主人公：困り
  [主人公憂い]
（これは大きな問題だわ）[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：真剣
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「でも、きっと財前様なら道を切り開かれるわ」[p]
*seen_end1
;======================================================================
[eval exp="sf.event_zaizen_11_4 = 1"]
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]
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
