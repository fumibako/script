=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*12_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】ﾌﾟﾛﾛーｸﾞ
[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
[eval exp="f.haikei_credit=' '"]
[プリロード画面消去]
;=====================ここからお芝居の幕引きです===============================
*seen_0
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】黒茶・和紙風背景に白文字[テキスト全画面白文字] ;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風_暗
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
;【背景】執務室 
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situmu.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

―― 同日[r]
　葛城宮家執務室[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
;[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[イベントシーン構築ボタン無し版枠茶色]
;【背景】ttps://www.flickr.com/photos/28752865@N08/5741972861/
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[葛城宮ベース軍服]
;[葛城宮ポーズ通常]
[葛城宮通常]
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[cm]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
;背景執務室　裏で構成済
#
軍の事後処理の書類読み、国会での意見陳述の草案作成に[r]
あたっている時だった。[p]

;【SE】ドアノック音(トントン)
[playse storage=door-knock.ogg loop=false ]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮横目]
「入っていい！」[p]

[whosay name="秘書" color=%mp.color]
「失礼いたします」[p]
;執務室に入ってきた秘書は憂いを帯びた表情をしていた。[p]
#
彼は、憂いを帯びた表情をしていた。[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮口開]
「何か用でも？」[p]

#
彼は、元侍従であり、フランス大使でもあり、[r]
秘書をかってでてくれた私の一番の理解者である。[p]

[whosay name="秘書" color=%mp.color]
「殿下、お話しがあります。[r]
[sp]……私も歳を取り、もう殿下を支える力はありません」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮驚き]
「何を言っている[r]
[sp]柏木元大将の不正を追求出来たのは、お前の力でもある」[p]

[whosay name="秘書" color=%mp.color]
「はい、あの事件で痛感しました。[r]
[sp]私は、証拠一つ掴むのがやっとでした。[r]
[sp]明確な証言を得られたのは殿下の人望です」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮真剣]
「証拠をつかんだだけでも十分だ。[r]
[sp]そこから芋づる式に不正を暴けたのだから」[p]

#
しかし彼は、かぶりをふり真剣に言った。[p]

[whosay name="秘書" color=%mp.color]
「いえ、私は若い頃よりも体力も落ち、頭の切れも悪くなりました。[r]
[sp]そして殿下も、もうご立派にやっていけます」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮憂い]
「本気……なのだな」[p]

[whosay name="秘書" color=%mp.color]
「はい、いずれ殿下には考えを同じくする者も[r]
[sp]信頼できる者も出るでしょう。[r]
[sp]これ以上衰える前に引退したく思っております」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮ため息]
「幼い頃からお前を信頼していた。 だがお前の意思も尊重しよう」[p]

[whosay name="秘書" color=%mp.color]
「はい、後任の者がまだいませんが、今の殿下なら[r]
[sp]きっとうまくやっていけるでしょう。[r]
[sp]守る者が出来れば、本当に強くなれる」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮驚き ]
「どういう意味だ？」

[whosay name="秘書" color=%mp.color]
「ご婚約者様の事です。[r]
[sp]殿下はあの方の事もあって、随分と落ち着かれました」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮目伏せ照れ]
「……そうだな」[p]

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
