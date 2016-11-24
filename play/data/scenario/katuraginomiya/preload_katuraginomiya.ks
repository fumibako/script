;======================================================================================
*start
;◇プリロードサブルーチン 主人公表示までの幕の役割
;◇作業中
;◆targetで呼び出し方法
;◇【[call target=*event_1 storage="sijyou/preload_katuraginomiya.ks"]】
;◇【[call target=*9_1 storage="sijyou/preload_katuraginomiya.ks"]】
;======================================================================================
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
*event_1
;出会い
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】町
[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;【背景】お稽古部屋
[preload storage="data/fgimage/bg/bg_okeiko.jpg"]
;【背景】町　回想シーン用
[preload storage="data/fgimage/bg/bg_machi_omoide.jpg" wait=true]
;================================================================================================
;葛城宮立ち絵を個別に入った時点で読み込みキャッシュ化しておきます。
;立ち絵だけ読み込みたい場合はキャラ名で呼びだしてください
;葛城宮プリロード
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;=================================================================================================
*katuraginomiya
;立ち絵表示[葛城宮ベース軍服]
[preload storage="data/fgimage/katuraginomiya/base_gunpuku.png" wait=true]
;立ち絵表示[葛城宮ベース私服]
[preload storage="data/fgimage/katuraginomiya/base_sifuku.png" wait=true]
;============
;葛城宮眉
;葛城宮眉通常
[preload storage="data/fgimage/katuraginomiya/mayu_futuu.png" wait=true]
;葛城宮眉下げ
[preload storage="data/fgimage/katuraginomiya/mayu_sage.png" wait=true]
;葛城宮眉困り
[preload storage="data/fgimage/katuraginomiya/mayu_komari.png" wait=true]
;葛城宮眉強気
[preload storage="data/fgimage/katuraginomiya/mayu_tuyoki.png" wait=true]
;葛城宮眉驚き
[preload storage="data/fgimage/katuraginomiya/mayu_odoroki.png" wait=true]
;葛城宮眉怒り
[preload storage="data/fgimage/katuraginomiya/mayu_okori.png" wait=true]
;============
;葛城宮目
[preload storage="data/fgimage/katuraginomiya/me_futuu.png" wait=true]
;葛城宮目大
[preload storage="data/fgimage/katuraginomiya/me_ake.png" wait=true]
;葛城宮目にこ
[preload storage="data/fgimage/katuraginomiya/me_niko.png" wait=true]
;葛城宮目伏
[preload storage="data/fgimage/katuraginomiya/me_fusi1.png" wait=true]
;葛城宮目閉じ
[preload storage="data/fgimage/katuraginomiya/me_toji.png" wait=true]
;葛城宮横目
[preload storage="data/fgimage/katuraginomiya/me_yoko.png" wait=true]
;葛城宮横伏目
[preload storage="data/fgimage/katuraginomiya/me_yokofusi1.png" wait=true]
;============
;葛城宮口通常
[preload storage="data/fgimage/katuraginomiya/kuti_futuu.png" wait=true]
;葛城宮口開
[preload storage="data/fgimage/katuraginomiya/kuti_ake.png" wait=true]
;葛城宮口大開
[preload storage="data/fgimage/katuraginomiya/kuti_ooake.png" wait=true]
;[葛城宮口微笑み
[preload storage="data/fgimage/katuraginomiya/kuti_hohoemi.png" wait=true]
;[葛城宮口笑顔
[preload storage="data/fgimage/katuraginomiya/kuti_warau_s.png" wait=true]
;[葛城宮口笑顔大
[preload storage="data/fgimage/katuraginomiya/kuti_warau.png" wait=true]
;[葛城宮口驚き
[preload storage="data/fgimage/katuraginomiya/kuti_odoroki.png" wait=true]
;葛城宮口ムッ
[preload storage="data/fgimage/katuraginomiya/kuti_mu.png" wait=true]
;葛城宮口怒り
[preload storage="data/fgimage/katuraginomiya/kuti_okori.png" wait=true]
;[葛城宮汗]
[preload storage="data/fgimage/katuraginomiya/emo_ase.png" wait=true]
;[葛城宮頬染め]
[preload storage="data/fgimage/katuraginomiya/emo_hohosome.png" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください 
;◇以降はマクロを読み込むだけですので再利用してください。
;以降は、無駄な読み込みはしない
;======================================================================================
*event_2
;散策・町で再会
;イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】町
;[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*event_3
;イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]

[wait time=50]
;////////////////////////使用背景メモ////////////////////////////
;【背景】主人公部屋昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】御所
[preload storage="data/fgimage/bg/B4nFWraU42/gosyo.jpg wait=true]
;【背景】御所の中
[preload storage="data/fgimage/bg/bg_katuraginomiya_gosyo_in.jpg wait=true]
;【背景】茶室
[preload storage="data/fgimage/bg/I9IhvvVdPo/tyasitu.jpg" wait=true]
;【背景】皇室手紙
[preload storage="data/fgimage/bg/bg_tegami_kousitsu_akabudou.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*8_2
;イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////使用背景メモ//////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_1
;イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////使用背景メモ//////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】主人公邸 庭の見える部屋：夜
[preload storage="data/fgimage/bg/room_niwa_yoru.jp" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_3
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面  特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////////////////使用背景メモ///////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】仲人庭園
[preload storage="data/fgimage/bg/I9IhvvVdPo/nakoudoteiniwa.jpg" wait=true]
;【背景】仲人庭園(道2)
[preload storage="data/fgimage/bg/I9IhvvVdPo/nakoudoteiniwa_michi2.jpg" wait=true]
;【背景】仲人庭園 庭園の門 夕方
[preload storage="data/fgimage/bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_4
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////////////使用背景メモ///////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;【背景】町
;[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;==========================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*10_2
;イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////////////使用背景メモ/////////////////////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;【背景】新聞
[preload storage="data/fgimage/bg/test_bg_sinbun.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*10_3
;イベント名のラベルを追加していきます。
;======================================================================================
;上でプリロード。　分割が必要な時は解放
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ　///////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;=======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=====================================================================================
*11_1
;イベント名のラベルを追加していきます。バッド分岐があるシナリオなので個別のプリロード画面
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】バラ園
[preload storage="data/fgimage/bg/I9IhvvVdPo/baraen.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=====================================================================================
*11_1_bad
;*イベント名のラベルを追加していきます。　続きなのでここはテストしか使われないでしょう！
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】バラ園
;[preload storage="data/fgimage/bg/I9IhvvVdPo/baraen.jpg"]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*12_1
;イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*1_3
;イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*2_1
;イベント名のラベルを追加していきます。
;==============================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*2_2
;*イベント名のラベルを追加していきます。 良い知らせのイベントなので個別プリロード画面
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*3_4_nomal
;イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】公園
[preload storage="data/fgimage/bg/I9IhvvVdPo/kouenn.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*3_4epilogue_goodED
;イベント名のラベルを追加していきます。ここは使わないかも
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】玄関
[preload storage="data/fgimage/bg/bg_genkan.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*sansaku
;イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】町
[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*bonyou
;イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;凡庸です。
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================






















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
;テストおｋ
[macro name="表示開始"]
[freeimage layer=%layer|13 time=%time|50] 
[endmacro]

;まだ使ってません↓
;[macro name="主人公復帰表情消去"]
;[iscript]
;$('.junbi_girl').remove();
;[endscript]
;[endmacro]
;====================================================================================
;全てはここにGoします。ここは、消さないでください
[return]
;===================================================================================
