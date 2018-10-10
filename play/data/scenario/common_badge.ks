;===============================================================
;各ルートゲームクリアバッジ獲得処理
;===============================================================
*get_badge
;共通処理
;【背景】
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

;◆◆jump振り分け処理◆◆
;◆ノベコレ版振り分け
[if exp="sf.novecole == 1 && f.sijyou_au == 1 && sf.badge_sijyou != 1"]
	@jump target=*badge_novecole_sijyou
[endif]
[if exp="sf.novecole == 1 && f.zaizen_au == 1 && sf.badge_zaizen != 1"]
	@jump target=*badge_novecole_zaizen
[endif]
[if exp="sf.novecole == 1 && f.katuraginomiya_au == 1 && sf.badge_katuraginomiya != 1"]
	@jump target=*badge_novecole_katuraginomiya
[endif]
[if exp="sf.novecole == 1 && f.hujieda_au == 1 && sf.badge_hujieda != 1"]
	@jump target=*badge_novecole_hujieda
[endif]
[if exp="sf.novecole == 1 && f.kuroda_au == 1 && sf.badge_kuroda != 1"]
	@jump target=*badge_novecole_kuroda
[endif]

;◆ノベコレ版以外振り分け
[if exp="sf.novecole != 1 && f.sijyou_au == 1 && sf.badge_sijyou != 1"]
	@jump target=*badge_omake_sijyou
[endif]
[if exp="sf.novecole != 1 && f.zaizen_au == 1 && sf.badge_zaizen != 1"]
	@jump target=*badge_omake_zaizen
[endif]
[if exp="sf.novecole != 1 && f.katuraginomiya_au == 1 && sf.badge_katuraginomiya != 1"]
	@jump target=*badge_omake_katuraginomiya
[endif]
[if exp="sf.novecole != 1 && f.hujieda_au == 1 && sf.badge_hujieda != 1"]
	@jump target=*badge_omake_hujieda
[endif]
[if exp="sf.novecole != 1 && f.kuroda_au == 1 && sf.badge_kuroda != 1"]
	@jump target=*badge_omake_kuroda
[endif]
;◆コンプリート時
[if exp="sf.badge_comp != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	@jump target=*complete
[endif]
;◆例外処理（ラストにひとっ飛び）
@jump target=*get_badge_end

;◆◆◆バッジ獲得個別処理：ノベコレ版
*badge_novecole_sijyou
;◆四条ルートクリアバッジ獲得処理
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
	[resetfont]
	[freeimage layer = 29]
	[eval exp="sf.badge_sijyou = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="sijyou/test_ed_credit.ks" target=*end

*badge_novecole_zaizen
;◆財前ルートクリアバッジ獲得処理
	[give_emblem id="5197" pid="2172408790f1e9c1386a8b6ff2cc6e12" ]
	@layopt layer=29 visible=true
	[image name=list layer=29 storage="../image/badge_zaizen.png" x=360 y=50]
	[wait time=10]
	[r][r][r][r][r]
	『フウセンカズラの証』を獲得しました。[r]
	財前 美彬との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
[r]
[font size=17 color="peru"]
[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
[sp]　　　　「攻略情報とおまけ」コーナーをお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_zaizen = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="sijyou/test_ed_credit.ks" target=*end

*badge_novecole_katuraginomiya
;◆葛城宮ルートクリアバッジ獲得処理
	[give_emblem id="5205" pid="ecd739ff8ae294f33e430d47120a9b98" ]
	[image name=list layer=29 storage="../image/badge_katuraginomiya.png" x=360 y=50]
	[wait time=10]
	[r][r][r][r][r]
	『榊の証』を獲得しました。[r]
	殿下との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
[r]
[font size=17 color="peru"]
[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
[sp]　　　　「攻略情報とおまけ」コーナーをお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_katuraginomiya = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="sijyou/test_ed_credit.ks" target=*end

*badge_novecole_hujieda
;◆藤枝ルートgoodクリアバッジ獲得処理
	[give_emblem id="5206" pid="0db31db1115f330bfa6fc2c94e8451fb" ]
	[image name=list layer=29 storage="../image/badge_hujieda.png" x=360 y=50]
	[wait time=10]
	[r][r][r][r][r]
	『コリウスの証』を獲得しました。[r]
	藤枝 肇との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
[r]
[font size=17 color="peru"]
[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
[sp]　　　　「攻略情報とおまけ」コーナーをお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_hujieda = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="sijyou/test_ed_credit.ks" target=*end

*badge_novecole_kuroda
;◆黒田ルートgoodクリアバッジ獲得処理
	[give_emblem id="5198" pid="fa141c9a1069957c1117ac4451c1d199" ]
	[image name=list layer=29 storage="../image/badge_kuroda.png" x=360 y=50]
	[wait time=10]
	[r][r][r][r][r]
	『スミレの証』を獲得しました。[r]
	黒田 将貴との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
[r]
[font size=17 color="peru"]
[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
[sp]　　　　「攻略情報とおまけ」コーナーをお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_kuroda = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="sijyou/test_ed_credit.ks" target=*end

;◆◆◆バッジ獲得個別処理：ノベコレ版以外 = おまけ画面のみに登録
*badge_omake_only
*badge_omake_sijyou
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
	@jump target=*get_badge_end

*badge_omake_zaizen
[image name=list layer=29 storage="../image/badge_zaizen.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_zaizen = 1"]
	[r][r][r][r][r]
	『フウセンカズラの証』を獲得しました。[r]
	財前 美彬との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）[r]
	に飾られます。[p]
	[freeimage layer = 29]
	[wait time=10]
	@jump target=*get_badge_end

*badge_omake_katuraginomiya
[image name=list layer=29 storage="../image/badge_katuraginomiya.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_katuraginomiya = 1"]
	[r][r][r][r][r]
	『榊の証』を獲得しました。[r]
	殿下との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）[r]
	に飾られます。[p]
	@jump target=*get_badge_end

*badge_omake_hujieda
[image name=list layer=29 storage="../image/badge_hujieda.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_hujieda = 1"]
	[r][r][r][r][r]
	『コリウスの証』を獲得しました。[r]
	藤枝 肇との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）[r]
	に飾られます。[p]
	@jump target=*get_badge_end

*badge_omake_kuroda
[image name=list layer=29 storage="../image/badge_kuroda.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_kuroda = 1"]
	[r][r][r][r][r]
	『スミレの証』を獲得しました。[r]
	黒田 将貴との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）[r]
	に飾られます。[p]
	@jump target=*get_badge_end

*complete
[image name=list layer=29 storage="../image/badge_comp.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[r][r][r][r][r]
	おめでとうございます！[r]
	全てのイベントを達成しました。[r]
	[r]
	ゲーム中「攻略情報とおまけ」コーナー（タイトル画面一番左）[r]
	に『全イベント達成の証』が飾られます。[p]
[if exp="f.comp_from == 'event'"]
	[freeimage layer = 29]
	[wait time=10]
	[position width=700 height=620 top=0 left=200 page=fore margint="40" opacity=0]
	[wait time=10]
	[r][r]
	[font size=29]
	[link target=*to_game]ゲームに戻る[endlink][r]
	[r][r][r]
	[link target=*to_omake]おまけコーナーを見る[r]
	[font size=15]
	（ゲーム終了）[endlink][r]
	[font size=29]
	[r][r][r]
	[link target=*to_title]タイトル画面へ[r]
	[font size=15]
	（ゲーム終了）[endlink][r]
	[resetfont]
	[s]
[else]
	[freeimage layer = 29]
	[wait time=10]
	[position width=700 height=620 top=0 left=200 page=fore margint="40" opacity=0]
	[wait time=10]
	[r][r]
	[font size=29]
	[link target=*to_omake]おまけコーナーを見る[endlink][r]
	[r][r][r]
	[link target=*to_title]タイトル画面へ戻る[endlink][r]
	[resetfont]
	[s]
[endif]

*to_game
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="f.comp_from == ''"]
@jump storage="event.ks" target=*after_complete_check

*to_title
[freeimage layer = 29]
[wait time=10]
[eval exp="f.comp_from == ''"]
[eval exp="tf.test_gamen_sijyou=false"]
[eval exp="tf.test_gamen=false"]
[eval exp="tf.okeiko_gamen=false"]
[eval exp="f.okeiko_gamen=false"]
[eval exp="tf.advice_event_hyouji=1"]
[eval exp="f.flag_replay=false"]
[eval exp="tf.flag_replay=false"]
[eval exp="tf.jp_sinario=''"]
@jump storage="title.ks"
	
*to_omake
[eval exp="f.comp_from == ''"]
[eval exp="tf.test_gamen_sijyou=false"]
[eval exp="tf.test_gamen=false"]
[eval exp="tf.okeiko_gamen=false"]
[eval exp="f.okeiko_gamen=false"]
[eval exp="tf.advice_event_hyouji=1"]
[eval exp="f.flag_replay=false"]
[eval exp="tf.flag_replay=false"]
[eval exp="tf.jp_sinario=''"]
[freeimage layer = 29]
[wait time=10]
@jump storage="omake.ks"

;◆共通終了処理（クレジットksに戻る）
*get_badge_end
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
@jump storage="sijyou/test_ed_credit.ks" target=*after_badge
;===============================================================
[s]
