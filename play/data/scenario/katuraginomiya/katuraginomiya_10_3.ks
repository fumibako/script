;6.5回目イベント　
;葛城宮から手紙　
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_10_3
[stopbgm]
[call target=*10_3 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公部屋昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen0
[whosay name=磯野 color="dimgray"]
「お嬢様、葛城宮殿下からのお手紙でございます」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

#
磯野は憂いた表情で私に手紙を差し出す。[r]
彼も汚職事件を重く受け止めているようだった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公憂い]
[主人公口ほほえみ]
「ええ、ありがとう」[p]
[主人公伏目パチ1回]
（多分良くないことが書かれてある)[p]
[主人公目閉]
（何が書いてあっても現実を受け入れるわ。 殿下をお支えしたいと[r]
[sp]思ったもの）[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_katuraginomiya_30
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 話がしたい 」　葛城宮 晴仁";//←仮タイトルです。お好みに変更してください
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「 話がしたい 」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi28");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(29);
f.fumi_list_katuraginomiya_location_fumi.push(29);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi28");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[30]=1;
f.katuraginomiya_fumi_toutyakumachi_shumi=-1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_katuraginomiya_number=f.fumi_katuraginomiya_number + 1;
f.hensin_list_hairetsu[3][29] = 1;
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + f.katuraginomiya_koukando_up_event_fumi;
[endscript]
[endif]

[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]仲秋の候、[名前]殿は息災であろうか？[r]
[r]
[sp]つい先日君と一緒に三宮邸を散歩し[r]
夢を語ったのが遠い昔のようだ。[r]
[r]
[sp]君ももう海軍の汚職事件を知っているだろう？[r]
[sp]軍人が権力を持ち政治に関わるのは良くないことだ。[r]
軍国主義に走る危険性がある。[p]
[sp]しかしこの時代皇族に生まれた多くが[r]
軍人になるのもあって、私も軍人でもある。[r]
[r]
[sp]私も政治に関わるべきではなく、辞職するつもりで[r]
いる。[r]
[r]
[sp]君に話しがある。[r]
[r]
[sp]近いうちにまた会おう。[r]
[sp][r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[3][29] = 0"]
[endif]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公　困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「辞職！」[p]
[主人公目パチ1回]
（やはり落ち込んでいられるのね。 こんな時こそ傍にいてお支えしたい)[p]

[主人公目閉じ]
(殿下が自信を取り戻せるように……)[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字[テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】会議室（裏で画面構成）
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/kaigisitu.jpg" wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen1
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
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen2
#
汚職事件を理由に今原中将をはじめ、軍国主義の者は除名処分が[r]
検討された。[p]
[autosave]
[葛城宮目を閉じる]
[whosay name="葛城宮　晴仁" color=%mp.color]
「彼らは、汚職事件で墓穴を掘りました。[r]
[sp]早急に対応したこともあって、内閣は総辞職の危機も回避されつつ[r]
[sp]あります」[p]

[whosay name="首相" color=%mp.color]
「貴殿まで辞職することはありません。　なぜ辞職願を提出を？」[p]

[葛城宮ため息]
[whosay name="葛城宮　晴仁" color=%mp.color]
「私も軍人で政治に関わるべきではないのです」[p]

[whosay name="首相" color=%mp.color]
「しかし、[r]
[sp]貴殿も政治家として法を変え、国を安定させたいと願い、[r]
[sp]多くの法案を制定しようとしていました」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮憂い]
「ですが、それは私の役目ではありません」[p]

[whosay name="首相" color=%mp.color]
「貴殿を見込んでいました。[r]
[sp]貴殿は指導者としての才能があります。　まだ辞職願の受理は[r]
[sp]保留します」[p]


[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「首相！[r]
[葛城宮微笑み]
[sp]お気持ちは嬉しいですが、今は、軍国主義に走る者たちを変えたいと[r]
[sp]思っています」[p]

[whosay name="首相" color=%mp.color]
「健闘を祈っています」[p]

[葛城宮憂い]
#
夢を持っていた。　今、志半ばで終わろうとしている。[r]
悔いはある。　それでも自分が決めた事だから潔く身を引こう。[r]
……そして彼女も、こんな私に付き合う必要はない。[p]

*seen3
[eval exp="sf.event_katuragi_10_3 = 1"]
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]

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
