;=============================================
;イベント6回目【藤枝の事を考える】9月1週、誰も選ばないを選択
;=============================================
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

;【立ち絵】主人公：目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（藤枝様の事が気になるわ。こんな気持ちでは誰ともお会いできない）[p]

;【立ち絵】主人公：決意
今、文通している相手の誰とも婚約できなくなっても構わない……。[r]
私は覚悟を決め、スッと姿勢を正して息を整えた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、私はまだ学ぶべきことが沢山あります[r]
[sp] 私にはまだ結婚は考えられません」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前] にはまだ早かったか……。[r]
[sp] そういえば最近はお琴のお稽古に熱心なようだね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
「ええ！　お琴を極めたいと思っております」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「それは良いことだな。お稽古を頑張るなら[r]
[sp] また良縁も来るだろう。精進しなさい」[p]

;【立ち絵】主人公：笑顔
「ありがとうございますお父様！　」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「私たちは[名前] に構ってやれてないし
[sp] [名前] にも手紙を交わしたい年頃で
[sp] 若いうちの方が良縁に恵まれると思ったが
[sp] [名前] の気持ちを尊重しよう」[p]

*scene3
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。精一杯努力いたします」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「お稽古が楽しいのはいい事だ今を大切にしなさい。[r]
[sp] だが今交わしている方の都合もあるので[r]
[sp] 今交わしているお手紙の相手とはもう縁はないが[r]
[sp] [名前] はそれでもいいのかね？　」[p]

;【立ち絵】主人公：目閉じ思案
[whosay name=&sf.girl_namae color="#cf5a7f"]
（おそらくこのまま結婚したら後悔するわ。[r]
[sp]私は誰よりも藤枝様の事を想っている）[p]

;【立ち絵】主人公：決意
「はい。今はお稽古を頑張りたいと思います」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「わかった」[p]

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

;【立ち絵】主人公：目閉じ困り眉
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せっかく長い間楽しい時間を過ごさせて頂いたのに心苦しいけれど、こればっかりは仕方ないわね）[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せめて、今まで以上に心を込めて別れの手紙を書こう。もしどこかでお会いすることがあっても笑顔でお話できるように）[p]

;個別ルート前夜終了

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_hujieda.ks"
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
