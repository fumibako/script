;==============================攻略ヒントを教える散策==============================
*sansaku
[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[wait time=10]
[背景_町]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================================================================================
#
町に出た。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は橋に行ってみようかしら？)[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[主人公目閉]
[暗転１]
[背景_橋]
[主人公目通常][r]
#
『見返り橋』にやってきた。[r]
橋の上で川の流れを見ながら、溜息を艶やかにつく[r]
都会的な風貌の淑女がいる。[p]
[whosay name="都会的な淑女"]
「噂に聞く"華麗なあの方"にぜひ会ってみたいわ[r]
[sp]私の手紙の相手も、あんな素敵な方だったらよかったのに」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうされたのかしら？）[p]
[whosay name="都会的な淑女"]
「やっぱり、"華道"のお稽古をもっと精進して、名も売れれば、[r]
[sp]いつか、あの方に会えるのでしょうか？」[p]
;主人公が精進すればNE！
[whosay name="都会的な淑女の家令"]
「お嬢様！[r]
[sp]お稽古に行く時間に何をなされているのでしょうか？」[p]
[whosay name="都会的な淑女"]
「運命なんて川の流れのよう。[r]
[sp]それでも、運命を"楽しむには自分を磨く"しかないわね」[p]
;もう少しヒントらしいものに
#
川の流れを名残惜しいように見つめると[r]
都会的な風貌の淑女は、家令に引っ張られていった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
（……私も、帰りましょうか）[p]
[eval exp="sf.event_sijyou_sansaku_10 = 1"]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン終了２]
[endif]

@jump storage="test_sijyou.ks"
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
[メッセージウィンドウ上ボタン表示]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
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
