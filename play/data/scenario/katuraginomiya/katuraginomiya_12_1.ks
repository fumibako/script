;7.5回目イベント
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「葛城宮殿下は[r]
[sp]手紙を送るといわれたのですよね？[r]
[sp]もうあれからひと月ですが」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「忙しくされてるのよ[r]
[sp]責任感の強いお方だから[r]
[sp]水面下で動いて安定させようとしているのだわ[r]
[sp]殿下を信じていますわ」[p]

[whosay name=磯野 color="dimgray"]
「では暫く[r]
[sp]お手紙は来ないかも[r]
[sp]知れないですね」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公 通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[主人公口通常]
「？　[r]
[sp]それはどういう意味かしら？」[p]

#
磯野は困ったように新聞を差し出す[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[whosay name=磯野 color="dimgray"]
「これをご覧ください」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[テキスト全画面白文字無背景]
;[新聞]
[chara_mod name="bg" storage="bg/test_bg_sinbun.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[sp]内閣不信任決議案が可決し内閣総辞職に！[r]
[r]
[sp]海軍汚職の全貌が明らかになり[r]
海軍出身の議員辞職、[r]
大幅な海軍予算の削減に行ったものの[r]
大蔵大臣の失言もあり[r]
貴族院、衆議院、両院関係は不調和となった。[r]
[r]
[sp]国家予算案は不成立、[r]
衆議院で内閣不信任決議案が可決し[r]
内閣は総辞職に追い込まれた。[r]
 
[sp]　　　　　　　　　　　　　　　　　　　　　　　[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[イベントシーン構築]
[背景_庭]
[主人公ポーズ通常]
[主人公困り]
[主人公伏目パチ1回]

;【立ち絵】主人公 困り
[主人公眉困り]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（事態が好転すると勝手に信じていたわ[r]
[sp]現実はそうではないのね[r]
[sp]けれど諦めなければまた道は開けるかしら[p]

;【立ち絵】主人公 困り
[主人公困り]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下にお手紙を書きます[r]
[sp]さすがにこの結果は落ち込まれていると思いますもの。[r]
[主人公目閉じ]
[主人公口通常]
[sp]私は殿下は克服されると信じています」[p]


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
