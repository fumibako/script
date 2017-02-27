[setreplay name="test"]
*test
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images_sijyou = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg","data/fgimage/bg/bg_ryoutei.jpg","data/fgimage/bg/bg_omoide.jpg"];
[endscript]
[preload storage=&f.preload_images_sijyou wait=true]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;test
;=============================================
[chara_mod name="bg" storage="bg/title.jpg"]
;test中フラグ　一時変数手紙で利用します
[eval exp="tf.test_sijyou=true"]
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="四条 華織ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="テスト用に全てのスクリプトファイルへのリンクを解放してみています。" layer=26 size=17 x=100 y=45 color=darkslateblue]
[ptext text="作業中＝10月3週badED。スクリプト作業をありがとうございました" layer=26 size=17 x=100 y=65 color=darkslateblue]


*test_page1
[glink target="test_replay" text="WEB版リプレイ" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=blue]
[glink target="test6_1" text="6月1週(夢イベント)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test7_1" text="7月1週(未定)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test9_2" text="9月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test9_4" text="9月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test9_4b" text="9月4週b" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]

[glink target="test_replay2" text="ＣＧリプレイ解放" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=blue]
[glink target="test10_1" text="10月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test10_3b" text="10月3週badED" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test11_1" text="11月1～3週:1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test11_1_kai" text="11月1～3週:華衣" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="test11_1b" text="11月1～3週:2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]

[glink target="test_page2" text="次のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
;ページ停止に地点にジャンプ
@jump target="*common"
[s]

*test_page2
[glink target="test1_1" text="1月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test1_3" text="1月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test1_4" text="1月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test2_1" text="2月1週:1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test2_1b" text="2月1週:2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test3_1" text="3月1週:1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test3_1b" text="3月1週:2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test3_1b_f" text="3月1週:2_文也" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]


[glink target="test3_4" text="3月4週normalEND" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test_goodED" text="goodENDエピローグ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test_credit" text="仮credit" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=blue]
[glink target="test_bg" text="背景テスト" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=blue]

[glink target="test_page1" text="前のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=pink]
[glink target="test_page3" text="次のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
;ページ停止に地点にジャンプ
@jump target="*common"
[s]

*test_page3
[glink target="test_sansaku" text="散策" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test_sansaku2" text="散策2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test_sansaku3" text="散策3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test_sansaku4" text="散策4" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test_sansaku5" text="散策5" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test_sansaku6" text="散策6" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test_sansaku7" text="散策7" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]


[glink target="test_sansaku8" text="散策8(華衣)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test_sansaku9" text="散策9" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test_sansaku10" text="散策10" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test_sansaku11" text="散策11" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test_sansaku12" text="散策12" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test_sansaku13" text="散策13" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]

[glink target="test_page2" text="前のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=pink]
[glink target="test_page4" text="次のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
;ページ停止に地点にジャンプ
@jump target="*common"
[s]


*test_page4
[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test_fumi2" text="手紙（話題）" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="*test_ibent_fumi" text="イベント用の手紙" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test_fumi3" text="飛鳥紗代子からの手紙" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test_camera" text="カメラテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test_save" text="セーブデータクリア" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=blue]

[glink target="test_page3" text="前のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=pink]
*common
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
[glink target="auto" text="オートモード" graphic="select_waku_x500.png" size=20 width="250" x=500 y=600 color=white]

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

*test5_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_5_1.ks"
[s]
*test6_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_6_1.ks"
[s]

*test7_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_7_1.ks"
[s]

*test9_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_1.ks"
[s]


*test9_2
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_2.ks"
[s]


*test9_3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_3.ks"
[s]


*test9_4
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_4.ks"
[s]


*test9_4b
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_4b.ks"
[s]


*test10_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_10_1.ks"
[s]


*test10_3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_10_3.ks"
[s]


*test10_3b
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_10_3_badED.ks"
[s]


*test11_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_11_1.ks"
[s]

*test11_1_kai
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_11_1_kai.ks" target=*start
[s]

*test11_1b
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_11_1b.ks"
[s]

*test1_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_1_1.ks"
[s]


*test1_3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_1_3_normalED.ks"
[s]

*test1_4
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_1_4.ks"
[s]

*test2_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_2_1.ks"
[s]

*test2_1b
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_2_1b.ks"
[s]

*test3_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_3_1.ks"
[s]

*test3_1b
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_3_1b.ks"
[s]

*test3_1b_f
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_3_1b_fumiya.ks"
[s]

*test3_4
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_3_4_goodED.ks"
[s]

*test_goodED
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_3_4_epilogue_goodED.ks"
[s]

*test_sansaku
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku.ks"
[s]

*test_sansaku2
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku2.ks"
[s]

*test_sansaku3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku3.ks"
[s]

*test_sansaku4
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku4.ks"
[s]

*test_sansaku5
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku5.ks"
[s]

*test_sansaku6
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku6.ks"
[s]

*test_sansaku7
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku7.ks"
[s]

*test_sansaku8
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_omake_kai.ks"
[s]

*test_sansaku9
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku9.ks"
[s]

*test_sansaku10
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku10.ks"
[s]
*test_sansaku11
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku11.ks"
[s]
*test_sansaku12
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku12.ks"
[s]
*test_sansaku13
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku13.ks"
[s]

*test_ibent_fumi
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_event_fumi.ks"
[s]

*test_credit
[cm]
[freeimage layer = 26]
@jump storage="sijyou/test_ed_credit.ks"
[s]

*test_bg
[cm]
[freeimage layer = 26]
@jump storage="sijyou/test_bg_mode.ks"
[s]
*test_fumi
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_fumi.ks"
[s]

*test_fumi2
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_fumi_wadai.ks"
[s]

*test_fumi3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/asuka_fumi.ks"
[s]

*test_camera
[cm]
[freeimage layer = 26]
@jump storage="sijyou/camera_sijyou.ks
[s]

*test_replay
[cm]
[freeimage layer = 26]
@jump storage="replay2.ks
[s]

*test_replay2
ＣＧとリプレイを解放します[p]
[iscipt]
sf.ED_sijyou_bad=1;
sf.ED_sijyou_normal=1;
sf.ED_sijyou_good=1;

sf.ED_zaizen_normal=1;
sf.ED_zaizen_good=1;
sf.ED_zaizen_bad1=1;
sf.ED_zaizen_bad2=1;

sf.ED_katuraginomiya_normal=1;
sf.ED_katuraginomiya_good=1;
sf.ED_katuraginomiya_bad=1;

sf.ED_hujieda_good=1;
sf.ED_hujieda_normal=1;
sf.ED_hujieda_bad=1;
[endscipt]

*test_save
[cm]
[freeimage layer = 26]
[iscript]
localStorage.clear();
[endscript]
@jump target=test_page1
[s]

*auto
[autostart]
@jump target=test_page1
[s]

*back_test
[cm]
[freeimage layer = 26]
;test中フラグ　一時変数手紙で利用します
[eval exp="tf.test_sijyou=false"]
@jump storage="test.ks"
[s]

*title
[cm]
[freeimage layer = 26]
;test中フラグ　一時変数手紙で利用します
[eval exp="tf.test_sijyou=false"]
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
