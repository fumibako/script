;¥¥¥¥¥¥¥¥イベント5.5手紙イベント¥¥¥¥¥¥¥¥
;[主人公部屋]
;表情がころころ変わる主人公を追加 カットしても？？
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまは、私のことを嫌いになったのでしょうか？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまは、やっぱり私のことを妹みたいなもので……遊び？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(こんなに焼きもきさせて……どういうつもりでしょうか？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(居なくなってしまったのでしょうか？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そんなこと、考えてばかりで)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(つらいです……)[p]
[whosay name="磯野" color="dimgray"]
「[名前]さま、」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
！ [p]「どうぞ、入って頂戴」[p]
[whosay name="磯野" color="dimgray"]
「文矢さまからお手紙が届きました」[p]
;○数日後手紙がかえってくる
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、ありがとう。下がって頂戴」[p]
;/////手紙///
[名前]へ
華織は、いつも笑顔で、自身のことは語りたがりませんだから『人に対して遊んでる』と思われがちです。
ですが、とても人に親切な方です。
迷子の子供がいたら親元に届けてたり、書生の勉強の手伝いをしたり
(それに僕の奥さんの恋愛相談にのってくれました。)
華織は傷つけられることはあっても、誰かを傷つけることはしないと思うんだ。
[名前]は華織のことをどう思う？
どうしたい？
;☆主人公の決意
;○今までの四条を振り返ってキャラのよさを確認する　気遣いができるひとである
;場面転換
;[思い出のイメージ背景]
;[四条微笑み]
;[四条笑顔]
;[四条憂い]
;[歌舞伎座前]
[whosay name=&sf.girl_namae color="#cf5a7f"]
『大事なものではないのですか？』[p]
[whosay name="華織" color="olivedrab"]
『内容は覚えているからいいよ』[p]
;○回想おわり
;回想シーンタグとかはシナリオ中に使うと延々ループの危険ぽいです？
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」
;○決意の表情 セリフはプレイヤーに想像
;¥¥¥¥¥¥¥¥手紙イベントおわり¥¥¥¥¥¥¥¥
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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