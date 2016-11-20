;=====================================================================================
*start
;◇プリロードサブルーチン 主人公表示までの幕の役割
;targetで呼び出し方法
;◆【call target=*9_3 storage="sijyou/preload_hujieda.ks"】
;=====================================================================================
*first
;make.ksで使用する際、ここに共通の読み込みを書きます。今はないのでここは書いてません。
@jump target=end_sub0
;無駄な読み込みしない
;=======================================================================================
;◇プリロードサブルーチン　targetで呼び出し方法　シナリオで呼び出し設定してます。
;◆【call target=*9_3 storage="zaizen/preload_sijyou.ks"】*イベント名のラベルを追加していきます。
;シーンを希望してください。追加します。
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します
;◆画面消去　[プリロード画面消去]
;======================================================================================
*9_1
;ルート決定
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]


;======================================================================================
;
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面が今はないのです
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]


;========================================================================================
;藤枝立ち絵を個別に入った時点で読み込みキャッシュ化しておきます。
;藤枝プリロード
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;=========================================================================================
*hujieda
;立ち絵表示[藤枝ベース]
[preload storage="data/fgimage/hujieda/base_sifuku.png" wait=true]
;立ち絵表示[藤枝郵便局員服]
[preload storage="data/fgimage/hujiedan/base_yuubin.png" wait=true]
;[藤枝眉通常]
[preload storage="data/fgimage/hujieda/mayu_futuu.png" wait=true]
;[藤枝眉下げ]
[preload storage="data/fgimage/hujieda/mayu_sage.png" wait=true]
;[藤枝眉驚き]
[preload storage="data/fgimage/hujieda/mayu_odoroki.png" wait=true]
;[藤枝眉困り]
[preload storage="data/fgimage/hujieda/mayu_komari.png" wait=true]
;[藤枝眉強気]
[preload storage="data/fgimage/hujieda/mayu_tuyoki.png" wait=true]
;[藤枝眉平行]
[preload storage="data/fgimage/hujieda/mayu_heikou.png" wait=true]
;藤枝目
;[藤枝目通常]
[preload storage="data/fgimage/hujieda/me_futuu.png" wait=true]
;[藤枝目大]
[preload storage="data/fgimage/hujieda/me_ake.png" wait=true]
;[藤枝目にこ]
[preload storage="data/fgimage/hujieda/me_niko.png" wait=true]
;[藤枝目伏]
[preload storage="data/fgimage/hujieda/me_fusi1.png" wait=true]
;[藤枝目閉じ]
[preload storage="data/fgimage/hujieda/me_toji.png" wait=true]
;[藤枝横目]
[preload storage="data/fgimage/hujieda/me_yoko.png" wait=true]
;[藤枝横伏目]

;藤枝口
[preload storage="data/fgimage/hujieda/me_yokofusi1.png" wait=true]
;[藤枝口通常]
[preload storage="data/fgimage/hujieda/kuti_futuu.png" time=0]
;[藤枝口微笑み]
[preload storage="data/fgimage/hujieda/kuti_hohoemi.png" time=0]
;[藤枝口笑顔]
[preload storage="data/fgimage/hujieda/kuti_warau_s.png" time=0]
;[藤枝口笑顔大]
[preload storage="data/fgimage/hujieda/kuti_warau.png" time=0]
;[藤枝口開]
[preload storage="data/fgimage/hujieda/kuti_ake.png" time=0]
;[藤枝口大開]
[preload storage="data/fgimage/hujieda/kuti_ooake.png" time=0]
;[藤枝口驚き]
[preload storage="data/fgimage/hujieda/kuti_odoroki.png" time=0]
;[藤枝口ムッ]
[preload storage="data/fgimage/hujieda/kuti_mu.png" time=0]
;[藤枝汗]
[preload storage="data/fgimage/hujieda/emo_ase.png" time=0]
;[藤枝頬染め]
[preload storage="data/fgimage/hujieda/emo_hohosome.png" time=0]

;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;======================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
;*
;*イベント名のラベルを追加していきます。
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]



;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================












;======================================================================================
*end_sub
;!!!!!!!!!!!全てはここにGoします。以下は、消さないでください!!!!!!!!!!!!!!
[cm]
;========================================================================================
*end_sub0
;◆[プリロード画面消去]
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]
;=====================================================================================
;ほかにマクロがあればここに記述↓
;=====================================================================================


;====================================================================================
;!!!!!!!!!!!全てはここにGoします。ここは、消さないでください!!!!!!!!!!!!!!!!!!!!!!
[return]
;===================================================================================
