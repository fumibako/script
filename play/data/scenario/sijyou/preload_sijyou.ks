;==================================================
;本当は四条立ち絵を個別に入った時点で読み込みキャッシュ化しておいて
;あとは日付で内部ジャンプがしたかったのです
;==================================================
*start
*first
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[return]
;消去のタイミングは各シナリオで違うのでマクロに。通常は上から呼び出しでサブルーチンファイルを実行等
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
=======================================================================================
;//////////////表示準備用プリロード共通//////////////
;今は下記ないので個別にtarget呼び出し
;[preload storage="data/image/frame_red.png" wait=true]
;[layopt layer=29 visible=true]
;[layopt layer=fix visible=false]
;[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
;[wait time=50]
;======================================================================================
;日付・ジャンプ処理で必要なものだけプリロード_字幕のなどの表示があれば下へ
;今はないので個別にシナリオにて　ここからtarget呼び出してます。


;======================================================================================
*9_1
;個別に呼び出してますのでいちいちマクロを書いてます。
;幕の役割なので、消すタイミングはシナリオで決定します　
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]

[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 zindex=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" zindex=2 storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
[return]
;======================================================================================
*9_2
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_omoide.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42bg/bg_flower_hagi.jpg"]
[return]
;======================================================================================
*9_3
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[return]
;======================================================================================
*9_4
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////使用背景メモ//////////////////
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
;どうしても全画面で文字が表示されない時がある
;[preload storage="data/fgimage/bg/bg_kabuki_out.jpg"]
;[preload storage="data/fgimage/bg/bg_genkan.jpg"]
[return]
;======================================================================================
*10_1
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////使用背景メモ///////////////////////////////////
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
[return]
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
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放///
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
;[preload storage="data/fgimage/bg/room_niwa_yoru.jpg"]
;[preload storage="data/fgimage/bg/bg_kabuki_out.jpg"]
;[preload storage="data/fgimage/bg/room_niwa_yuki.jpg"]
[return]
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
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放//////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg"]
;[preload storage="data/fgimage/bg/test_mon.jpg"]
;[preload storage="data/fgimage/bg/test_konyaku_jikka2.jpg"]
;[preload storage="data/fgimage/bg/bg_prologue.jpg"]
[return]
;///////////////////////////////////////////////////////
;======================================================================================
*11_2
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　///////////////////////////////
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
;[preload storage="data/fgimage/bg/test_sijyou_namigauara.jpg"]
;[preload storage="data/fgimage/bg/sijyou_namigaura.jpg"]
;[preload storage="data/fgimage/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg"]
[return]
;==================================================
*2_1
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ;///////////////////////////////
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu_zentai.jpg"]
[preload storage="data/fgimage/bg/sijyou_engawa3.jpg" wait=true]
[return]
;==========================================================================
*2_1b
;//////使用背景メモ　上が実行されればいらない//////////////////////////////
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg"]
[return]
;==========================================================================
*3_1
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放///
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
;[preload storage="data/fgimage/bg/room_niwa_yoru.jpg"]
;[preload storage="data/fgimage/bg/bg_genkan.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_tenrankai.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyouke.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/rose_shigemi.jpg"]
[return]
;==========================================================================
*3_4
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic"layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;グットエンド
;桜の表示が遅いと見えない,処理不能の為プリロード
[preload storage="data/fgimage/bg/B4nFWraU42/img_sakura_sijyou.png"]
[preload storage="data/fgimage/"bg/bg_sakura.jpg"]
;==========================================================================
*3_4_1
;グットエンドエピローグ



[return]
;==========================================================================
]



