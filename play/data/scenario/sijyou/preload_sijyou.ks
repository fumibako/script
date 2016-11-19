;==================================================
;本当は四条立ち絵を個別に入った時点で読み込みキャッシュ化しておいて
;あとは日付で内部ジャンプがしたかったのです
;今は立ち絵をプリロードしてません
;==================================================
*start
;==================================================
*first
;==================================================
;主人公プリロード
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;==================================================
*p_syujinkou
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/girl/S/base.png"]
[preload storage="data/fgimage/girl/S/base_yubi.png"]
[preload storage="data/fgimage/girl/S/base_katate.png"]
[preload storage="data/fgimage/girl/S/base_ryoute.png"]
[preload storage="data/fgimage/girl/S/mayu_yowa.png"]
[preload storage="data/fgimage/girl/S/me_fusi1.png"]
[preload storage="data/fgimage/girl/S/kuti_futuu.png"]
;[return]
;==================================================
;四条プリロード
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;==================================================
*sijyou
[preload storage="data/fgimage/sijyou/base_kimono.png"]
[preload storage="data/fgimage/sijyou/base_haori.png"]
;=====================================================
*sijyou2
;[四条眉通常]
[preload storage="data/fgimage/sijyou/mayu_futuu.png"]
;[四条眉下げ]
[preload storage="data/fgimage/sijyou/mayu_sage.png"]
;[四条眉驚き]
[preload storage="data/fgimage/sijyou/mayu_odoroki.png"]
;[四条眉困り]
[preload storage="data/fgimage/sijyou/mayu_komari.png"]
;[四条眉強気]
[preload storage="data/fgimage/sijyou/mayu_tuyoki.png"]
;目
;[四条目通常]
[preload storage="data/fgimage/sijyou/me_futuu.png"]
;[四条目大]
[preload storage="data/fgimage/sijyou/me_ake.png"]
;[四条目にこ]
[preload storage="data/fgimage/sijyou/me_niko.png"]
;[四条目伏]
[preload storage="data/fgimage/sijyou/me_fusi1.png"]
;[四条目閉じ]
[preload storage="data/fgimage/sijyou/me_toji.png"]
;[四条横目]
[preload storage="data/fgimage/sijyou/me_yoko.png"]
;[四条横伏目]
[preload storage="data/fgimage/sijyou/me_yokofusi1.png"]
;口
;[四条口通常]
[preload storage="data/fgimage/sijyou/kuti_futuu.png"]
;[四条口微笑み]
[preload storage="data/fgimage/sijyou/kuti_hohoemi.png"]
;[四条口笑顔]
[preload storage="data/fgimage/sijyou/kuti_warau_s.png"]
;[四条口笑顔大]
[preload storage="data/fgimage/sijyou/kuti_warau.png"]
;[四条口開]
[preload storage="data/fgimage/sijyou/kuti_ake.png"]
;[四条口驚き]
[preload storage="data/fgimage/sijyou/kuti_odoroki.png"]
;[四条口ムッ]
[preload storage="data/fgimage/sijyou/kuti_mu.png"]
;効果
;[四条汗]
[preload storage="data/fgimage/sijyou/emo_ase.png"]
;[四条頬染め]
[preload storage="data/fgimage/sijyou/emo_hohosome.png"]
;[四条ビンタ]
[preload storage="data/fgimage/sijyou/emo_binta.png"]
[return]
;以降は、無駄な読み込みはしない
;=======================================================================================
;・・・・・・・シナリオから呼び出し共通
;=======================================================================================
*commom
;//////////////表示準備用プリロード共通//////////////
;今は下記ないので個別にtarget呼び出し
;[preload storage="data/image/frame_red.png" wait=true]
;[layopt layer=29 visible=true]
;機能ボタン消去
;[clearfix]すると再構築に影響あると怖いのでしてません
;[layopt layer=fix visible=false]
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
;[wait time=50]
;======================================================================================
;日付フラグでジャンプ処理。必要なものだけプリロード_mtextなど字幕のなどの表示があれば下へ
;今はないので個別にシナリオにてtargetで呼び出してます。※１　スタックたまるので、このままでいいかも？

;◇プリロードサブルーチン　targetで呼び出し方法
;◆【call target=*9_3 storage="sijyou/preload_sijyou.ks"】
;======================================================================================
*9_1
;個別に呼び出してますのでいちいちマクロを書いてます。※１
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します　
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 zindex=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=50]
[image name="loding_pic1" layer=29 folder="image" zindex=2 storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]

@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*9_2
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_omoide.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_flower_hagi.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*9_3
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
;[preload storage="data/fgimage/bg/bg_prologue.jpg"]
;四条が先に表示されてしまったため解放
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyouke.jpg"]
[preload storage="data/fgimage/bg/bg_garden_isu.jpg" wait=true]
;[preload storage="data/fgimage/bg/bg_garden_isu_dark.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/rose_shigemi.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/rose_onsitsu.jpg]
[preload storage="data/fgimage/bg/B4nFWraU42/niwa_large_ike.jpg]
;[preload storage="data/fgimage/bg/B4nFWraU42/niwa_large_ike_long.jpg]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*9_4
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////使用背景メモ//////////////////
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
;どうしても全画面で文字が表示されない時がある
[preload storage="data/fgimage/bg/bg_kabuki_out.jpg"]
[preload storage="data/fgimage/bg/bg_genkan.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*10_1
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////使用背景メモ///////////////////////////////////
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*10_3
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
;機能ボタン消去の方法はとっていない
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放///
[preload storage="data/fgimage/bg/room_niwa.jpg"]
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg"]
[preload storage="data/fgimage/bg/bg_kabuki_out.jpg"]
;[preload storage="data/fgimage/bg/room_niwa_yuki.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==========================================================================
*11_1
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放//////
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
[preload storage="data/fgimage/bg/bg_ryoutei.jpg"]
[preload storage="data/fgimage/bg/test_mon.jpg" wait=true]
;=====11_2========
[preload storage="data/fgimage/bg/bg_bluesky.jpg" time=100]
[preload storage="data/fgimage/bg/test_konyaku_jikka2.jpg" wait=true]
[preload storage="data/fgimage/bg/test_sijyou_namigauara.jpg"]
[preload storage="data/fgimage/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg"]
[preload storage="data/fgimage/bg/sijyou_byouin.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*11_2
;上でプリロード。　分割が必要な時は解放
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　///////////////////////////////
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
;[preload storage="data/fgimage/bg/test_sijyou_namigauara.jpg"]
;[preload storage="data/fgimage/bg/sijyou_byouin.jpg" wait=true]
;[preload storage="data/fgimage/bg/sijyou_namigaura.jpg"]
;[preload storage="data/fgimage/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==================================================
*1_1
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ////////
[preload storage="data/fgimage/bg/oom_niwa_akarui.jpg"]
;==================================================
*2_1
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ;///////////////////////////////
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu_zentai.jpg"]
[preload storage="data/fgimage/bg/sijyou_engawa3.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==========================================================================
*2_1b
;//////使用背景メモ　上が実行されればいらない//////////////////////////////
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg"]
@jump target=end_sub
;[return]へGO
;==========================================================================
*3_1
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放///
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
;[preload storage="data/fgimage/bg/room_niwa_yoru.jpg"]
[preload storage="data/fgimage/bg/bg_genkan.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_tenrankai.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyouke.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/rose_shigemi.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==========================================================================
*3_4
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;グットエンド
;桜の表示が遅いと見えない,処理不能の為プリロード
[preload storage="data/fgimage/bg/B4nFWraU42/img_sakura_sijyou.png"]
[preload storage="data/fgimage/"bg/bg_sakura.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==========================================================================
*3_4_1
;グットエンドエピローグ

;まだないです

[return]
;==========================================================================
*end_sub
;◆[プリロード画面消去]
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
;◆[四条イベントシーン構築]
[macro name="四条イベントシーン構築"]
[clearfix]
;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]
;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=240 y=407]
[chara_config ptext="chara_name_area"]
[resetfont]
[endmacro]

[macro name=四条ボタン表示]
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
[endmacro]

;全てはここにGoします
[return]


