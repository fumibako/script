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
[if exp="f.flag_replay == true" || f.event_replay == 'sijyou']
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

;◆四条ルートクリアバッジ獲得処理
;バッジ獲得済み（周回プレイ時）はバッジ処理を飛ばして*root_clearへ。
[if exp="sf.badge_sijyou == 1"]
	@jump target=*root_clear
[endif]
;◆共通処理
;【背景】タイトル背景
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sakura.jpg" time=1000]
[wait time=500]
;◆スキップ状態の時はスキップを解除
[eval exp="f.skip=this.kag.stat.is_skip"]
[if exp="f.skip == true"]
	[cancelskip]
	[eval exp="f.skip = false"]
[endif]
	@layopt layer=29 visible=true
	[wait time=10]
	@layopt layer=message0 visible=true
	[position width=700 height=620 top=0 left=150 page=fore margint="40" opacity=0]
	[wait time=10]
	[whosay name=""]
	[font size=20]
	[wait time=10]

;◆ノベコレ版とそれ以外振り分け
[if exp="sf.novecole != 1"]
	@jump target=*badge_omake_only
[endif]
[give_emblem id="5196" pid="12168da93fd4cb04155505fd8defdfc4" ]
[image name=list layer=29 storage="../image/badge_sijyou.png" x=360 y=50]
[wait time=10]
[r][r][r][r][r]
『ネリネの証』を獲得しました。[r]
四条 華織との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
証です。[r]
[r]
ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）と[r]
「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
[r]
[font size=17 color="peru"]
[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
[sp]　　　　「攻略情報とおまけ」コーナーをお楽しみください。[p]
[freeimage layer = 29]
[wait time=10]
[eval exp="sf.badge_sijyou = 1"]
[eval exp="tf.tweet_badge = 1"]
@jump target=*root_clear

*badge_omake_only
[image name=list layer=29 storage="../image/badge_sijyou.png" x=360 y=50]
[wait time=10]
[eval exp="sf.badge_sijyou = 1"]
[r][r][r][r][r]
『ネリネの証』を獲得しました。[r]
四条 華織との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
証です。[r]
[r]
ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）[r]
に飾られます。[p]
[freeimage layer = 29]
[wait time=10]

*root_clear

;ending処理待ち
[if exp="f.okeiko_gamen == true"]
[eval exp="sf.ED_sijyou_normal=1"]
;四条ルートをクリアした
[eval exp="tf.ED_sijyou == 1"]

;tweet表示
[if exp="tf.tweet_end != true && tf.tweet_badge != 1"]
[call storage="sijyou/01_tweet.ks"]
[wait time=10]
[endif]

[四条ルート終了 end=normal]
@jump storage="event.ks" target=*event_ED
[endif]

[if exp="tf.test_sijyou == true"]
;四条ルートをクリアした
[eval exp="tf.ED_sijyou = 1"]
[四条ルート終了 end=normal]
;tweet表示
@jump storage="sijyou/01_tweet.ks"
@jump storage="test_sijyou.ks"
[s]
[endif]
