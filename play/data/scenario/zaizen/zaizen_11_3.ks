;=============================================
;イベント5.5回目【財前からの手紙】11月３週、
;=======================お芝居の準備中です==========================================
*replay_zaizen_11_3
[stopbgm]
[call target=*11_3 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】[背景_庭]
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公目伏柔]
[主人公眉下げ下]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

;【立ち絵】主人公：微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なんだか最近財前様のお手紙の感じが変わったわ）
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;【SE】紙に触れる（スッ）
;[playse storage=paper_su.ogg loop=false ]
*fumi_toutyaku_zaizen_31
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「先日のパーティについて」　財前 美彬";//←仮タイトルです(お好みで変更してください)
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「先日のパーティについて」";//←仮タイトルです(お好みで変更してください)
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi30");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(30);
f.fumi_list_zaizen_location_fumi.push(30);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi30");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[31]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_zaizen_number=f.fumi_zaizen_number + 1;
f.hensin_list_hairetsu[1][30]=1;
f.para_zaizen_koukando = f.para_zaizen_koukando + f.zaizen_koukando_up_event_fumi;
[endscript]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]初霜の候、貴方にはいよいよご清栄の由と存じます。[r]
[r]
[sp]先日のパーティは思いがけず、醜態をさらし[r]
己の未熟さを覚えました。[r]
[r]
[sp]私は感情的になる事は好みませんが、[r]
たまに吐き出すとすっきりするものですね。[r]
[r]
[sp]母を許そうと思う日が来るとは思っても[r]
みませんでした。
[autosave]
[wait time=10]
[p]
[sp]貴方のお節介な部分が私に移ったのでしょうか。[r]
だとしても、自分でも悪くない変化だと思います[r]
なにか胸の内のもやもやした黒いものが霧散し[r]
自分の外見も悪いものだと感じなくなりました。[r]
[r]
[sp]貴方に礼を言っておきましょう。
[r]
[sp]それでは取り急ぎ失礼します[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　 財前　美彬[p]
[sp][r][r]追伸　これから仕事が忙しくなりそうなので[r]
手紙のお返事は暫く返せなくなるかもしれません[p]
[resetfont]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[1][30] = 0"]
[endif]
[手紙財前読了 fumi_number=]
;名前と追伸が近くアイコンにかかるため改ページ
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公：眉ひそめ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（忙しくなる……なんだか胸騒ぎがするわ。[r]
[sp]良くないことが起こっているのかしら？）[p]
[fadeoutbgm time=3000]
;【立ち絵】主人公：不安
（景気が悪くなりつつあるというだけではないの？）[p]

;=====================================================
[eval exp="sf.event_zaizen_11_3 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
;@jump storage="event.ks" target=*event_owari
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
