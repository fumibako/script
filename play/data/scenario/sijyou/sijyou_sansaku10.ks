;==============================攻略ヒントを教える散策==============================
*sansaku
[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou2.ks"]
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
[wait time=50]
[eval exp="f.event_machi_sijyou[10] = 1"]
[eval exp="sf.event_sijyou_sansaku_10 = 1"]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン終了２]
[endif]

@jump storage="test_sijyou.ks"
[s]
