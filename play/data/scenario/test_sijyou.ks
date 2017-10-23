[setreplay name="test"]
*test
*start
@clearfix
[image name="loding_pic1" layer=2 folder="image" storage="junbi_cyu2.gif" left=740 top=580]
[clearstack]
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
;=============================================
*ending_Number_of_times
[iscript]
$(".tips_btn").remove;
$(".26_fore").empty();
[endscript]
;=============================================
;test
;=============================================
[chara_mod name="bg" storage="bg/title.jpg"]
[wait time=10]
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
;test中フラグ　一時変数手紙で利用します
[eval exp="tf.test_sijyou=true"]
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext name="pt,test" text="四条 華織ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold overwrite=true]
[ptext name="test" text="スクリプト作業をありがとうございました。" layer=26 size=17 x=100 y=45 color=darkslateblue]

*test_page1
[cm]
[glink target="test_replay" text="WEB版リプレイ" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=blue]
[glink name="test" target="test5_1" text="5月(磯野に相談)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink name="test2" target="test6_1" text="6月1週(夢イベント)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink name="test3" target="test7_1" text="7月1週(星)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test9_2" text="9月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test9_4" text="9月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="test9_4b" text="9月4週b" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]
[glink target="tweet" text="tweetテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=550 color=blue]
[glink target="check_event1" text="evクリアリスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=600 color=blue]

[glink target="test_replay2" text="クリアフラグ操作" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=blue]
[glink target="test10_1" text="10月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test10_3b" text="10月3週badED" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test11_1" text="11月1～3週:1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test11_1_kai" text="11月1～3週:華衣" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="test11_1b" text="11月1～3週:2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
[config_record_label color="0x99FFFF" skip=false]
;既読のみスキップ　未読はスキップしない

[iscript]
$('.white').css({ 'backgroundImage' : 'url("../play/data/image/select_waku_x500.png")' , 'background-size' : 'cover', 'background-position':'center', 'border-style' : 'none'});
$('.test2').css({ 'backgroundImage' : 'url("../play/data/image/select_waku_x500.png")' , 'background-repeat': 'no-repeat' , 'background-size' : 'contain'});
[endscript]
[glink target="test_page2" text="次のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
;ページ停止に地点にジャンプ
@jump target="*common"
[s]

*test_page2
[glink target="test1_1" text="1月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test1_1b" text="1月1週b" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test1_3" text="1月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test1_4" text="1月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test2_1" text="2月1週:1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test2_1b" text="2月1週:2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test3_1" text="3月1週:1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test3_1b" text="3月1週:2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="test3_1b_f" text="3月1週:2_文也" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]


[glink target="test3_4" text="3月4週normalEND" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test_goodED" text="goodENDエピローグ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test_credit" text="仮credit" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=blue]


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
[glink target="test2_2" text="四条バザー1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]

[glink target="test_sansaku8" text="散策8(華衣)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test_sansaku9" text="散策9" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test_sansaku10" text="散策10" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test_sansaku11" text="散策11" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test_sansaku12" text="散策12" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test_sansaku13" text="散策13" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]

[glink target="test_page2" text="前のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
[glink target="test_page4" text="次のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
;ページ停止に地点にジャンプ
@jump target="*common"

[s]


*test_page4
[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test_fumi2" text="手紙（話題）" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="*test_ibent_fumi" text="イベント用の手紙" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test_fumi3" text="飛鳥紗代子からの手紙" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test_sayoko" text="飛鳥紗代子イベント" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test_save" text="セーブデータクリア" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=blue]
[glink target="check_event" text="evクリアチェック" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test_page3" text="前のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=pink]
*common
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
[glink target="auto" text="お稽古ﾌﾗｸﾞをON" graphic="select_waku_x500.png" size=15 width="250" x=500 y=600 color=white]

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

[iscript]
$('.loding_pic1').remove();
[endscript]
[trace exp="tf.ending_Number_of_times"]
[trace exp="tf.event_Number_of_times"]
[trace exp="tf.eventSnsaku_Number_of_times"]
[s]

*test5_1
[cm]
[eval exp="f.okeiko_month = 5"]
[eval exp="f.okeiko_week = 1"]
@jump storage="sijyou/sijyou_5_1.ks"
[s]
*test6_1
[cm]
[freeimage layer = 26]
[eval exp="f.okeiko_month = 6"]
[eval exp="f.okeiko_week = 1"]
@jump storage="sijyou/sijyou_6_1.ks"
[s]

*test7_1
[cm]
[eval exp="f.okeiko_month = 7"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_7_1.ks"
[s]

*test9_1
[cm]
[eval exp="f.okeiko_month = 9"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_9_1.ks"
[s]


*test9_2
[cm]
[eval exp="f.okeiko_month = 9"]
[eval exp="f.okeiko_week = 2"]
[freeimage layer = 26]
[bg storage="toumei.gif" time=50]
@jump storage="sijyou/sijyou_9_2.ks"
[s]


*test9_3
[cm]
[freeimage layer = 26]
;glinkは自動的にcmでクリアされる
[glink text="9月3週" storage="sijyou/sijyou_9_3.ks" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink text="9月3週b" storage="sijyou/sijyou_9_3b.ks" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink text="9月3週c" storage="sijyou/sijyou_9_3c.ks" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]
[glink text="戻る" storage="test_sijyou.ks" graphic="select_waku_x500.png" size=20 width="250" x=100 y=550 color=white]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[s]


*test9_4
[cm]
[eval exp="f.okeiko_month = 9"]
[eval exp="f.okeiko_week = 4"]
[freeimage layer = 26]
[bg storage="toumei.gif" time=50]
@jump storage="sijyou/sijyou_9_4.ks"
[s]


*test9_4b
[cm]
[eval exp="f.okeiko_month = 9"]
[eval exp="f.okeiko_week = 4"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_9_4b.ks"
[s]


*test10_1
[cm]
[eval exp="f.okeiko_month = 10"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_10_1.ks"
[s]


*test10_3
[cm]
[eval exp="f.okeiko_month = 10"]
[eval exp="f.okeiko_week = 3"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_10_3.ks"
[s]


*test10_3b
[cm]
[eval exp="f.okeiko_month = 10"]
[eval exp="f.okeiko_week = 3"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_10_3_badED.ks"
[s]


*test11_1
[cm]
[eval exp="f.okeiko_month = 11"]
[eval exp="f.okeiko_week = 2"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_11_1.ks"
[s]

*test11_1_kai
[cm]
[eval exp="f.okeiko_month = 11"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_11_1_kai.ks" target=*start
[s]

*test11_1b
[cm]
[eval exp="f.okeiko_month = 11"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_11_1b.ks"
[s]

*test1_1
[cm]
[eval exp="f.okeiko_month = 1"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_1_1.ks"
[s]

*test1_1b
[cm]
[eval exp="f.okeiko_month = 1"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]

@jump storage="sijyou/sijyou_1_1b.ks"
[s]

*test1_3
[cm]
[eval exp="f.okeiko_month = 1"]
[eval exp="f.okeiko_week = 3"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_1_3_normalED.ks"
[s]

*test1_4
[cm]
[eval exp="f.okeiko_month = 1"]
[eval exp="f.okeiko_week = 4"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_1_4.ks"
[s]

*test2_1
[cm]
[eval exp="f.okeiko_month = 2"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_2_1.ks"
[s]

*test2_1b
[cm]
[eval exp="f.okeiko_month = 2"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_2_1b.ks"
[s]

*test2_2
[eval exp="f.okeiko_month = 2"]
[eval exp="f.okeiko_week = 2"]
[freeimage layer = 26]
[glink storage="sijyou/sijyou_2_2_bazar_1.ks" text="四条バザー1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink storage="sijyou/sijyou_2_2_bazar_2.ks" text="四条バザー2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]
[glink storage="sijyou/sijyou_2_2_bazar_3.ks" text="四条バザー3" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink storage="sijyou/sijyou_2_2_bazar_4.ks" text="四条バザー4" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink storage="sijyou/sijyou_2_2_bazar_5.ks" text="四条バザー5" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink storage="sijyou/sijyou_2_2_bazar_5a.ks" text="四条バザー5a" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test2_2_k" text="四条好感度高入力" graphic="select_waku_x500.png" size=15 width="250" x=400 y=300 color=white]
[s]

*test2_2_k
[eval exp="f.para_sijyou_koukando = 200"]
[iscript]
alert(f.para_sijyou_koukando);
[endscript]
@jump target=*test2_2
[s]

*test3_1
[cm]
[eval exp="f.okeiko_month = 3"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_3_1.ks"
[s]

*test3_1b
[cm]
[eval exp="f.okeiko_month = 3"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_3_1b.ks"
[s]

*test3_1b_f
[cm]
[eval exp="f.okeiko_month = 3"]
[eval exp="f.okeiko_week = 1"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_3_1b_fumiya.ks"
[s]

*test3_4
[cm]
[eval exp="f.okeiko_month = 3"]
[eval exp="f.okeiko_week = 4"]
[freeimage layer = 26]
;問題なし
@jump storage="sijyou/sijyou_3_4_goodED.ks"
[s]

*test_goodED
[cm]
[eval exp="f.okeiko_month = 3"]
[eval exp="f.okeiko_week = 4"]
[freeimage layer = 26]
;問題なし
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

*test_sayoko
[cm]
[freeimage layer = 26]
[glink storage="common_asuka.ks" text="はじめての手紙" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink storage="sijyou/event_8_week_asuka.ks" text="怪談・葉月の庭" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[s]

*tweet
[cm]
[freeimage layer = 26]
@jump storage="sijyou/01_tweet.ks
[s]

*test_replay
[cm]
[freeimage layer = 26]
@jump storage="replay2.ks
[s]

*test_replay2
;いまのところは特にeventリプレイ閉鎖は必要ないので黒田のみ
[cm]
[ptext name="test" text="CG・クリアリスト・リプレイフラグ操作" layer=26 size=17 x=100 y=50 color=darkslateblue overwrite=true]
[glink target="yes1" text="EDフラグ解放" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=blue]
[glink target="no1" text="EDフラグ閉鎖" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=black]
[glink target="test_page1" text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=blue]
[glink target=kuroda4 text="黒田event解放" size=20 width="250" x=100 y=250 color=white]
[glink target=no_page3 text="黒田event閉鎖" size=20 width="250" x=100 y=300 color=black]
[glink target=sijyou5 text="四条event解放" size=20 width="250" x=100 y=350 color=white]
[glink target=sijyou4 text="四条/散策解放" size=20 width="250" x=100 y=400 color=white]
[glink target=zaizen5 text="財前event解放" size=20 width="250" x=100 y=450 color=white]
[glink target=kt_4 text="葛城宮event解放" size=20 width="250" x=100 y=500 color=white]
[glink target=kt_5 text="葛城宮/散策解放" size=20 width="250" x=400 y=100 color=white]
[glink target=hji_1 text="藤枝event解放" size=20 width="250" x=400 y=150 color=white]

[glink target="*test_flag_bye" text="全てのフラグ閉鎖操作へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=black]
[s]

*no2
@jump target=test_page1
[s]

*no1
[cm]
[glink target=test_page1 text="黒田BAD閉鎖" exp="sf.ED_kuroda_bad=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=black]
[glink target=test_page1 text="黒田nomal閉鎖" exp="sf.ED_kuroda_normal=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=black]
[glink target=test_page1 text="黒田good閉鎖" exp="sf.ED_kuroda_good=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=black]
[glink target=test_page1 text="四条BAD閉鎖" exp="sf.ED_sijyou_bad=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=black]
[glink target=test_page1 text="四条nomal閉鎖" exp="sf.ED_sijyou_normal=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=black]
[glink target=test_page1 text="四条good閉鎖" exp="sf.ED_sijyou_good=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=black]
[glink target=test_page1 text="財前badA閉鎖" exp="sf.ED_zaizen_bad1=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=black]
[glink target=test_page1 text="財前badB閉鎖" exp="sf.ED_zaizen_bad2=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=black]
[glink target=test_page1 text="財前nomal閉鎖" exp="sf.ED_zaizen_normal=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=black]
[glink target=test_page1 text="財前good閉鎖" exp="sf.ED_zaizen_good=0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=550 color=black]
[glink target=test_page1 text="葛城宮bad閉鎖" exp="sf.ED_katuraginomiya_bad=0" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=black]
[glink target=test_page1 text="葛城宮nomak閉鎖" exp="sf.ED_katuraginomiya_normal=0" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=black]
[glink target=test_page1 text="藤枝bad1閉鎖" exp="sf.ED_hujieda_bad=0" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=black]
[glink target=test_page1 text="藤枝bad2閉鎖" exp="sf.ED_hujieda_bad2=0" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=black]
[glink target=test_page1 text="藤枝nomal閉鎖" exp="sf.ED_hujieda_normal=0" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=black]
[glink target=test_page1 text="藤枝good閉鎖" exp="sf.ED_hujieda_good=0" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=black]
[glink target=no_page3 text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=white]
@jump target=no1_common 
[s]
*no_page3
[glink target=kuroda4 text="黒田6_1閉鎖" exp="sf.event_kuroda_6_1=0" size=20 width="250" x=100 y=100 color=white]
[glink target=kuroda4 text="黒田9_1閉鎖" exp="sf.event_kuroda_9_1=0"  size=20 width="250" x=100 y=150 color=white] 
[glink target=kuroda4 text="黒田9_3閉鎖" exp="sf.event_kuroda_9_3=0"  size=20 width="250" x=100 y=200 color=white] 
[glink target=kuroda4 text="黒田9_4閉鎖" exp="sf.event_kuroda_9_4=0" size=20 width="250" x=100 y=250 color=white]
[glink target=kuroda4 text="黒田10_3閉鎖" exp="sf.event_kuroda_10_3=0" size=20 width="250" x=100 y=300 color=white] 
[glink target=kuroda4 text="黒田10_4閉鎖" exp="sf.event_kuroda_10_4=0" size=20 width="250" x=100 y=350 color=white]
[glink target=kuroda4 text="黒田11_1閉鎖" exp="sf.event_kuroda_11_1=0" size=20 width="250" x=100 y=400 color=white]
[glink target=kuroda4 text="黒田11_2閉鎖" exp="sf.event_kuroda_11_2=0" size=20 width="250" x=100 y=450 color=white] 
[glink target=kuroda4 text="黒田11_3閉鎖" exp="sf.event_kuroda_11_3=0" size=20 width="250" x=100 y=500 color=white]

[glink target=kuroda4 text="黒田11_4閉鎖" exp="sf.event_kuroda_11_4=0" size=20 width="250" x=400 y=100 color=white]
[glink target=kuroda4 text="黒田12_2閉鎖" exp="sf.event_kuroda_12_2=0" size=20 width="250" x=400 y=150 color=white]
[glink target=kuroda4 text="黒田12_3閉鎖" exp="sf.event_kuroda_12_3=0" size=20 width="250" x=400 y=200 color=white] 
[glink target=kuroda4 text="黒田1_1閉鎖" exp="sf.event_kuroda_1_1=0" size=20 width="250" x=400 y=250 color=white] 
[glink target=kuroda4 text="黒田1_4閉鎖" exp="sf.event_kuroda_1_4=0" size=20 width="250" x=400 y=300 color=white]  
[glink target=kuroda4 text="黒田2_2閉鎖" exp="sf.event_kuroda_2_2=0" size=20 width="250" x=400 y=350 color=white]
[glink target=_page4 text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=white]
@jump target=no1_cmmon 
[s]

*no1_common
[glink target=test_page1 text="戻る" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=white]
[s]

@jump target=test_page1

*yes1
[glink target="no2" text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=blue]
[glink target=*kuroda_1 text="黒田バッド"  exp="sf.ED_kuroda_bad=1" size=20 width="250" x=100 y=150 color=blue]
[glink target=*kuroda_2 text="黒田ノーマル" exp="sf.ED_kuroda_normal=1" size=20 width="250" x=100 y=200 color=blue]
[glink target=*kuroda_3 text="黒田グッド" exp="sf.ED_kuroda_good=1" size=20 width="250" x=100 y=250 color=blue]
[glink target=*sijyou_1 text="四条バッド" exp="sf.ED_sijyou_bad=1;" size=20 width="250" x=100 y=300 color=blue]
[glink target=*sijyou_2 text="四条ノーマル" exp="sf.ED_sijyou_normal=1" size=20 width="250" x=100 y=350 color=blue]
[glink target=*sijyou_3 text="四条グッド" exp="sf.ED_sijyou_good=1" size=20 width="250" x=100 y=400 color=blue]
[glink target=*zaizen_1 text="財前バッドＡ" exp="sf.ED_zaizen_bad1=1" size=20 width="250" x=100 y=450 color=blue]
[glink target=*zaizen_2 text="財前バッドＢ" exp="sf.ED_zaizen_bad2=1" size=20 width="250" x=100 y=500 color=blue]
[glink target=*zaizen_3 text="財前ノーマル" exp="sf.ED_zaizen_normal=1" size=20 width="250" x=100 y=550 color=blue]
[glink target=*zaizen_4 text="財前グッド" exp="sf.ED_zaizen_good=1" size=20 width="250" x=100 y=600 color=blue]

[glink target=*kt_1 text="葛城宮バッド" exp="sf.ED_katuraginomiya_bad=1" size=20 width="250" x=500 y=100 color=blue]
[glink target=*kt_2 text="葛城宮ノーマル" exp="sf.ED_katuraginomiya_normal=1" size=20 width="250" x=500 y=150 color=blue]
[glink target=*kt_3 text="葛城宮グッド" exp="sf.ED_katuraginomiya_good=1" size=20 width="250" x=500 y=200 color=blue]
[glink target=*hji_1 text="藤枝バッドA" exp="sf.ED_hujieda_bad=1" size=20 width="250" x=500 y=250 color=blue]
[glink target=*hji_2 text="藤枝バッドB" exp="sf.ED_hujieda_bad2=1" size=20 width="250" x=500 y=300 color=blue]
[glink target=*hji_3 text="藤枝ノーマル" exp="sf.ED_hujieda_normal=1" size=20 width="250" x=500 y=350 color=blue]
[glink target=*hji_4 text="藤枝グッド" exp="sf.ED_hujieda_good=1" size=20 width="250" x=500 y=400 color=blue]
[s]
*kuroda_1
*kuroda_2
*kuroda_3
@jump target=yes1
*kuroda4
[cm]
[glink target=kuroda4 text="黒田6_1" exp="sf.event_kuroda_6_1=1" size=20 width="250" x=100 y=100 color=blue]
[glink target=kuroda4 text="黒田9_1" exp="sf.event_kuroda_9_1=1"  size=20 width="250" x=100 y=150 color=blue] 
[glink target=kuroda4 text="黒田9_3" exp="sf.event_kuroda_9_3=1"  size=20 width="250" x=100 y=200 color=blue] 
[glink target=kuroda4 text="黒田9_4" exp="sf.event_kuroda_9_4=1" size=20 width="250" x=100 y=250 color=blue]
[glink target=kuroda4 text="黒田10_3" exp="sf.event_kuroda_10_3=1" size=20 width="250" x=100 y=300 color=blue] 
[glink target=kuroda4 text="黒田10_4" exp="sf.event_kuroda_10_4=1" size=20 width="250" x=100 y=350 color=blue]
[glink target=kuroda4 text="黒田11_1" exp="sf.event_kuroda_11_1=1" size=20 width="250" x=100 y=400 color=blue]
[glink target=kuroda4 text="黒田11_2" exp="sf.event_kuroda_11_2=1" size=20 width="250" x=100 y=450 color=blue] 
[glink target=kuroda4 text="黒田11_3" exp="sf.event_kuroda_11_3=1" size=20 width="250" x=100 y=500 color=blue]

[glink target=kuroda4 text="黒田11_4" exp="sf.event_kuroda_11_4=1" size=20 width="250" x=400 y=100 color=blue]
[glink target=kuroda4 text="黒田12_2" exp="sf.event_kuroda_12_2=1" size=20 width="250" x=400 y=150 color=blue]
[glink target=kuroda4 text="黒田12_3" exp="sf.event_kuroda_12_3=1" size=20 width="250" x=400 y=200 color=blue] 
[glink target=kuroda4 text="黒田1_1" exp="sf.event_kuroda_1_1=1" size=20 width="250" x=400 y=250 color=blue] 
[glink target=kuroda4 text="黒田1_4" exp="sf.event_kuroda_1_4=1" size=20 width="250" x=400 y=300 color=blue]  
[glink target=kuroda4 text="黒田2_2" exp="sf.event_kuroda_2_2=1" size=20 width="250" x=400 y=350 color=blue]
[glink target=test_replay2 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=blue]
[s]
*sijyou_1
*sijyou_2
*sijyou_3
@jump target=yes1
*sijyou4
[glink target="sijyou4" text="四条散策1" exp="sf.event_sijyou_sansaku=1" size=20 width="250" x=100 y=100 color=blue]
[glink target="sijyou4" text="四条散策2" exp="sf.event_sijyou_sansaku_2=1" size=20 width="250" x=100 y=150 color=blue]
[glink target="sijyou4" text="四条散策3" exp="sf.event_sijyou_sansaku_3=1" size=20 width="250" x=100 y=200 color=blue]
[glink target="sijyou4" text="四条散策4" exp="sf.event_sijyou_sansaku_4=1" size=20 width="250" x=100 y=250 color=blue]
[glink target="sijyou4" text="四条散策5" exp="sf.event_sijyou_sansaku_5=1" size=20 width="250" x=100 y=300 color=blue]
[glink target="sijyou4" text="四条散策6" exp="sf.event_sijyou_sansaku_6=1" size=20 width="250" x=100 y=350 color=blue]
[glink target="sijyou4" text="四条散策7" exp="sf.event_sijyou_sansaku_7=1" size=20 width="250" x=100 y=400 color=blue]
[glink target="sijyou4" text="四条散策9" exp="sf.event_sijyou_sansaku_9=1" size=20 width="250" x=100 y=450 color=blue]
[glink target="sijyou4" text="四条散策10" exp="sf.event_sijyou_sansaku_10=1" size=20 width="250" x=100 y=500 color=blue]

[glink target="sijyou4" text="四条散策11" exp="sf.event_sijyou_sansaku_11=1" size=20 width="250" x=400 y=100 color=blue]
[glink target="sijyou4" text="四条散策12" exp="sf.event_sijyou_sansaku_12=1" size=20 width="250" x=400 y=150 color=blue]
[glink target="sijyou4" text="四条散策13" exp="sf.event_sijyou_sansaku_13=1" size=20 width="250" x=400 y=200 color=blue]
[glink target=test_replay2 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=blue]
[s]
*sijyou5
[cm]
[glink target="sijyou5" text="四条6_1" exp="sf.event_sijyou_event_6_1=1" size=20 width="250" x=100 y=100 color=blue]
[glink target="sijyou5" text="四条9_1"exp="sf.event_sijyou_9_1=1" size=20 width="250" x=100 y=150 color=blue]
[glink target="sijyou5" text="四条9_2"exp="sf.event_sijyou_9_2=1" size=20 width="250" x=100 y=200 color=blue]
[glink target="sijyou5" text="四条9_3"exp="sf.event_sijyou_9_3=1" size=20 width="250" x=100 y=250 color=blue]
[glink target="sijyou5" text="四条9_4"exp="sf.event_sijyou_9_4=1" size=20 width="250" x=100 y=300 color=blue]
[glink target="sijyou5" text="四条10_1"exp="sf.event_sijyou_10_1=1" size=20 width="250" x=100 y=350 color=blue]
[glink target="sijyou5" text="四条10_3"exp="sf.event_sijyou_10_3=1" size=20 width="250" x=100 y=400 color=blue]
[glink target="sijyou5" text="四条11_1"exp="sf.event_sijyou_11_1=1" size=20 width="250" x=100 y=450 color=blue]

[glink target="sijyou5" text="四条1_1"exp="sf.event_sijyou_1_1=1" size=20 width="250" x=400 y=100 color=blue]
[glink target="sijyou5" text="四条1_3"exp="sf.event_sijyou_1_3=1" size=20 width="250" x=400 y=150 color=blue]
[glink target="sijyou5" text="四条1_4"exp="sf.event_sijyou_1_4=1" size=20 width="250" x=400 y=200 color=blue]
[glink target="sijyou5" text="四条2_1"exp="sf.event_sijyou_2_1=1" size=20 width="250" x=400 y=250 color=blue]
[glink target="sijyou5" text="四条2_2"exp="sf.event_sijyou_2_2_bazar=1" size=20 width="250" x=400 y=300 color=blue]
[glink target=test_replay2 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=blue]
[s]

*zaizen_1
*zaizen_2
*zaizen_3
*zaizen_4
@jump target=yes1
[s]
*zaizen_5
[cm]
[glink target="zaizen5" text="財前6_1" exp="sf.event_zaizen_event_6_1" size=20 width="250" x=100 y=100 color=blue]
[glink target="zaizen5" text="財前9_1" exp="sf.event_zaizen_9_1" size=20 width="250" x=100 y=150 color=blue]
[glink target="zaizen5" text="財前9_3" exp="sf.event_zaizen_9_3" size=20 width="250" x=100 y=200 color=blue]
[glink target="zaizen5" text="財前10_1" exp="sf.event_zaizen_10_1" size=20 width="250" x=100 y=250 color=blue]
[glink target="zaizen5" text="財前10_3" exp="sf.event_zaizen_10_3" size=20 width="250" x=100 y=300 color=blue]
[glink target="zaizen5" text="財前11_1" exp="sf.event_zaizen_11_1" size=20 width="250" x=100 y=350 color=blue]
[glink target="zaizen5" text="財前11_3" exp="sf.event_zaizen_11_3" size=20 width="250" x=100 y=400 color=blue]
[glink target="zaizen5" text="財前11_4" exp="sf.event_zaizen_11_4" size=20 width="250" x=100 y=450 color=blue]
[glink target="zaizen5" text="財前12_2" exp="sf.event_zaizen_12_2" size=20 width="250" x=100 y=500 color=blue]
[glink target="zaizen5" text="財前12_4" exp="sf.event_zaizen_12_4" size=20 width="250" x=400 y=100 color=blue]
[glink target="zaizen5" text="財前1_3" exp="sf.event_zaizen_1_3" size=20 width="250" x=400 y=150 color=blue]
[glink target="zaizen5" text="財前2_1" exp="sf.event_zaizen_sansaku_2_1" size=20 width="250" x=400 y=200 color=blue]
[glink target="zaizen5" text="財前bazaar" exp="sf.event_zaizen_sansaku_bazar" size=20 width="250" x=400 y=250 color=blue]
[glink target=test_replay2 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=blue]
[s]

*kt_1
*kt_2 
*kt_3
[iscript]
sf.replay_katuraginomiya=1;
[endscript]
@jump target=yes1
*kt_4
[glink target="kt_4" text="葛城宮event_1" exp="sf.event_katuragi_event_1=1" size=20 width="250" x=100 y=100 color=blue]
[glink target="kt_4" text="葛城宮event_2" exp="sf.event_katuragi_event_2=1" size=20 width="250" x=100 y=150 color=blue]
[glink target="kt_4" text="葛城宮event_3" exp="sf.event_katuragi_event_3=1" size=20 width="250" x=100 y=200 color=blue]
[glink target="kt_4" text="葛城宮6_1" exp="sf.event_katuragi_6_1=1" size=20 width="250" x=100 y=250 color=blue]
[glink target="kt_4" text="葛城宮9_1" exp="sf.event_katuragi_9_1=1" size=20 width="250" x=100 y=300 color=blue]
[glink target="kt_4" text="葛城宮9_3" exp="sf.event_katuragi_9_3=1" size=20 width="250" x=100 y=350 color=blue]
[glink target="kt_4" text="葛城宮9_4" exp="sf.event_katuragi_9_4=1" size=20 width="250" x=100 y=400 color=blue]
[glink target="kt_4" text="葛城宮10_2" exp="sf.event_katuragi_10_2=1" size=20 width="250" x=100 y=450 color=blue]
[glink target="kt_4" text="葛城宮10_3" exp="sf.event_katuragi_10_3=1" size=20 width="250" x=100 y=500 color=blue]

[glink target="kt_4" text="葛城宮11_1"	exp="sf.event_katuragi_11_1=1" size=20 width="250" x=400 y=100 color=blue]
[glink target="kt_4" text="葛城宮11_4" exp="sf.event_katuragi_11_4=1" size=20 width="250" x=400 y=150 color=blue]
[glink target="kt_4" text="葛城宮12_1" exp="sf.event_katuragi_12_1=1" size=20 width="250" x=400 y=200 color=blue]
[glink target="kt_4" text="葛城宮1_3" exp="sf.event_katuragi_1_3=1" size=20 width="250" x=400 y=350 color=blue]
[glink target="kt_4" text="葛城宮2_2" exp="sf.event_katuragi_2_2=1" size=20 width="250" x=400 y=400 color=blue]
[glink target="kt_4" text="葛城宮bazaar" exp="sf.event_katuragi_bazar=1" size=20 width="250" x=400 y=450 color=blue]
[glink target=test_replay2 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=blue]
[s]
*kt_5
[glink target="kt_4" text="葛城宮sansaku1" exp="sf.event_katuragi_sansaku1" size=20 width="250" x=100 y=100 color=blue]
[glink target="kt_4" text="葛城宮sansaku2" exp="sf.event_katuragi_sansaku2" size=20 width="250" x=100 y=100 color=blue]
[glink target=test_replay2 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=blue]
[s]

*hji_2
*hji_3
*hji_4
*hji_5
[iscript]
sf.replay_hujieda=1;
[endscript]
@jump target=yes1
*hji_1
[glink target="hji_5" text="藤枝4_4" exp="sf.event_hujieda_4_4=1" size=20 width="250" x=100 y=100 color=blue]
[glink target="hji_5" text="藤枝5_4" exp="sf.event_hujieda_5_4=1" size=20 width="250" x=100 y=150 color=blue]
[glink target="hji_5" text="藤枝6_1" exp="sf.event_hujieda_6_1=1" size=20 width="250" x=100 y=200 color=blue]
[glink target="hji_5" text="藤枝6_4" exp="sf.event_hujieda_6_4=1" size=20 width="250" x=100 y=250 color=blue]
[glink target="hji_5" text="藤枝7_4" exp="sf.event_hujieda_7_4=1" size=20 width="250" x=100 y=300 color=blue]
[glink target="hji_5" text="藤枝8_4" exp="sf.event_hujieda_8_4=1" size=20 width="250" x=100 y=350 color=blue]
[glink target="hji_5" text="藤枝9_1" exp="sf.event_hujieda_9_1=1" size=20 width="250" x=100 y=400 color=blue]
[glink target="hji_5" text="藤枝9_2" exp="sf.event_hujieda_9_2=1" size=20 width="250" x=100 y=450 color=blue]
[glink target="hji_5" text="藤枝9_4" exp="sf.event_hujieda_9_4=1" size=20 width="250" x=100 y=500 color=blue]
[glink target="hji_5" text="藤枝10_1" exp="sf.event_hujieda_10_1=1" size=20 width="250" x=400 y=100 color=blue]
[glink target="hji_5" text="藤枝10_3" exp="sf.event_hujieda_10_3=1" size=20 width="250" x=400 y=150 color=blue]
[glink target="hji_5" text="藤枝11_1" exp="sf.event_hujieda_11_1=1" size=20 width="250" x=400 y=200 color=blue]
[glink target="hji_5" text="藤枝11_3" exp="sf.event_hujieda_11_3=1" size=20 width="250" x=400 y=250 color=blue]
[glink target="hji_5" text="藤枝12_3" exp="sf.event_hujieda_12_3=1" size=20 width="250" x=400 y=300 color=blue]
[glink target="hji_5" text="藤枝1_3" exp="sf.event_hujieda_1_3=1" size=20 width="250" x=400 y=350 color=blue]
[glink target="hji_5" text="藤枝2_3" exp="sf.event_hujieda_2_3=1" size=20 width="250" x=400 y=400 color=blue]
[glink target="hji_5" text="藤枝バザー" exp="sf.event_hujieda_bazaar=1" size=20 width="250" x=400 y=450 color=blue]
[glink target="hji_5" text="藤枝散策" exp="sf.event_hujieda_sansaku1=1" size=20 width="250" x=400 y=500 color=blue]
[glink target=test_replay2 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=550 color=blue]
[s]


*check_event1
[eval exp="f.clearlist_out_storage ='test_sijyou.ks'"]
@jump storage="sijyou/sijyou_event_clearlist.ks"
[s]

*check_event
[call storage="eventpercent_sijyou.ks" target=*start]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
;[bg storage="../fgimage/bg/bg_web_blue.jpg" time=0]
[ptext name="num_times,test" text="クリア回数＝" layer=26 size=17 x=100 y=65 color=darkslateblue]
[ptext name="num_time,test" text=&sf.ending_Number_of_times layer=26 size=17 x=190 y=65 color=darkslateblue overwrite=true]
[ptext name="num_times,test" text="四条ルート既プレイ数＝" layer=26 size=17 x=100 y=85 color=darkslateblue]
[ptext name="num_time1,test" text=&tf.event_Number_of_times layer=26 size=17 x=275 y=85 color=darkslateblue overwrite=true]

[ptext text="四条6_1" layer=26 size=17 x=100 y=100 color=darkslateblue]
[ptext name="num_time3" text=&sf.event_sijyou_event_6_1 layer=26 size=17 x=315 y=100 color=darkslateblue overwrite=true]
[ptext text="四条9_2" layer=26 size=17 x=100 y=150 color=darkslateblue]
[ptext name="num_time4" text=&sf.event_sijyou_9_2 layer=26 size=17 x=315 y=150 color=darkslateblue overwrite=true]
[ptext text="四条9_3" layer=26 size=17 x=100 y=200 color=darkslateblue]
[ptext name="num_time5" text=&sf.event_sijyou_9_3 layer=26 size=17 x=315 y=200 color=darkslateblue overwrite=true]
[ptext text="四条9_4" layer=26 size=17 x=100 y=250 color=darkslateblue]
[ptext name="num_time6" text=&sf.event_sijyou_9_4 layer=26 size=17 x=315 y=250 color=darkslateblue overwrite=true]
[ptext text="四条10_1" layer=26 size=17 x=100 y=300 color=darkslateblue]
[ptext name="num_time7" text=&sf.event_sijyou_10_1 layer=26 size=17 x=315 y=300 color=darkslateblue overwrite=true]
[ptext text="四条10_3" layer=26 size=17 x=100 y=350 color=darkslateblue]
[ptext name="num_time8" text=&sf.event_sijyou_10_3 layer=26 size=17 x=315 y=350 color=darkslateblue overwrite=true]
[ptext text="四条11_1" layer=26 size=17 x=100 y=400 color=darkslateblue]
[ptext name="num_time9" text=&sf.event_sijyou_11_1 layer=26 size=17 x=315 y=400 color=darkslateblue overwrite=true]
[ptext text="四条1_1" layer=26 size=17 x=100 y=450 color=darkslateblue]
[ptext name="num_time10" text=&sf.event_sijyou_1_1 layer=26 size=17 x=315 y=450 color=darkslateblue overwrite=true]
[ptext text="四条1_3" layer=26 size=17 x=100 y=500 color=darkslateblue]
[ptext name="num_time11" text=&sf.event_sijyou_1_3 layer=26 size=17 x=315 y=500 color=darkslateblue overwrite=true]
[ptext text="四条1_4" layer=26 size=17 x=100 y=550 color=darkslateblue]
[ptext name="num_time12" text=&sf.event_sijyou_1_4 layer=26 size=17 x=315 y=550 color=darkslateblue overwrite=true]
[ptext text="四条2_1" layer=26 size=17 x=100 y=600 color=darkslateblue]
[ptext name="num_time13" text=&sf.event_sijyou_2_1 layer=26 size=17 x=315 y=600 color=darkslateblue overwrite=true]
[ptext text="四条2_2" layer=26 size=17 x=400 y=100 color=darkslateblue]
[ptext name="num_time13" text=&sf.event_sijyou_2_2_bazar layer=26 size=17 x=615 y=100 color=darkslateblue overwrite=true]
[glink target="ending_Number_of_times" text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=blue]
[s]

*test_save
[cm]
[freeimage layer = 26]
[iscript]
localStorage.clear();
[endscript]
*test_flag_bye
[glink target="yes11" text="システムフラグ閉鎖(タイトルへ)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=blue]
[glink target="no11" text="ゲームフラグ閉鎖" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=blue]
[glink target="no22" text="おわる" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=blue]
[s]

*yes11
[clearsysvar]
[iscript]
alert("エラー防止のため再度WEBページを更新します");
location.reload();
[endscript]
[s]
*no11
[clearvar]
[iscript]
aleat("エラー防止のため再度WEBページを更新します");
location.reload();
[endscript]
[s]

*no22
@jump target=test_page1
[s]

*auto
;[if exp="this.kag.stat.is_auto != true"]
;[autostart]
;[else]
;[autostop]
;[endif]
[ptext name=pt overwrite=true	text="お稽古中であるジャンプ演出のみの検査です。予期しない動作の不良は含まないテストです。リセットを忘れないで下さい" layer=26 size=10 x=100 y=20 color=darkslateblue bold=bold]
[glink target="test_okeiko1" text="はい" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=blue]
[glink target="test_no_okeiko" text="いいえ（フラグを消す）" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=blue]
[s]
*test_okeiko1
[eval exp="f.okeiko_gamen = true"]
[cm]
@jump target=test_page1
*test_no_okeiko
[cm]
[eval exp="f.okeiko_gamen = false"]
@jump target=test_page1
[s]




*back_test
[cm]
[freeimage layer = 26]
[eval exp="f.okeiko_gamen = false"]
;test中フラグ　一時変数手紙で利用します
[eval exp="tf.test_sijyou=false"]
[call target = *start storage = "01_sijyou_hensuu.ks"]
[call target = *start storage = "hensuu.ks"]
@jump storage="test.ks"
[iscript]
this.kag.config.unReadTextSkip = true
[endscript]
[s]

*title
[cm]
[freeimage layer = 26]
[eval exp="f.okeiko_gamen = false"]
;test中フラグ　一時変数手紙で利用します
[eval exp="tf.test_sijyou=false"]
[eval exp="f.para_sijyou_koukando = 10"]
[call target = *start storage = "01_sijyou_hensuu.ks"]
[call target = *start storage = "hensuu.ks"]
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
