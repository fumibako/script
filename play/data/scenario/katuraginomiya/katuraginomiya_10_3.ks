;6.5回目イベント　
;葛城宮から手紙　
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_3 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】主人公部屋昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[whosay name=磯野 color="dimgray"]
「お嬢様、[r]
[sp]葛城宮殿下からの手紙でございます」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

#
磯野は憂いた表情で私に手紙を差し出す。[r]
汚職事件を重く受け止めているようだった。[p]
地のの変化では…暫定

[主人公ポーズ通常]
[主人公憂い]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、ありがとう」[p]
[主人公伏目パチ1回]
（多分良くないことが書かれてある)[p]
[主人公目閉]
(何が書いてあっても現実を受け入れるわ[r]
[sp]殿下をお支えしたいと思ったもの）[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]　仲秋の候　[名前]殿は息災であろうか？[r]
[r]
[sp]つい先日君と一緒に三宮邸を散歩し[r]
夢を語ったのが遠い昔のようだ。[r]
[r]
[sp]君ももう海軍の汚職事件を知っているだろう？[r]
[sp]軍人が権力を持ち政治に関わるのは[r]
良くないことだ軍国主義に走る危険性がある。[p]
[sp]しかし私自身もこの時代皇族に生まれた多くが、[r]
軍人になるのもあって私も軍人でもある。[r]
[r]
[sp]私も政治に関わるべきではなく、[r]
辞職するつもりでいる。[r]
[r]
[sp]君に話しがある。[r]
[r]
[sp]近いうちにまた会おう。[r]
[sp][r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[主人公困り]
[主人公目パチ1回]
;【立ち絵】主人公　困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「辞職！」[p]

（やはり落ち込んでいられるのね。[r]
[sp]こんな時こそ傍にいてお支えしたい)[p]
[主人公目閉じ]
(殿下が自信を取り戻せるように……)[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字[テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】会議室（裏で画面構成）
[chara_mod name="bg" storage="bg/I9IhvvVdPo/kaigisitu.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
与党会議室[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更　ボタンなしで
[イベントシーン構築ボタン無し版枠茶色]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;!!!幕間に設定!!!!
;【立ち絵】葛城宮　怒り
[葛城宮ベース軍服]
[葛城宮通常]
;表示
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================

#
汚職事件を理由に今原中将をはじめ、[r]
軍国主義の者は除名処分が検討された。[p]

［葛城宮目を閉じる］
[whosay name="葛城宮　晴仁" color=%mp.color]
「彼らは、汚職事件で墓穴を掘りました。[r]
[sp]早急に対応したこともあって[r]
[sp]内閣は総辞職の危機も回避されつつあります」[p]

[whosay name="首相" color=%mp.color]
「貴殿まで辞職することはありません。[r]
[sp]なぜ辞職願を提出を？」[p]

［葛城宮ため息］
[whosay name="葛城宮　晴仁" color=%mp.color]
「私も軍人で政治に関わるべきではないのです」[p]

[whosay name="首相" color=%mp.color]
「しかし、貴殿も[r]
[sp]政治家として法を変え国を安定させたいと願い、[r]
[sp]多くの法案を制定しようとしていました」[p]

［葛城宮憂い］
[whosay name="葛城宮　晴仁" color=%mp.color]
「ですが、それは私の役目ではありません」[p]

[whosay name="首相" color=%mp.color]
「貴殿を見込んでいました。[r]
[sp]貴殿は指導者としての才能があります。[r]
[sp]辞職願はまだ受理は保留します」[p]

［葛城宮驚き］
[whosay name="葛城宮　晴仁" color=%mp.color]
「首相！[p]
［葛城宮微笑み］
[sp]お気持ちは嬉しいですが今は、[r]
[sp]軍国主義に走る者たちを変えたいと思っています。」[p]

[whosay name="首相" color=%mp.color]
「健闘を祈っています」[p]

［葛城宮目を閉じる］
#
夢を持っていた。　今志半ばで終わろうとしている[r]
悔いはあるそれでも自分が決めた事だから潔く身を引こう[r]
……そして彼女もこんな私に付き合う必要はない[p]

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
