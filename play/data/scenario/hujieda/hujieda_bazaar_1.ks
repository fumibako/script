;=======================================================================================
;◆チャリティーバザー◆２月4週から３月3週まで琴パラが高い藤枝ルート
;これもイベントの中に組み込む方がよいかも？
;=======================お芝居の準備中です 男性モノローグ版=================================
*replay_hujieda_bazaar_1
[stopbgm]
[call target=*hujieda_bazaar_1 storage="hujieda/preload_hujieda.ks"]
;[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】背景ミルクホール
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_fujieda_piano_1.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[プリロード画面消去]
;=========================================================================
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:
[image layer=29 x=0 y=0 storage="bg/bg_fujieda_piano_1_1.jpg" time=50 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
[sp][r][r]
朝霧かすむ早朝。[r]
柔らかな陽ざしが入る開店前のミルクホール。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_hujieda.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[イベントシーン構築ボタン無し版枠茶色]
[藤枝ベース私服]
[藤枝通常]
[freeimage layer = 29 time=1000]
[wait time=1000]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプトここまで=========================================================
#
;棒立ち回避
[藤枝目パチ1回]
ピアノを演奏前の指ならしに弾いていると、一人の男性が声を掛けてきた。[p]

[whosay name=財前美彬]
[藤枝困り]
「藤枝君、久しぶりと言うべきところでしょうか。[r]
[sp]一段とピアノが上達しましたね」[p] 

;フラグで地の文を変更。財前の指定2_1イベントをしている
;フラグ名はスクリプト担当さまが変更お願いします。
[if exp="f.zaimae_flag == true || sf.event_zaizen_sansaku_2_1 == 1"]
#
声をかけてきたのは、僕の姉の元婚約者、財前さんだった。[p]
[else]
#
声を掛けてきたのは以前チャリティー活動で知り合った財前さんだった。[p]
[endif]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝困り]
「財前さん……お久しぶりです。　またどうしてこのお店に？」[p]


[whosay name="財前美彬"]
「ああ……過去の事は気にしていません。[r]
[sp]君の事も謙虚で優秀なピアニストの卵だと思っています。[r]
[sp]過去の立場上、援助も出来ませんが」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝微笑み]
「ありがとうございます。[r]
[sp]貴方は相変わらず理知的で、人に対しても気遣いを忘れない方ですね」[p]


[whosay name="財前美彬"]
「君に頼みたい事があります。[r]
[sp]今年もチャリティーバザーが開催するのを知ってますか？」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝驚き]
「いえ、[r]
[sp]今年は経済的に色々あって、開催を危ぶまれいると聞きましたが[r]
[sp]開催されるんですか！」[p]

[whosay name=財前美彬]
「その事で私も尽力しています。[r]
[sp]用というのは、チャリティーバザー会場でオルガンを[r]
[sp]弾いて頂きたいのです」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝憂い]
「チャリティーバザーは、母がよく参加していましたし、[r]
[sp]協力したいですが、仕事があります」[p]

[whosay name="財前美彬"]
「その事は、私が話をつけましょう」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝驚き]
「どうしてそこまでして頂けるのですか？」[p]

[whosay name="財前美彬"]
「主催者の奥方達やバザー参加者でも、二年前の演奏は語り草になり、[r]
[sp]もう一度聞きたいと仰る方もいます」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝困り]
「けれどお筝を弾いた母が居ません。[r]
[藤枝伏目]
[sp]ああ……でも……」[p]

[whosay name="財前美彬"]
「なんですか？」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝目伏せ照れ]
「弾いてくださる方に心当たりがあります」[p]

[whosay name="財前美彬"]
「どちらの方ですか？」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝通常]
「[名字]様のご息女です、[r]
[sp]……財前さんもご存じの方ではないでしょうか」[p]

[whosay name="財前美彬"]
「彼女と知り合いですか？ 」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝真剣]
「今、彼女と手紙を交わしています」[p]

[whosay name="財前美彬"]
「そうですか。[r]
[sp]人の馴れ初めには興味ありませんが、彼女のお父上は手紙を[r]
[sp]許しているのですか？」[p]


[whosay name="藤枝 肇" color=%mp.color] 
[藤枝憂い]
「会う事は許されず手紙を交わす事だけ、許して頂いてます」[p]

[whosay name="財前美彬"]
「……なるほど。[r]
[sp]自由恋愛など、はしたないとされていますからね」[p]

#
財前さんは少し思案していたが、すぐに提案した。[p]

[whosay name="財前美彬"]
「彼女も筝の上達が早く得意だと聞いてます。[r]
[sp]私が計らいましょうか？」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝驚き]
「それは！」[p]
[fadeoutbgm time=3000]
[whosay name="財前美彬"]
「チャリティーバザーを盛り上げるためです。[r]
[sp]ですが自由恋愛に眉をひそめる方もいますので、会場では[r]
[sp]親しそうにしないで下さい」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝笑顔大]
「はい！」[p]
;幕間に退場
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
[藤枝退場]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
数日後[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[イベントシーン構築ボタン無し版]
;裏で表情リセット
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29 time=1100]
[wait time=1100]
;メッセージレイヤを会話窓用に設定変更
[call target=*start storage="macro_tati_hujieda.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name=磯野]
「旦那様を通して財前様から、お嬢様にチャリティーバザーに[r]
[sp]参加の有無の問い合わせがありました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ、昨日藤枝様から、その事でお手紙と楽譜を頂いています。[r]
[sp]財前様からの紹介という形になるのですね」[p]

[whosay name=磯野]
;ほほえみが続くので何かしら表情を
[主人公眉下げ下]
[主人公目通常]
「……当家の醜聞になるやもしれませんし、旦那様は完全に[r]
[sp]藤枝様を認めた訳でもありません。[r]
[sp]女中を控えさせて頂きます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉じ]
「ええ」[p]

(……けれどまた近く藤枝様に会える。　それに合奏がとても楽しみだわ)[p]
[主人公退場]
[fadeoutbgm time=2000]
#
[暗転１]
@jump storage="hujieda/hujieda_bazaar_2.ks" target=*seen00
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
