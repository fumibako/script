;===============================================================
;各ルートゲームクリアバッジ獲得処理
;===============================================================
*get_badge
[cm]
;共通処理
;◆スキップ状態の時はスキップを解除
[eval exp="f.skip=this.kag.stat.is_skip"]
	[wait time=10]
[if exp="f.skip == true"]
	[wait time=10]
	[cancelskip]
	[wait time=10]
	[eval exp="f.skip = false"]
	[wait time=10]
[endif]
	[wait time=50]
	@layopt layer=29 visible=true
	[wait time=10]
	@layopt layer=message0 visible=true
	[position width=700 height=620 top=150 left=150 page=fore margint="40" opacity=0]
	[wait time=10]
	[whosay name=""]
	[resetfont]
	[font size=20]
	[wait time=50]
;◆イベントコンプリートチェック
[wait time=50]
[call storage="eventpercent_sijyou.ks" target=*start]
[wait time=50]
[call storage="eventpercent_zaizen.ks" target=*start]
[wait time=50]
[call storage="eventpercent_kuroda.ks" target=*start]
[wait time=50]
[call storage="eventpercent_katuraginomiya.ks" target=*start]
[wait time=50]
[call storage="eventpercent_hujieda.ks" target=*start]
[wait time=50]
;sf.badge_sijyou=[emb exp="sf.badge_sijyou"], sf.sijyou_clearlist_complete=[emb exp="sf.sijyou_clearlist_complete"],f.sijyou_event_percent=[emb exp="f.sijyou_event_percent"][r]
;sf.badge_zaizen=[emb exp="sf.badge_zaizen"], sf.zaizen_clearlist_complete=[emb exp="sf.zaizen_clearlist_complete"],f.zaizen_event_percent=[emb exp="f.zaizen_event_percent"][r]
;sf.badge_kuroda=[emb exp="sf.badge_kuroda"], sf.kuroda_clearlist_complete=[emb exp="sf.kuroda_clearlist_complete"],f.kuroda_event_percent=[emb exp="f.kuroda_event_percent"][r]
;sf.badge_katuraginomiya=[emb exp="sf.badge_katuraginomiya"], sf.katuraginomiya_clearlist_complete=[emb exp="sf.katuraginomiya_clearlist_complete"],f.katuraginomiya_event_percent=[emb exp="f.katuraginomiya_event_percent"][r]
;sf.badge_hujieda=[emb exp="sf.badge_hujieda"], sf.hujieda_clearlist_complete=[emb exp="sf.hujieda_clearlist_complete"],f.hujieda_event_percent=[emb exp="f.hujieda_event_percent"][r]
;[wait time=50]
;f.event_char=[emb exp="f.event_char"],f.badge_from=[emb exp="f.badge_from"][r]
;[p]
;【背景】
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sakura.jpg" time=500]
[wait time=500]

;◆◆jump振り分け処理◆◆
;◆ノベコレ版振り分け
[if exp="f.badge_from == 'ED' && sf.novecole == 1 && f.sijyou_au == 1 && sf.badge_sijyou != 1"]
	@jump storage="common_badge.ks" target=*badge_novecole_sijyou
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole == 1 && f.zaizen_au == 1 && sf.badge_zaizen != 1"]
	@jump storage="common_badge.ks" target=*badge_novecole_zaizen
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole == 1 && f.katuraginomiya_au == 1 && sf.badge_katuraginomiya != 1"]
	@jump storage="common_badge.ks" target=*badge_novecole_katuraginomiya
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole == 1 && f.hujieda_au == 1 && sf.badge_hujieda != 1"]
	@jump storage="common_badge.ks" target=*badge_novecole_hujieda
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole == 1 && f.kuroda_au == 1 && sf.badge_kuroda != 1"]
	@jump storage="common_badge.ks" target=*badge_novecole_kuroda
[endif]

;◆ノベコレ版以外振り分け：100%以外
[if exp="f.badge_from == 'ED' && sf.novecole != 1 && f.sijyou_au == 1 && sf.badge_sijyou != 1 && sf.sijyou_clearlist_complete != 1"]
	@jump storage="common_badge.ks" target=*badge_omake_sijyou
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole != 1 && f.zaizen_au == 1 && sf.badge_zaizen != 1 && sf.zaizen_clearlist_complete != 1"]
	@jump storage="common_badge.ks" target=*badge_omake_zaizen
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole != 1 && f.katuraginomiya_au == 1 && sf.badge_katuraginomiya != 1 && sf.katuraginomiya_clearlist_complete != 1"]
	@jump storage="common_badge.ks" target=*badge_omake_katuraginomiya
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole != 1 && f.hujieda_au == 1 && sf.badge_hujieda != 1 && sf.hujieda_clearlist_complete != 1"]
	@jump storage="common_badge.ks" target=*badge_omake_hujieda
[endif]
[if exp="f.badge_from == 'ED' && sf.novecole != 1 && f.kuroda_au == 1 && sf.badge_kuroda != 1 && sf.kuroda_clearlist_complete != 1"]
	@jump storage="common_badge.ks" target=*badge_omake_kuroda
[endif]

;◆各キャラ100%時
[if exp="sf.badge_sijyou != 2 && (f.sijyou_au == 1 || f.event_char == 'sijyou') && sf.sijyou_clearlist_complete == 1"]
	@jump storage="common_badge.ks" target=*sijyou100
[endif]
[if exp="sf.badge_zaizen != 2 && (f.zaizen_au == 1 || f.event_char == 'zaizen') && sf.zaizen_clearlist_complete == 1"]
	@jump storage="common_badge.ks" target=*zaizen100
[endif]
[if exp="sf.badge_katuraginomiya != 2 && (f.katuraginomiya_au == 1 || f.event_char == 'katuraginomiya') && sf.katuraginomiya_clearlist_complete == 1"]
	@jump storage="common_badge.ks" target=*katuraginomiya100
[endif]
[if exp="sf.badge_hujieda != 2 && (f.hujieda_au == 1 || f.event_char == 'hujieda') && sf.hujieda_clearlist_complete == 1"]
	@jump storage="common_badge.ks" target=*hujieda100
[endif]
;↓hujieda8_4badかつhujieda100%時用
[if exp="sf.badge_hujieda != 2 && sf.hujieda_clearlist_complete == 1 && ((f.okeiko_month == 8 && f.okeiko_week == 4) && f.event_hujieda[5] == 1 && f.para_kuroda_koukando < 30 && (f.para_zaizen_koukando < 30 || f.para_shujinkou_shukujodo < 20) && f.para_sijyou_koukando < 30 && (f.para_katuraginomiya_koukando < 20 || f.para_shujinkou_shukujodo < 30 || f.event_katuraginomiya[3] != 1 ) && f.katuraginomiya_only != 1)"]
	@jump storage="common_badge.ks" target=*hujieda100
[endif]
[if exp="sf.badge_kuroda != 2 && (f.kuroda_au == 1 || f.event_char == 'kuroda') && sf.kuroda_clearlist_complete == 1"]
	@jump storage="common_badge.ks" target=*kuroda100
[endif]

;◆コンプリート時（通常or散策イベント）
[if exp="sf.badge_comp != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1 && (f.badge_from == 'event' || f.badge_from == 'sansaku')"]
	@jump storage="common_badge.ks" target=*complete
[endif]

;◆例外処理（ラストにひとっ飛び）
@jump storage="common_badge.ks" target=*get_badge_end

;◆◆◆バッジ獲得個別処理：ノベコレ版
*badge_novecole_sijyou
;◆四条ルートクリアバッジ獲得処理
[if exp="sf.badge_sijyou != 2 && sf.sijyou_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_sijyou100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_sijyou = 2"]

	クリアおめでとうございます。[r]
	四条様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『四条 華織：全イベント達成の証』、[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に[r]
	『ネリネの証』が飾られます。[r]
	[r]
	『四条 華織：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	[eval exp="sf.badge_sijyou = 2"]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[give_emblem id="5196" pid="12168da93fd4cb04155505fd8defdfc4" ]
	[image name=list layer=29 storage="../image/badge_sijyou.png" x=360 y=50]
	[wait time=10]

	『ネリネの証』を獲得しました。[r]
	四条 華織との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
	[r]
	[font size=17 color="peru"]
	[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
	[sp]　　　　「おまけ」をお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[eval exp="sf.badge_sijyou = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="event.ks" target=*event_ED_after_badge
[endif]

*badge_novecole_zaizen
;◆財前ルートクリアバッジ獲得処理
[if exp="sf.badge_zaizen != 2 && sf.zaizen_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_zaizen100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_zaizen = 2"]

	クリアおめでとうございます。[r]
	財前様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『財前 美彬：全イベント達成の証』、[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に[r]
	『フウセンカズラの証』が飾られます。[r]
	[r]
	『財前 美彬：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	[eval exp="sf.badge_zaizen = 2"]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[give_emblem id="5197" pid="2172408790f1e9c1386a8b6ff2cc6e12" ]
	@layopt layer=29 visible=true
	[image name=list layer=29 storage="../image/badge_zaizen.png" x=360 y=50]
	[wait time=10]

	『フウセンカズラの証』を獲得しました。[r]
	財前 美彬との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
	[r]
	[font size=17 color="peru"]
	[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
	[sp]　　　　「おまけ」をお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_zaizen = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="event.ks" target=*event_ED_after_badge
[endif]

*badge_novecole_katuraginomiya
;◆葛城宮ルートクリアバッジ獲得処理
[if exp="sf.badge_katuraginomiya != 2 && sf.katuraginomiya_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_katuraginomiya100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_katuraginomiya = 2"]

	クリアおめでとうございます。[r]
	殿下との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『葛城宮 晴仁：全イベント達成の証』、[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に[r]
	『榊の証』が飾られます。[r]
	[r]
	『葛城宮 晴仁：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	[eval exp="sf.badge_katuraginomiya = 2"]
	@jump storage="common_badge.ks" target=*comp_end
[else]
	[give_emblem id="5205" pid="ecd739ff8ae294f33e430d47120a9b98" ]
	[image name=list layer=29 storage="../image/badge_katuraginomiya.png" x=360 y=50]
	[wait time=10]

	『榊の証』を獲得しました。[r]
	殿下との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
	[r]
	[font size=17 color="peru"]
	[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
	[sp]　　　　「おまけ」をお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_katuraginomiya = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="event.ks" target=*event_ED_after_badge
[endif]

*badge_novecole_hujieda
;◆藤枝ルートgoodクリアバッジ獲得処理
[if exp="sf.badge_hujieda != 2 && sf.hujieda_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_hujieda100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_hujieda = 2"]

	クリアおめでとうございます。[r]
	藤枝様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『藤枝 肇：全イベント達成の証』、[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に[r]
	『コリウスの証』が飾られます。[r]
	[r]
	『藤枝 肇：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	[eval exp="sf.badge_hujieda = 2"]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[give_emblem id="5206" pid="0db31db1115f330bfa6fc2c94e8451fb" ]
	[image name=list layer=29 storage="../image/badge_hujieda.png" x=360 y=50]
	[wait time=10]

	『コリウスの証』を獲得しました。[r]
	藤枝 肇との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
	[r]
	[font size=17 color="peru"]
	[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
	[sp]　　　　「おまけ」をお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_hujieda = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="event.ks" target=*event_ED_after_badge
[endif]

*badge_novecole_kuroda
;◆黒田ルートgoodクリアバッジ獲得処理
[if exp="sf.badge_kuroda != 2 && sf.kuroda_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_kuroda100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_kuroda = 2"]

	クリアおめでとうございます。[r]
	黒田様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『黒田将貴：全イベント達成の証』、[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に[r]
	『スミレの証』が飾られます。[r]
	[r]
	『黒田将貴：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	[eval exp="sf.badge_kuroda = 2"]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[give_emblem id="5198" pid="fa141c9a1069957c1117ac4451c1d199" ]
	[image name=list layer=29 storage="../image/badge_kuroda.png" x=360 y=50]
	[wait time=10]

	『スミレの証』を獲得しました。[r]
	黒田 将貴との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）と[r]
	「ノベルゲームコレクション」※プロフィールの"バッジ"欄に飾られます。[r]
	[r]
	[font size=17 color="peru"]
	[sp]　　※　環境によっては反映されない場合があります。その際はゲーム中の[r]
	[sp]　　　　「おまけ」をお楽しみください。[p]
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
	[eval exp="sf.badge_kuroda = 1"]
	[eval exp="tf.tweet_badge = 1"]
	@jump storage="event.ks" target=*event_ED_after_badge
[endif]

;◆◆◆バッジ獲得個別処理：ノベコレ版以外 = おまけ画面のみに登録
*badge_omake_only
*badge_omake_sijyou
[image name=list layer=29 storage="../image/badge_sijyou.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_sijyou = 1"]

	『ネリネの証』を獲得しました。[r]
	四条 華織との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に飾られます。[p]
	@jump storage="common_badge.ks" target=*get_badge_end

*badge_omake_zaizen
[image name=list layer=29 storage="../image/badge_zaizen.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_zaizen = 1"]

	『フウセンカズラの証』を獲得しました。[r]
	財前 美彬との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に飾られます。[p]
	[freeimage layer = 29]
	[wait time=10]
	@jump storage="common_badge.ks" target=*get_badge_end

*badge_omake_katuraginomiya
[image name=list layer=29 storage="../image/badge_katuraginomiya.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_katuraginomiya = 1"]

	『榊の証』を獲得しました。[r]
	殿下との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に飾られます。[p]
	@jump storage="common_badge.ks" target=*get_badge_end

*badge_omake_hujieda
[image name=list layer=29 storage="../image/badge_hujieda.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_hujieda = 1"]

	『コリウスの証』を獲得しました。[r]
	藤枝 肇との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に飾られます。[p]
	@jump storage="common_badge.ks" target=*get_badge_end

*badge_omake_kuroda
[image name=list layer=29 storage="../image/badge_kuroda.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_kuroda = 1"]

	『スミレの証』を獲得しました。[r]
	黒田 将貴との物語でgood又はnormalエンドをご覧いただいた方に贈られる[r]
	証です。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に飾られます。[p]
	@jump storage="common_badge.ks" target=*get_badge_end

;◆◆◆イベント100%時お知らせ個別処理
*sijyou100
[if exp="tf.ED_bad != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_sijyou100.png" x=200 y=50]
	[wait time=10]
	[image name=list layer=29 storage="../image/badge_comp.png" x=520 y=50]
	[wait time=10]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_sijyou = 2"]

	おめでとうございます！[r]
	四条様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『四条華織：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『四条華織：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_sijyou = 2"]

	四条様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『四条華織：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『四条華織：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1"]
	[eval exp="sf.badge_sijyou = 2"]

	四条様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『四条華織：全イベント達成の証』が飾られます。[r]
	[r]
	『四条華織：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[else]
	[image name=list layer=29 storage="../image/badge_sijyou100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_sijyou = 2"]

	クリアおめでとうございます。[r]
	四条様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『四条華織：全イベント達成の証』が飾られます。[r]
	[r]
	『四条華織：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end

[endif]

*zaizen100
[if exp="tf.ED_bad == 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_zaizen = 2"]
	[wait time=50]

	財前様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『財前美彬：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『財前美彬：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_zaizen100.png" x=200 y=50]
	[wait time=10]
	[image name=list layer=29 storage="../image/badge_comp.png" x=520 y=50]
	[wait time=10]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_zaizen = 2"]
	[wait time=50]
	おめでとうございます！[r]
	財前様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『財前美彬：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『財前美彬：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1"]
	[eval exp="sf.badge_zaizen = 2"]

	財前様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『財前美彬：全イベント達成の証』が飾られます。[r]
	[r]
	『財前美彬：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[image name=list layer=29 storage="../image/badge_zaizen100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_zaizen = 2"]

	クリアおめでとうございます。[r]
	財前様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『財前美彬：全イベント達成の証』が飾られます。[r]
	[r]
	『財前美彬：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[endif]
	
*katuraginomiya100
[if exp="tf.ED_bad != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_katuraginomiya100.png" x=200 y=50]
	[wait time=50]
	[image name=list layer=29 storage="../image/badge_comp.png" x=520 y=50]
	[wait time=10]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_katuraginomiya = 2"]

	おめでとうございます！[r]
	殿下との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『葛城宮晴仁：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『葛城宮晴仁：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_katuraginomiya = 2"]

	殿下との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『葛城宮晴仁：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『葛城宮晴仁：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1"]
	[eval exp="sf.badge_katuraginomiya = 2"]

	殿下との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『葛城宮晴仁：全イベント達成の証』が飾られます。[r]
	[r]
	『葛城宮晴仁：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[wait time=50]
	[image name=list layer=29 storage="../image/badge_katuraginomiya100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_katuraginomiya = 2"]

	クリアおめでとうございます。[r]
	殿下との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『葛城宮晴仁：全イベント達成の証』が飾られます。[r]
	[r]
	『葛城宮晴仁：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[endif]

*hujieda100
[if exp="tf.ED_bad != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[wait time=50]
	[image name=list layer=29 storage="../image/badge_hujieda100.png" x=200 y=50]
	[wait time=50]
	[image name=list layer=29 storage="../image/badge_comp.png" x=520 y=50]
	[wait time=10]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_hujieda = 2"]

	おめでとうございます！[r]
	藤枝様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『藤枝 肇：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『藤枝 肇：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_hujieda = 2"]

	藤枝様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『藤枝 肇：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『藤枝 肇：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1"]
	[wait time=10]
	[eval exp="sf.badge_hujieda = 2"]

	藤枝様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『藤枝 肇：全イベント達成の証』が飾られます。[r]
	[r]
	『藤枝 肇：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[image name=list layer=29 storage="../image/badge_hujieda100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_hujieda = 2"]

	クリアおめでとうございます。[r]
	藤枝様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『藤枝 肇：全イベント達成の証』が飾られます。[r]
	[r]
	『藤枝 肇：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[endif]

*kuroda100
[if exp="tf.ED_bad != 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[image name=list layer=29 storage="../image/badge_kuroda100.png" x=200 y=50]
	[wait time=10]
	[image name=list layer=29 storage="../image/badge_comp.png" x=520 y=50]
	[wait time=10]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_kuroda = 2"]

	おめでとうございます！[r]
	黒田様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『黒田将貴：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『黒田将貴：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1 && sf.sijyou_clearlist_complete == 1 && sf.kuroda_clearlist_complete == 1 && sf.zaizen_clearlist_complete == 1 && sf.katuraginomiya_clearlist_complete == 1 && sf.hujieda_clearlist_complete == 1"]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]
	[eval exp="sf.badge_kuroda = 2"]

	黒田様との物語を全てご覧になり、ゲーム中全てのイベントを達成されました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）に[r]
	『全イベント達成の証』と『黒田将貴：全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』と『黒田将貴：キャラクターデザイン原案』[r]
	が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[elsif exp="tf.ED_bad == 1"]
	[eval exp="sf.badge_kuroda = 2"]

	黒田様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『黒田将貴：全イベント達成の証』が飾られます。[r]
	[r]
	『黒田将貴：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end

[else]
	[image name=list layer=29 storage="../image/badge_kuroda100.png" x=360 y=50]
	[wait time=10]
	[eval exp="sf.badge_kuroda = 2"]

	クリアおめでとうございます。[r]
	黒田様との全ての物語をご覧いただきました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『黒田将貴：全イベント達成の証』が飾られます。[r]
	[r]
	『黒田将貴：キャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]
	@jump storage="common_badge.ks" target=*comp_end
[endif]

*complete
[image name=list layer=29 storage="../image/badge_comp.png" x=360 y=50]
[wait time=10]
	[eval exp="sf.badge_comp = 1"]
	[eval exp="tf.omake_mark = 1"]

	おめでとうございます！[r]
	全てのイベントを達成しました。[r]
	[r]
	ゲーム中「おまけ」（タイトル画面一番左）[r]
	に『全イベント達成の証』が飾られます。[r]
	[r]
	『主人公のキャラクターデザイン原案』が解放されました。[r]
	「おまけ」からお楽しみください。[p]

*comp_end
[freeimage layer = 29]
[wait time=10]
[position width=700 height=620 top=0 left=200 page=fore margint="40" opacity=0]
[wait time=10]
[glink target=*to_omake text="「おまけ」を見る（ゲーム終了）" font_color=black size=20 width="400" x=250 y=100 graphic="select_waku_x500.png"]
[glink target=*to_title text="タイトル画面へ（ゲーム終了）" font_color=black size=20 width="400" x=250 y=250 graphic="select_waku_x500.png"]

[if exp="f.badge_from == 'event' || f.badge_from == 'sansaku'"]
[glink target=*to_game text="ゲームに戻る" font_color=black size=20 width="400" x=250 y=400 graphic="select_waku_x500.png"]
[wait time=50]
[endif]
[s]

*to_game
[freeimage layer = 29]
[wait time=10]
[if exp="f.badge_from == 'event'"]
	[eval exp="f.badge_from = ''"]
	[eval exp="tf.ED_bad = ''"]
	[eval exp="f.event_char=''"]
	@jump storage="event.ks" target=*after_complete_check
[endif]

[if exp="f.badge_from == 'sansaku'"]
	[eval exp="f.badge_from = ''"]
	[eval exp="tf.ED_bad = ''"]
	[eval exp="f.event_char=''"]
	@jump storage="sansaku_machi_seika.ks" target=*after_complete_check
[endif]


*to_title
[freeimage layer = 29]
[wait time=10]
[bg storage="../fgimage/bg/title.jpg" time=100]
[wait time=50]
[eval exp="tf.ED_bad = ''"]
[eval exp="f.badge_from = ''"]
[eval exp="tf.test_gamen_sijyou=false"]
[eval exp="tf.test_gamen=false"]
[eval exp="tf.okeiko_gamen=false"]
[eval exp="f.okeiko_gamen=false"]
[eval exp="tf.advice_event_hyouji=1"]
[eval exp="f.flag_replay=false"]
[eval exp="tf.flag_replay=false"]
[eval exp="tf.jp_sinario=''"]
[eval exp="f.event_char=''"]
[if exp="tf.test_sijyou == true"]
;初期化
;藤枝 
@eval exp="f.hujieda_au=0" 
;葛城宮 
@eval exp="f.katuraginomiya_au=0"
;財前 
@eval exp="f.zaizen_au=0"
@eval exp="f.kuroda_au=0" 
;四条
@eval exp="f.sijyou_au=0" 
@eval exp="tf.ED_bad = 0"
@eval exp="sf.sijyou_clearlist_complete = 0"
@eval exp="sf.zaizen_clearlist_complete = 0"
@eval exp="sf.katuraginomiya_clearlist_complete = 0"
@eval exp="sf.hujieda_clearlist_complete = 0"
@eval exp="sf.kuroda_clearlist_complete = 0"
[endif]
[wait time=10]
[bg wait=true storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]

@jump storage="title.ks"
	
*to_omake
[eval exp="tf.ED_bad = ''"]
[eval exp="f.badge_from = ''"]
[eval exp="tf.test_gamen_sijyou=false"]
[eval exp="tf.test_gamen=false"]
[eval exp="tf.okeiko_gamen=false"]
[eval exp="f.okeiko_gamen=false"]
[eval exp="tf.advice_event_hyouji=1"]
[eval exp="f.flag_replay=false"]
[eval exp="tf.flag_replay=false"]
[eval exp="tf.jp_sinario=''"]
[eval exp="f.event_char=''"]
[freeimage layer = 29]
[wait time=10]
[if exp="tf.test_sijyou == true"]
;初期化
;藤枝 
@eval exp="f.hujieda_au=0" 
;葛城宮 
@eval exp="f.katuraginomiya_au=0"
;財前 
@eval exp="f.zaizen_au=0"
@eval exp="f.kuroda_au=0" 
;四条
@eval exp="f.sijyou_au=0" 
@eval exp="tf.ED_bad = 0"
@eval exp="sf.sijyou_clearlist_complete = 0"
@eval exp="sf.zaizen_clearlist_complete = 0"
@eval exp="sf.katuraginomiya_clearlist_complete = 0"
@eval exp="sf.hujieda_clearlist_complete = 0"
@eval exp="sf.kuroda_clearlist_complete = 0"
[endif]
@jump storage="omake.ks"

;◆共通終了処理（クレジットksに戻る）
*get_badge_end
	[resetfont]
	[freeimage layer = 29]
	[wait time=10]
[if exp="f.badge_from == 'event'"]
[eval exp="f.badge_from == ''"]
@jump storage="event.ks" target=*after_complete_check
[endif]
[if exp="f.badge_from == 'sansaku'"]
[eval exp="f.badge_from == ''"]
@jump storage="sansaku_machi_seika.ks" target=*after_complete_check
[endif]
[eval exp="f.badge_from == ''"]
@jump storage="event.ks" target=*event_ED_after_badge
;===============================================================
[s]
