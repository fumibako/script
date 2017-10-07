;///////散策案5 乳母日傘 フラグ回収///////
;見なくてもいいけど、見ると良いくらいのもの
;時期 事件解決前 園遊会後
;時期 事件解決後 セリフの変化
;内容、四条母親とお付きの人？が華衣に対して非常に過保護的でダメ子扱いしている。それに対して華衣はイヤイヤしている。
;主人公は何だろう？といって去る…だけのイベント。
;何故、華織より先に結婚できたのか？→イベント11回想より、華衣の婚約者についてのセリフ、祖父「お情けの相手」から分かるようにする、母親の気持ちを分かるようにする
;母親 期待していない,言葉遣いを改めてほしい,お稽古も放り出さないで、新しい相手とお見合いしてほしい
;華衣 (やる事はやったので)１人になりたい
;=======================お芝居の準備中です==================================
*sansaku
[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[wait time=10]
[背景_町]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
町に出た。[r]
どこかの御令息と、その方を囲むご婦人方が、落ち着きなく街を歩いている。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

;時期でセリフの変更
[whosay name="四条母"]
[if exp="f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3]
「華衣、ダメよ！勝手に何処かに行っては！」
;お稽古は終わっているが過保護
[else]
「[華衣]、ダメよ！お稽古も放り出して、勝手に何処かに行っては！」
;事件未解決
[endif]
[p]
[whosay name="四条母"]
「あなたって、私達が見ていないと何にも出来ないのだから」[p]
[whosay name="四条家付き人"]
「そうですわ、[華衣]様」[p]
[whosay name="四条母"]
「ああ、それから[華衣]、お[ruby text=じ]祖[ruby text=ぃ]父様が選んだ方への手紙は書いたの？  [r]
[sp]やっぱりね、あなたが選ぶより、お祖父様が選んだ方のほうが安心だと[r]
_　思うの！」
[p]

;時期でセリフの変更

[if exp="exp="f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3]
[whosay name="四条 華衣"]
「うるさい、俺は自分で何とかしたいの！」
[else]
[whosay name="見知らぬ御令息"]
「うるさい、俺はひとりになりたいの！」
;事件未解決　見合い　園遊会後なので知っている
[endif]

[p]

[whosay name="四条母"]
「それから、言葉遣いも！ [華衣]、聞いてるの？！」[p]
[whosay name="四条母"]
「ああ、またお義父様に怒られてしまうわ。[r]
[sp]早く落ち着いてもらわないと……」[p]
;四条祖父のこと
#
;セリフは適当。時期でセリフの変更
[whosay name=&sf.girl_namae color="cf5a7f"]
[if exp="f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3]
([華衣]さん、少し変わられましたね)
[else]
(何だったのでしょうか？)
[endif]
[p]

[eval exp="sf.event_sijyou_sansaku_5 = 1"]
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
