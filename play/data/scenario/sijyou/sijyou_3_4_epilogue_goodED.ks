
;/////////////////エピローグ追加分（good_end差分です)///////////
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;テストは一時的にイベントシーン構築つけてます
*ep
[テキスト全画面白文字]

[sp]ーその数年後、
[sp]秋の薄紫の花達が風になびくころ。[p]

;タイトルの曲のほうがいいかも20090303yukidoke

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]


[イベントシーン構築]
;↓四条のモノローグ多いのでこっち？主人公の存在感がなくなってきた
;[イベントシーン構築枠茶色]　

;【背景】[背景_庭]　和室かな？　昔の華族の家は和と洋が隣接しているので？
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[whosay name="華織" color="olivedrab"]
「ふぅ……なかなか決まりませんね」[p]
[主人公ポーズ通常]
[主人公通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうされましたか？ 」[p]
[主人公口ほほえみ]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「華道祭で玄関先に飾る御所花車の構図が決まらなくて……」[p]

[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「少し、休まれませんか？ 華衣さんからのお手紙も来たので」[p]

[主人公目パチ1回]
[wait time=10]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

[whosay name="華織" color="olivedrab"]
「華衣から手紙ですか！ なかなか手紙さえ返してくれなかったのに。[r]
一体、何をしてるのでしょうか……」[p]

[主人公目パチ1回]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
;なにかしらと読み

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「手紙によりますと……
華衣さんは結納式の後に出会った方と四条家の鉱山事業を生かした
発電事業をはじめ……」[p]
[主人公目パチ1回]
[wait time=10]
「事故の少ない交通機関の発展にも貢献しているそうですよ」[p]

[主人公ポーズ通常]

[whosay name="華織" color="olivedrab"]
「そうですか、風の噂で少なからず聞いてましたが、元気にやっているようですね」[p]

[whosay name="華織" color="olivedrab"]
(そのうち、訪ねてくるような仲になれるだろうか？)[p]

[主人公口笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私達も、負けていられませんね」[p]
[whosay name="華織" color="olivedrab"]
「！ そうですね。 休憩はこのあたりにしておきましょうか」[p]

[主人公通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいのですか？」[p]

[whosay name="華織" color="olivedrab"]
「ちょうど[名前]さんの愛らしい顔をみたら、いい構図を思いつきましたから」[p]

[主人公ほほえみ]
[wait time=10]
;止まるの回避
;お母さん度回避案↓ いきなり変わると違和感あるかも
;[イベントシーン構築枠茶色]　
#
[名前]は華織に微笑み返すと、縁側で揺れるネリネの花を見つめた。[p]
;主語が決まってません↑
#
[whosay name="華織" color="olivedrab"]
(手紙の代わりに、華で想いを綴っていくと決めたのだから、もっと精進しなくては)[p]
[wait time=10]
[chara_mod name="bg" storage="bg/sijyou_CGgood.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;主人公をみながら作業再開

[テキスト全画面白文字]
その後、華道家として祖母以上に認められ華織は、[r]
四条御流として更に名が知れ渡るほどに国の文化に貢献することとなった。[p]
その陰には四条を支える[名前]の姿があったという。[p]
;仮でおいてみる
[font color="000000"]
[chara_mod name="bg" storage="bg/sijyou_ed_tegami0.jpg" time=1000]
想いを繋げて綴っていく手紙は、いつしか恋を綴り、人々を幸せにする愛に変わっていく。その手紙は－－[p]
;恋綴りのタイトルに戻るイメージ
;手紙によって大きく変わった四条兄弟が人々に貢献する・・・にもつながる？


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
