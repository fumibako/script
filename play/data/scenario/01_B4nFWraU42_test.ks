;もしよろしければ、共通散策イベントに限らずご自由にテストボタンを作成してお使いください
*test
;顔グラフィック等プリロード
[iscript]
f.preload_images_test = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg"];
[endscript]
[preload storage=&f.preload_images_test wait=true]

;=============================================
;test
;=============================================
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]

[cm]
[eval exp="tf.test_gamen1 = true"]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="◆B4nFWraU42様　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="もしよろしければ、共通散策イベントに限らずご自由にテストボタンを作成してお使いください" layer=26 size=17 x=100 y=45 color=darkslateblue]
;[ptext text="" layer=26 size=17 x=100 y=65 color=darkslateblue]
;[ptext text="作業中＝　" layer=26 size=17 x=100 y=65 color=darkslateblue]

[glink target="sansaku01" text="共通散策イベント1『一日のはじまり』" graphic="select_waku_x500.png" size=20 width="450" x=100 y=100 color=white]
[glink target="sansaku02" text="共通散策イベント2『聞き上手と話し上手』" graphic="select_waku_x500.png" size=20 width="450" x=100 y=150 color=white]
[glink target="sansaku03" text="共通散策イベント3　『　道　』　" graphic="select_waku_x500.png" size=20 width="450" x=100 y=200 color=white]
[glink target="sansaku04" text="共通散策イベント4『緑の石の話題』" graphic="select_waku_x500.png" size=20 width="450" x=100 y=250 color=white]
[glink target="sansaku05" text="共通散策イベント5『お気に入りの曲』" graphic="select_waku_x500.png" size=20 width="450" x=100 y=300 color=white]
[glink target="sansaku06" text="共通散策イベント6『猫の話題』" graphic="select_waku_x500.png" size=20 width="450" x=100 y=350 color=white]
[glink target="sansaku07" text="共通散策イベント7『変化と永遠』" graphic="select_waku_x500.png" size=20 width="450" x=100 y=400 color=white]
[glink target="sansaku08" text="共通散策イベント8『手紙』（町なみイベント）" graphic="select_waku_x500.png" size=20 width="450" x=100 y=450 color=white]
;[glink target="sansaku09" text="共通散策イベント『飛鳥さん』" graphic="select_waku_x500.png" size=20 width="450" x=100 y=500 color=white]
;[glink target="sansaku10" text="共通散策イベント10" graphic="select_waku_x500.png" size=20 width="450" x=100 y=550 color=white]

[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]

*button_BGM
[if exp="sf.BGM=='OFF'"]
;ロード時点で再生していたBGMを停止します。
[stopbgm]
[locate x=800 y=480]
[button name="button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on" ]
[else]
[eval exp="sf.BGM='ON'"]
[locate x=800 y=480]
[button name="button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off" ]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
;[playbgm storage="title_yukidoke.ogg" click=true loop=true]
;[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]
[s]

*sansaku01
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_01"
[s]

*sansaku02
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_02"
[s]

*sansaku03
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_03"
[s]

*sansaku04
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_04"
[s]

*sansaku05
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_05"
[s]

*sansaku06
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_06"
[s]

*sansaku07
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_07"
[s]

*sansaku08
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_08"
[s]

*sansaku09
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_09"
[s]

*sansaku10
[cm]
[freeimage layer = 26]
@jump storage="01_B4nFWraU42_sansaku.ks" target="*sansaku_machi_common_B4nFWraU42_10"
[s]


*back_test
[cm]
[eval exp="tf.test_gamen1 = false"]
[freeimage layer = 26]
@jump storage="test.ks"
[s]

*title
[cm]
[eval exp="tf.test_gamen1 = false"]
[freeimage layer = 26]
;------タイトルへ戻る
@jump storage="title.ks"
[s]

;----------BGM onが選択された時
*bgm_on
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='ON'"]
[anim name="button_bgm_to_on" opacity=0 time=1]
[locate x=800 y=480]
[button name="button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off" ]
[s]

;----------BGM offが選択された時
*bgm_off
[stopbgm]
[fadeoutbgm time=1000]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='OFF'"]
[anim name="button_bgm_to_off" opacity=0 time=1]
[locate x=800 y=480]
[button name="button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on" ]
[s]
