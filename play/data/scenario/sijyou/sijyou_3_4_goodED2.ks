;////////エンディング2・その後の話 、 ファイナル・イメージ（本物の変化を見せる場）/////////
;春 3月
;○青空に桜のエフェクト/兄とその奥さんに見守られて結納(文字のみ)
;///////////////////////////////////////////////////////////////////
*scene0
;ナレーターモノローグ
;===============================================================
;ﾒｯｾｰｼﾞｸﾘｯｸ表示隠し
[layopt layer=message0 visible=false]
[wait time=10]
;機能ボタン消去
[ct]
[clearfix]
[clearstack]
[wait time=10]
[eval exp="sf.FButton='OFF'"]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;===============================================================
;【背景】ヒロインの部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_sepia.jpg"]
[wait time=50]
;[chara_mod name="bg" storage="bg/room_niwa_sepia.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;↓フリーズ防止策として、セピア化背景を導入してcssフィルターはコメントアウトさせていただきます(◆jsYiJcqRkk
;[iscript]
;$('.1_fore').css({'filter':'sepia(100%)','-webkit-filter':'sepia(100%)','-moz-filter':'sepia(100%)','-ms-filter':'sepia(100%)'});
;[endscript]
[wait time=50]
;===============================================================
[position left=200 width=500 height=300 top=100 page=fore margint="50"]
[wait time=50]
;ﾒｯｾｰｼﾞｸﾘｯｸ表示
[layopt layer=message0 visible=true]
[wait time=10]
[current layer="message0"]
[wait time=10]
;テキスト全画面
[font color=white size=27]
;[font size=27]
;===============================================================
;「幸せな思い出」
いつも兄と一緒に私を暖かく見守ってくださった。[p]
;私をいつも兄と一緒に暖かく見守ってくださった。[p]
;===============================================================
;【背景】ヒロインの部屋雪
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_yuki_sepia.jpg" time=100]
;[chara_mod name="bg" storage="bg/room_niwa_yuki_sepia.jpg" time=100]
[wait time=50]
;ここでとまる
;うごいてますか？[p]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;===============================================================
;「忍耐」
大人になって、離れた時も、迷った時もあった。[p]

;===============================================================
;【背景】青空に桜
[if exp="f.flag_replay == true"]
[image layer=1 x=0 y=0 storage="bg/bg_sakura_sepia.jpg" time=1000 visible=true]
[wait time=10]
[else]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_sakura_sepia.jpg" time=100]
;[chara_mod name="bg" storage="bg/bg_sakura_sepia.jpg" time=100]
[wait time=10]
;ここでとまる
[eval exp="f.haikei_credit='photo　by　djNIV　https://www.flickr.com/photos/nivpic/4496431348/'"]
[endif]
;===============================================================
;「忍耐」
それでも、貴方を信じて、隣に立とうと寄り添った。[r]
[r]
そして、貴方の強さを知ることができた。[p]

;[ ]「華やか」[/]「幸せな思い出」[ ]「輝き」[/]「忍耐」[　]「また会う日を楽しみに」
;===============================================================
;【背景】思い出（花
[if exp="f.flag_replay == true"]
[image layer=1 x=0 y=0 storage="bg/bg_omoide_sepia.jpg" time=1000 visible=true]
[wait time=10]
[else]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_omoide_sepia.jpg" time=500]
;[chara_mod name="bg" storage="bg/bg_omoide_sepia.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit=''"]
[endif]
これからも訪れるであろう、何気ない季節を花とともに語りましょう。[p]

;===============================================================
[font color=white size=27]
;背景変更:黒茶・和紙風
[image name=end layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
;===============================================================
幸せは信じれば巡ってくる。[r]
[r]
それは、案外、気が付かない近い場所に[r]
あるのかもしれません[p]

;===============================================================
;[iscript]
;$('.1_fore').css({'filter':'sepia(0%)','-webkit-filter':'sepia(0%)','-moz-filter':'sepia(100%)','-ms-filter':'sepia(0%)'});
;[endscript]
;[if exp="f.flag_replay != true"]
;一瞬裏がみえるの防止背景(replay時にも裏が見えるのを防止したいので↑↓if～をコメントアウトしました(◆jsYiJcqRkk
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=50]
;[endif]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=300 height=300 top=200 page=fore margint="50"]
[wait time=50]
[font color=white size=35]
;===============================================================
;画面中央に「完」の文字
[sp]　　　　完[p]
[if exp="f.flag_replay == true"]
[freeimage layer=29]
@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
;@jump storage=replay.ks
[endif]
[イベントシーン終了]
;回想下までいってしまいます

;回想記録終了
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
[clearfix]
[clearstack]
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sepia.jpg" time=100]
[wait time=10]
[skipstop]
[stopse]
@jump storage="replay2.ks" 
;target=*replaypage
[endif]

;ending処理待ち
[if exp="f.okeiko_gamen == true"]
[eval exp="sf.ED_sijyou_normal=1"]
;四条ルートをクリアした
[eval exp="tf.ED_sijyou == 1"]
;tweet表示
[call storage="sijyou/01_tweet.ks"]

[四条ルート終了 end=normal]
@jump storage="event.ks" target=*event_ED
[endif]

[if exp="tf.test_sijyou == true"]
;四条ルートをクリアした
[eval exp="tf.ED_sijyou = 1"]
;tweet表示
@jump storage="sijyou/01_tweet.ks"
@jump storage="test_sijyou.ks"
[s]
[endif]




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
[メッセージウィンドウ上ボタン表示]
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
