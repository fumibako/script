;=============================================
;イベント1回目【財前を選択】9月1週、
;=======================お芝居の準備中です==========================================
*start
[stopbgm]
[call target=*9_1 storage="zaizen/preload_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：夜
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*replay_zaizen_9_1
*replay_zaizenzaizen_9_1
#
鈴虫が鳴き、夏の終わりと秋の始まりを告げている。[p]
;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お手紙を交わしている相手の中で、一番興味を惹かれるのは[r]
[sp]財前様だわ）
[autosave]
[wait time=10]
[p]

;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok0]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no0]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok0
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no0
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;------------------------------------------------

;【立ち絵】主人公：目閉じ思案
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私を試すようなお手紙が多いけれどそれでも、[r]
[sp]それは率直に真剣に結婚相手を探しているからだわ。[r]
[sp]とても真面目な方なのでしょう）[p]
;真剣に　だけでもいいかも

;◆jsYJcqRkkさん変更点
;（私を試すようなお手紙が多いけれどそれでも、[r]
;[sp]それは率直に真剣に結婚相手を探しているからだわ。[r]
;[sp]とても真面目な方だと分かった）[p]
;原文
;私を試すようなお手紙が多いけれどそれでも、[r]
;[sp]それは率直に真剣に結婚相手を探しているから[r]
;[sp]とても真面目な方だと分かった）[p]


;【立ち絵】主人公：決意
[主人公目を開く]
元々気持ちは固まりつつあったのだ。[r]
[if exp="tf.common_9_1_ninzuu != 1"] 
;↓2人以上と文通している場合のみ表示 
これ以上悩んでは他の方に 
[endif] 
失礼になるだろう。[p] 

「……！ そうか 
[if exp="tf.common_9_1_ninzuu == 1"] 
」 [p]
[else] 
;↓2人以上と文通している場合のみ表示 
、美彬君か」 [p]
[endif] 
;【立ち絵】主人公：通常
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]にとって、美彬君はどんな人物なのかね？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手紙からは、お仕事について真剣に取り組み[r]
[sp]努力してる様子がうかがえます。[r]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[sp]読むたびに、私も自分を高めようと思いました」
[autosave]
[wait time=10]
[p]

;黒田シナリオからお借りしました
;【このセリフのみ分岐】淑女度一定値以上の場合
[if exp="f.para_shujinkou_shukujodo >= 40"]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それで最近お稽古に励んでいたのか」[p]
[endif]
[if exp="f.para_shujinkou_shukujodo < 40"]
;【このセリフのみ分岐】淑女度一定値未満の場合
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それは良いことだな」[p]
[endif]

;以下共通セリフに戻る
[whosay name=&sf.father_name color="DarkSlateBlue"]
「美彬君は真面目で冷静沈着と聞くなぁ。[r]
[sp][名前]に良い影響を与えてくれるのだね」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

「お父様。 私は財前様とお手紙を交わすようになって[r]
[sp]自分についても、深く考えるようになりました」[p]


[whosay name=&sf.father_name color="DarkSlateBlue"]
「ほう、自分を振り返るのはいいことだ」
[autosave]
[wait time=10]
[p]

*scene3
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。財前様が色々な物事を丁寧に書いてくださるので[r]
[sp]お稽古ごとにしても、もっと知りたくなって、極めようと思いました」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「それは何よりだなぁ。近ごろの[名前]は、活き活きとお稽古しているね」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：笑顔頬染め
[主人公笑顔]
[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。色々と学んで、財前様のお力になれたら……[r]
[sp]なんて、思ってしまうのです。[r]
[sp]お手紙だけではなく、実際にお会いしてみたいです」[p]

[主人公通常]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか。では、早速見合いの準備を進めよう。[r]
[sp][名前]。美彬君に決めて、本当に良いのだね？」
[autosave]
[wait time=10]
[p]

「磯野から聞いていると思うが、美彬君の母君は[ruby text="ド"]独[ruby text="イツ"]逸の方だ。[r]
[sp]大変な苦労をして、少し神経質になったとも聞いている」
[autosave]
[wait time=10]
[p]

#
お父様は少し不安そうに言葉を継ぐ。[r]
この国は閉鎖差的な事もあって外国人を妻に持つことは歓迎されていない。[p]

;【立ち絵】主人公：目閉じ思案
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様は本当に苦労されてきたんだわ）[p]
（私にお支えできるかしら？[r]
[sp]けれど一番知りたいと思ったのは財前様……お力になりたい）
[autosave]
[wait time=10]
[p]

;↓効果：無し(通常) 
[主人公効果消]

;【立ち絵】主人公：決意
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口開]
「はい。財前様に、決めます」[p]
[主人公口通常]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「わかった。[r]
[sp]この事はすぐに先方に伝えよう。[r]
[sp][名前]からも手紙を送っておくといい」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：通常
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、わかりました」[p]
#
話が終わり、お父様を見送るために立ち上がる。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「お休み、[名前]」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「おやすみなさい」[p]

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
;SEが重なるので一か所のみ設定
;【SE】落ち着いた足音（フェードアウト）[playse storage=isono_out.ogg loop=false ]

;↓【仮】テストプレイヤーさんに見ていただくには、長いバージョンが良いかな？と仮に入れてみます
[eval exp="f.para_kuroda_koukando = 20"]
;↑【仮】ここまで。実装時には除きます
;【分岐】他攻略対象の好感度が高い場合
[if exp="f.para_kuroda_koukando > 15 || f.para_katuraginomiya_koukando > 15 || f.para_hujieda_koukando > 15 || f.para_sijyou_koukando > 15"]

*scene4
;【立ち絵】主人公：ふぅ
[主人公ふぅ閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ、これでもう後戻りはできないわ）[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだ、他の方にも手紙を送らなければ）[p]

;【立ち絵】主人公：目閉じ困り眉
[主人公眉困り]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せっかく長い間楽しい時間を過ごさせて頂いたのに心苦しいけれど[r]
[sp]こればっかりは仕方ないわね）[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：通常
[主人公眉下げ下]
[主人公目閉じ]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せめて、今まで以上に心を込めて別れの手紙を書こう。[r]
[sp]もしどこかでお会いすることがあっても笑顔でお話できるように）[p]
[endif]
*seen_end
;個別ルート前夜終了
[if exp=" f.okeiko_gamen == true"]
[eval exp="f.zaizen_au = 1"]
[eval exp="f.event_oaite_mitei = 0"]
;共通お相手決定フラグ
[eval exp="f.omiai_kettei = 1"]
[endif]
[eval exp="sf.event_zaizen_9_1 = 1"]
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
