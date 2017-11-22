=======================お芝居の準備中です==================================
[stopbgm]
[call target=*12_1b storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】ﾌﾟﾛﾛーｸﾞ
[bg method='crossfade' storage="../fgimage/bg/bg_prologue_dark.jpg" time=600 wait=true]
[eval exp="f.haikei_credit=' '"]
[プリロード画面消去]
;=====================ここからお芝居の幕引きです===============================
*seen_0
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字 ;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風_暗
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]
;【背景】;背景与党会議室
;【背景】会議室（裏で画面構成）
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/kaigisitu.jpg" time=600 wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

――その頃[r]
[r]
[sp]　　　政府与党会議室。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更　ボタンなしで
[イベントシーン構築ボタン無し版枠茶色]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;!!!幕間に設定!!!!
;【立ち絵】葛城宮　通常
[葛城宮ベース軍服]
;[葛城宮ベース私服]
[葛城宮通常]
;表示
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================

#
持ち直しかけていた内閣だったが、大蔵大臣の失言により、[r]
衆議院の心証が悪くなり総辞職に追い込まれた。[p]

[whosay name="首相" color=%mp.color]
「暗躍していた柏木元大将の不正を暴き、海軍、陸軍の将校への[r]
[sp]働きかけを感謝しています」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮ため息]
「いえ、当然のことをしたまでです。  しかし、残念な結末になりました」[p]

[whosay name="首相" color=%mp.color]
「ええ、もう内閣総辞職は覆せないでしょう。[r]
[sp]今、誰を後任に据えるかの段階です。[r]
[sp]金融不安な今、早急に決めないといけません」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮憂い]
「……そうですね」[p]

[whosay name="首相" color=%mp.color]
「軍将校の説得に当たった、実績と手腕を見て、貴殿に頼みたいことが[r]
[sp]あります」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮真剣]
「はい。 私にできる事でしたら」[p]

[whosay name="首相" color=%mp.color]
「国民にラヂオ演説をして頂きたいのです！」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮驚き]
「！！」[p]

[whosay name="首相" color=%mp.color]
[葛城宮口通常]
「何をどう訴えるべきか……[r]
[sp]貴殿なら力強く訴えられるでしょう。　この国には改革が必要です」[p]

[whosay name="葛城宮 晴仁" color=%mp.color]
[葛城宮真剣]
「はい！[r]
[sp]これから成すべきことを国民に訴え、国民に理解を得られるように[r]
[sp]伝えましょう！」[p]

[eval exp="sf.event_katuragi_12_1 = 1"]

[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari

[endif]

@jump storage="test_katuragi.ks"
[s]
