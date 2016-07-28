;¥¥¥¥¥¥¥¥エンディング¥¥¥¥¥¥¥¥
;////////☆その後の話 、 ファイナル・イメージ（本物の変化を見せる場）/////////
;春 3月
;○四条家の挨拶
;[青空]桜のエフェクト？
;兄とその奥さんに見守られて結納(文字のみ)
;【背景】青空に桜
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[eval exp="f.haikei_credit='photo　by　djNIV　https://www.flickr.com/photos/nivpic/4496431348/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]


#文矢の奥様[p]
「おめでとうございます」
[whosay name=文矢 color="#538a8a"]
「[名前]、華織おめでとう」[p]
[whosay name="華織" color="olivedrab"]
「[名前]とあの時再会して、本当によかった」[p]
;△お見合いのことです
[whosay name="華織" color="olivedrab"]
「[名前]、大切にします」[p
;場所変更？
#華衣
「いつかそのような方と出会えるのかな……」[p]
[whosay name="四条親戚" color="#807070"]
「きっと貴方にも巡り会えますよ 華衣さんにも大事な人が 」[p]
;兄のセリフをいう
#華衣
「あなたは、」[p]
;ここで、イベントスチル？
# ;ナレーターモノローグ
『幸せは信じれば巡ってくる
それは案外気づかない近い場所にあるかもしれません』

;結納衣装、女性和装、男性軍服風でしょうか？、または幼い頃の2人？絵師さんにまかせます アドバイスありがとうございます。
;○プレイヤーに幸せの予感を残しておわり、紡いでいく話。
;幸せは信じれば巡ってくる それは案外気づかない近い場所にあるかもしれません というテーマかな
;2人も近いところにいましたけど、お見合いしなければ関係性は変わらなかった？

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
