*test
;顔グラフィック等プリロード→first.ksに追加したためこちらはコメントアウト
;[iscript]
;f.preload_images_test = [];
;[endscript]
;[preload storage=&f.preload_images_test wait=true]

;=============================================
;test
;=============================================
[chara_mod name="bg" storage="bg/title.jpg"]

[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="複数ルートシナリオを含む共通イベント用テスト画面です" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="ご自由に編集してお使いください" layer=26 size=17 x=100 y=45 color=darkslateblue]
[ptext text="また、複数ルートに関わらない共通イベントは各ライターさんのテストファイルにご記載ください" layer=26 size=17 x=100 y=65 color=darkslateblue]
;[ptext text="作業中＝　" layer=26 size=17 x=100 y=65 color=darkslateblue]

[glink target="test01" text="5月1週「磯野に相談」" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
;[glink target="test02" text="共通イベント2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
;[glink target="test03" text="共通イベント3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
;[glink target="test04" text="共通イベント4" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
;[glink target="test05" text="共通イベント5" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
;[glink target="test06" text="共通イベント6" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
;[glink target="test07" text="共通イベント7" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
;[glink target="test08" text="共通イベント8" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
;[glink target="test09" text="共通イベント9" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]

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

*test01
[cm]
[freeimage layer = 26]
@jump storage="02_kyoutuu_5_1.ks"
[s]

*test02
[cm]
[freeimage layer = 26]
@jump storage="" target=""
[s]

*test03
[cm]
[freeimage layer = 26]
@jump storage="" target=""
[s]

*test04
[cm]
[freeimage layer = 26]
@jump storage="" target=""
[s]

*test05
[cm]
[freeimage layer = 26]
@jump storage="" target=""
[s]


*back_test
[cm]
[freeimage layer = 26]
@jump storage="test.ks"
[s]

*title
[cm]
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
