;=============================================
;イベント1回目【財前を選択】9月1週、
;=============================================
;【背景】[背景_庭]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

;【立ち絵】主人公：目閉じ[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お手紙を交わしている相手の中で[r]
一番興味を惹かれるのは財前様だわ）[p]

;【立ち絵】主人公：目閉じ思案
（私を試すようなお手紙が多いけれどそれでも、[r]
[sp] それは率直に真剣に結婚相手を探しているから[r]
[sp] とても真面目な方だと分った）[p]

;【立ち絵】主人公：決意
元々気持ちは固まりつつあったのだ、[r]
[sp] これ以上悩んでは他の方に失礼になるだろう。[r]
[sp] 私は覚悟を決め、スッと姿勢を正して息を整えた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、私は財前様にお会いしたいと思います」[p]

*scene2
[whosay name=&sf.father_name color="DarkSlateBlue"]
「……！　そうか、美彬君か」[p]

;【立ち絵】主人公：通常
「[名前]にとって、美彬君はどんな人物なのかね？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手紙からは、仕事について真剣に取り組み努力してる様子がうかがえます。[r]
;【立ち絵】主人公：ほほえみ
読むたびに、私も自分を高めようと思いました」[p]

;【このセリフのみ分岐】淑女度一定値以上の場合
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それで最近お稽古に励んでいたのか」[p]

;【このセリフのみ分岐】淑女度一定値未満の場合
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それは良いことだな」[p]

;以下共通セリフに戻る
「美彬君は真面目で冷静沈着と聞くなぁ。[r]
[sp] [名前]に良い影響を与えてくれるのだね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
「はい」[p]

「お父様。私は財前様とお手紙を交わすようになって自分についても[r]
[sp] 深く考えるようになりました」[p]


[whosay name=&sf.father_name color="DarkSlateBlue"]
「ほう、自分を振り返るのはいいことだ」[p]

*scene3
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。財前様が色々な物事を丁寧に書いてくださるので……[r]
[sp] お稽古ごとにしても、もっと知りたくなって、極めようと思いました」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「それは何よりだなぁ。近ごろの[名前]は、活き活きとお稽古しているね」[p]

;【立ち絵】主人公：笑顔頬染め[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。色々と学んで、財前様のお力になれたら……[r]
[sp]なんてつい、思ってしまうのです。[r]
[sp]お手紙だけではなく、実際にお会いしてみたいです」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか。では、早速見合いの準備を進めよう……[r]
[sp] [名前]。美彬君に決めて、本当に良いのだね？」[p]

;【立ち絵】主人公：目閉じ思案[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（正直今の気持ちだけでは不安だわ。[r]
[sp]けれど一番知りたいと思ったのは財前様……）[p]

;【立ち絵】主人公：決意
「はい。財前様に、決めます」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「わかった。[r]
[sp]この事はすぐに先方に伝えよう。文奈からも手紙を送っておくといい」[p]

;【立ち絵】主人公：通常
「はい、わかりました」[p]
#
話が終わり、お父様を見送るために立ち上がる。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「お休み、[名前]」[p]

;【立ち絵】主人公：ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「おやすみなさい」[p]

;【SE】襖を閉じる（ゆっくり）
;【SE】落ち着いた足音（フェードアウト）

*scene4
;【立ち絵】主人公：ふぅ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ、これでもう後戻りはできないわ）[p]


;【分岐】他攻略対象の好感度が高い場合
;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだ、他の方にも手紙を送らなければ）[p]

;【立ち絵】主人公：目閉じ困り眉[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せっかく長い間楽しい時間を
[sp] 過ごさせて頂いたのに心苦しいけれど、
[sp] こればっかりは仕方ないわね）[p]

;【立ち絵】主人公：通常[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せめて、
[sp] 今まで以上に心を込めて別れの手紙を書こう。[r]
[sp] もしどこかでお会いすることがあっても[r]
[sp] 笑顔でお話できるように）[p]

;個別ルート前夜終了

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
会話ウィンドウ消去
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
