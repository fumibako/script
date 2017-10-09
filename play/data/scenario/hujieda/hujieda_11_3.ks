;========================================================================
;イベント１１回目【父と磯野への説得】１１月3週、
;=======================お芝居の準備中です=================================
[setreplay name="replay_hujieda_badED_scene" storage="hujieda/hujieda_11_3.ks" target="start"]
*replay_hujieda_badED_scene2
*replay_hujieda_11_3
[freeimage layer = 1]
[wait time=10]

[stopbgm]
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[if exp="f.flag_replay == true"]
[cm]
;暗転とは違う

;[back storage="toumei.gif" time=1]
[endif]
*start
[stopbgm]
[call target=*11_3 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer=1]
[ct]
[wait time=10]
[clearfix]
[wait time=10]
[clearstack]
[wait time=10]
;@layopt layer=1 visible=true
;【背景】主人公邸 庭の見える部屋：夜
[bg wait=true storage="../fgimage/bg/room_niwa_yoru.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公困り]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================
*seen_1
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「……」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「磯野から聞いているし没収した手紙も読んだ。[r]
[sp]藤枝肇君の素性も調べてある。[r]
[sp]その上で何か言いたいことはあるかね？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]


;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]

[endif]
;------------------------------------------------------


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ落ち込み
[主人公困り]
[主人公口開]
「申し訳ありません」[p]
[主人公口通常]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「今後一切、彼に手紙を書かないと約束するなら、[r]
[sp]一人でのお稽古も外出も許そう。[r]
[sp][名前]、返事は？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公目閉じ]
「お父様……私は、もう一度だけでもいいです。[r]
[sp]藤枝様にお会いしたいです」[p]
[主人公口通常]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]！」[p]

#
お父様は目を見開いて私を見た。[p]
そして、苦悶するように目を閉じた。[r]
悩ませているのは私なのだから心苦しい。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「彼が、国費での独逸留学をする話が出ていることを[r]
[sp]知っているか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「いいえ！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「彼は家の事情を鑑みて遠慮していたが、家族も留学を[r]
[sp]応援されているそうだ。[r]
[sp][名前] 、諦めなさい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公困り]
[主人公口開]
「それなら後生です、[r]
[sp]藤枝様から今の気持ちを聞きたいのです。[r]
[sp]もう一度だけ会わせてください！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
[主人公口ムッ]
[主人公憂い]
「はあ……。[r]
[sp]これほど聞き分けのない娘だと思っていなかった」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
[主人公目通常]
「いいだろう。 数分程度だけだ。[r]
[sp]明日、郵便が来る時間に会うといい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口ほほえみ]
「お父様、ありがとうございます」[p]

[whosay name=磯野 color="dimgray"]
「旦那様、よろしいのですか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「仕方がない。　何も起きないように、[r]
[sp]磯野、君は[名前]に立ち会いなさい」[p]
*seen_2
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字  [テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風  [テキスト全画面白文字]bg/bg_prologue_dark.jpg
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
[主人公憂い]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】主人公邸 玄関 （裏で画面構成）
[bg wait=true storage="../fgimage/bg/bg_genkan.jpg" time=1000]
[wait time=10]
[表示準備 storage="bg/bg_genkan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

;【テキスト全画面】黒茶・和紙風背景に白文字

翌日、十時前。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_hujieda.ks"]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen_3_1

[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公憂い]幕間に設定してあります(スクリプト担当_2)
「……」[p]

（藤枝様に会える、けれどお別れなの？）[p]

[whosay name=磯野 color="dimgray"]
「旦那様も数分と言われました。[r]
[sp]彼も仕事中ですし、手短にお話しください」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公口開]
「わかって、います」[p]
[主人公口通常]

#
自転車の音が聞こえ、止まり、藤枝様の姿が見えた。[p]

;==========
;【立ち絵】藤枝：驚き
[藤枝ベース郵便屋]
[藤枝驚き]
[freeimage layer=13 time=500]
[wait time=500]
;==========
[whosay name="藤枝 肇" color=%mp.color] 
「！」[p]
;【立ち絵】藤枝：目伏せ憂い
[藤枝憂い]
[藤枝口開]
「お返事が来ないと思っていたのですが[r]
[sp]知られてしまったのですね」[p]
[主人公憂い]
[whosay name="藤枝 肇" color=%mp.color] 
「いずれこうなるとわかっていながら、僕の我儘で、すみません」[p]
[藤枝口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：憂い
[主人公憂い]
[主人公口開]
「いえ、私が悪いのです！[r]
[sp]私達は、お別れしないといけないのですか？[r] 　
[sp]独逸留学というのは本当ですか？」[p]
[主人公口通常]

;【立ち絵】藤枝：驚き
[藤枝困り]
[藤枝口驚き]
[whosay name="藤枝 肇" color=%mp.color] 
「その話を御存じなのですね！」[p]
;【立ち絵】藤枝：目伏せ
[藤枝憂い]
「迷ってましたが、皆、僕の背中を押してくれています。[r]
[sp]それに在学中の時に留学の話をと聞いてから[r]
[sp]ずっと行きたいと思っていました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
[主人公目閉じ]
[主人公涙_目閉用]
[主人公口通常]
[主人公ポーズ片手]
「それなら私が止める事は出来ません。[r]
[sp]私も藤枝様の夢が叶うことを……っ……」[p]

#
それから涙がこぼれて言葉が告げられない。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、そろそろ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：憂い
[主人公憂い]
[主人公口開]
[主人公涙流]
（これでお会いできるのが最後かもしれない。[r]
[sp]笑顔を作ることはできなくとも）[p]
[主人公口通常]

#
私は一礼して言った。[p]

;【立ち絵】主人公：悲しみ
[主人公目閉じ]
[主人公涙_目閉用]
「ありがとうございました、藤枝様……お元気で！」[p]

;【立ち絵】藤枝：悲しみ
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color] 
「貴方を苦しめて申し訳ありませんでした。[r]
[sp]貴方も、どうかお元気で……」[p]
#
;ふわっと消えていく
[藤枝退場準備 storage="bg/bg_genkan.jpg" time=400]
[wait time=10]
#
そして藤枝様は持っていた手紙を磯野に渡し、自転車に乗って[r]
去っていった。[p]

*seen_end
[if exp="f.okeiko_gamen == true"]
@jump target=*seen_hujieda_11_3_hantei
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;テスト時 または　リプレイ時かつ　藤枝バッド２をみている場合はシーン選択
[if exp="(tf.test_hujieda == true && f.okeiko_gamen != true) || (f.okeiko_gamen != true && f.event_replay == 'hujieda' && sf.ED_hujieda_bad2 == 1)"]
@layopt layer=fix visible=false
[image name="sentaku" layer=29 x=0 y=0 zindex=0 storage="bg/plane_sakura.jpg" time=100]
[er]
;選択肢用レイヤーを追加
[position layer=message1 height=550 top=50 left=250 opacity=0]
[wait time=50]
@layopt layer=message1 visible=true
[current layer="message1"]
リプレイモードで表示されています。　続きを選択してください。[r][r][r]
[font size=30]
[link target="seen11_1_bad"]バッド２をみる[r][r][r]
[link target="end_test1"]リプレイを終了する[endlink]
[s]
;----------------------------
*seen11_1_bad
[er]
[current layer="message0"]
[resetfont]
[iscript]
$(".sentaku").remove();
[endscript]
[cm]
@layopt layer=fix visible=true
@jump storage=hujieda/hujieda_11_3bad.ks target=*seen_hujieda_11_3_bad
[s]
*end_test1
@layopt layer=fix visible=true
@jump target=*seen_end1
[endif]
;----------------------------
;ＢＡＤリプレイ用のジャンプ リプレイ終了処理はＢＡＤ側にあります
[if exp="f.flag_replay == true"]
@jump storage=hujieda/hujieda_11_3bad.ks target=*seen_hujieda_11_3_bad
[endif]
;----------------------------
*seen_hujieda_11_3_hantei
[if exp="f.para_hujieda_koukando < 40"]
;バッドのシナリオここから
[暗転１]
[主人公退場]
@jump storage=hujieda/hujieda_11_3bad.ks target=*seen_hujieda_11_3_bad
;バッドのシナリオここまで
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－

[fadeoutbgm time=3000]
*seen_end1
[eval exp="sf.event_hujieda_11_3 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
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
