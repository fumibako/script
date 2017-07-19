;==================================================
*start
;◇プリロードサブルーチン 主人公表示までの幕の役割　
;◆特別なイベント　読み込み多いとき　bg_preload_zaizen.jpg
;◇作業中！
;targetで呼び出し方法
;◆【call target=*9_3 storage="zaizen/preload_zaizen.ks"】
;==================================================
*first
;make.ksで使用する際、ここに共通の読み込みを書きます。今はないのでここは書いてません。
@jump target=end_sub0
;無駄な読み込みしない
;=======================================================================================
;◇プリロードサブルーチン　targetで呼び出し方法　シナリオで呼び出し設定してます。
;◆【call target=*9_3 storage="zaizen/preload_zizen.ks"】*イベント名のラベルを追加していきます。
;シーンを希望してください。追加します。
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します
;◆画面消去　[プリロード画面消去]
;======================================================================================
*6_1
;夢イベント
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_zaizen.jpg" time=500]
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】洋館居間
[preload storage="data/fgimage/bg/test_room_zaizen_ima.jpg" wait=true]
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_1
;ルート決定
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_3
;見合い
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面が今はないのです
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_zaizen.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
[preload storage="data/fgimage/kuroda/base_haori.png"] 
[preload storage="data/fgimage/kuroda/base_haori_hohosome.png"]

;【背景】庭を明るめ加工（ふすまが開いて廊下の光が入る演出的な）
[preload storage="data/fgimage/bg/room_niwa_akarui.jpg" wait=true]
;【背景】庭園　料亭の庭２
[preload storage="data/fgimage/bg/bg_teien_ishidatami.jpg" wait=true]

;========================================================================================
;財前立ち絵を個別に入った時点で読み込みキャッシュ化しておきます。
;財前プリロード
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;=========================================================================================
*zaizen
;立ち絵表示[財前ベース]
[preload storage="data/fgimage/zaizen/base_suit.png" wait=true]
;立ち絵表示[財前ベース燕尾服]
[preload storage="data/fgimage/zaizen/base_enbifuku.png" wait=true]
;財前眉普通
[preload storage="data/fgimage/zaizen/mayu_futuu.png" wait=true]
;財前眉ひそめ
[preload storage="data/fgimage/zaizen/mayu_hisome.png" wait=true]
;財前眉強気
[preload storage="data/fgimage/zaizen/mayu_tuyoki.png" wait=true]
;財前眉下げ
[preload storage="data/fgimage/zaizen/mayu_sage.png" wait=true]
;財前眉冷ややか
[preload storage="data/fgimage/zaizen/mayu_hiyayaka.png" wait=true]
;財前眉驚き
[preload storage="data/fgimage/zaizen/mayu_odoroki.png" wait=true]
;財前眉やわらか
[preload storage="data/fgimage/zaizen/mayu_komari_soft.png" wait=true]
;財前目
[preload storage="data/fgimage/zaizen/me_hiyayaka.png" wait=true]
[preload storage="data/fgimage/zaizen/me_niko.png" wait=true]
[preload storage="data/fgimage/zaizen/me_toji.png" wait=true]
[preload storage="data/fgimage/zaizen/me_yokofusi1.png" wait=true]
[preload storage="data/fgimage/zaizen/me_fusi1.png" wait=true]
[preload storage="data/fgimage/zaizen/me_okori.png" wait=true]
[preload storage="data/fgimage/zaizen/me_fusi2.png" wait=true]
[preload storage="data/fgimage/zaizen/me_ake.png" wait=true]
[preload storage="data/fgimage/zaizen/me_yoko.png" wait=true]
[preload storage="data/fgimage/zaizen/me_futuu.png" wait=true]
;財前口
[preload storage="data/fgimage/zaizen/kuti_futuu.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_hohoemi.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_ake.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_mu.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_okori.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_odoroki.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_warau.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_warau_soft.png" wait=true]
[preload storage="data/fgimage/zaizen/kuti_hiyayaka.png" wait=true]
;財前エモ
[preload storage="data/fgimage/zaizen/emo_ase.png" wait=true]
[preload storage="data/fgimage/zaizen/emo_hohosome.png" wait=true]
;財前face
[preload storage="data/image/face_zaizen_color.png" wait=true]
[preload storage="data/image/face_zaizen_sepia.png" wait=true]
[preload storage="data/image/face_zaizen_smile.png" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*10_1
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////使用背景メモ//////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]

;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*10_3
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////////////////使用背景メモ///////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】バラ園
[preload storage="data/fgimage/bg/I9IhvvVdPo/baraen.jpg" wait=true]
;【背景】バラ園２
[preload storage="data/fgimage/bg/B4nFWraU42/zaizen_bara.jpg" wait=true]
;桜の表示が遅いと見えない,処理不能の為プリロード
[preload storage="data/fgimage/bg/B4nFWraU42/img_sakura_sijyou.png"]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*11_1
;パーティ会場
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_zaizen.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////////////使用背景メモ///////////////////////////////////
;【背景】玄関
[preload storage="data/fgimage/bg/bg_genkan.jpg" wait=true]
;【背景】パーティー会場
[preload storage="data/fgimage/bg/test_zaizen_paty1.jpg" wait=true]
;【背景】洋館 BADにて使用
[preload storage="data/fgimage/bg/zaizen_youkan.jpg" wait=true]
;【背景】洋館 全画面
[preload storage="data/fgimage/bg/zaizen_youkan_zengamen.jpg" wait=true]
;【背景】パーティ会場の庭
[preload storage="data/fgimage/bg/test_zaizen_paty1.jpg" wait=true]
;【背景】呉服屋的な背景 
[preload storage="data/fgimage/bg/zaizen_gofuku.jpg" wait=true]
;【背景】港町的な背景
[preload storage="data/fgimage/bg/zaizen_minato.jpg" wait=true]
;【背景】パーティ会場控室
[preload storage="data/fgimage/bg/I9IhvvVdPo/zaizen_paty_hikae.jpg" wait=true]
;【背景】シャンデリア
[preload storage="data/fgimage/bg/bg_syanderia.jpg" wait=true]
;【背景】ホール
;【背景】洋館居間
[preload storage="data/fgimage/bg/test_room_zaizen_ima.jpg" wait=true]
;【背景】空
[preload storage="data/fgimage/bg/bg_bluesky.jpg" wait=true]
;==========================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;=========================================================================
*11_1bad2
;リプレイ用
;======================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////////////使用背景メモ/////////////////////////////////////////////////////////
;【背景】洋館居間
[preload storage="data/fgimage/bg/test_room_zaizen_ima.jpg" wait=true]

;==========================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;==========================================================================
*11_1_2
;これは続きなのでテスト用ですね
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////////////使用背景メモ/////////////////////////////////////////////////////////
;【背景】パーティ会場の庭
[preload storage="data/fgimage/bg/test_zaizen_paty1.jpg" wait=true]
;【背景】洋館 
[preload storage="data/fgimage/bg/zaizen_youkan.jpg" wait=true]
;【背景】呉服屋的な背景 
[preload storage="data/fgimage/bg/zaizen_gofuku.jpg" wait=true]
;【背景】港町的な背景
[preload storage="data/fgimage/bg/zaizen_minato.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*11_1_bad1
;リプレイ用
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////////////使用背景メモ/////////////////////////////////////////////////////////
;【背景】パーティ会場の庭
[preload storage="data/fgimage/bg/test_zaizen_paty1.jpg" wait=true]
;【背景】空
[preload storage="data/fgimage/bg/bg_bluesky.jpg" wait=true]

;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*11_1_3
;これは続きなのでテスト用です　でもプリロ―ド長いからどうだろう
;======================================================================================
;上でプリロード。　分割が必要な時は解放
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ　///////////////////////////////
;【背景】パーティ会場控室
[preload storage="data/fgimage/bg/I9IhvvVdPo/zaizen_paty_hikae.jpg" wait=true]
;【背景】シャンデリア
;【背景】ホール]
;=======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=====================================================================================
*11_3
;イベント5.5回目【財前からの手紙】11月３週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;=======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=====================================================================================
*11_4_1
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
;【背景】町並み
;[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;【背景】車の中
[preload storage="data/fgimage/bg/zaizen_kuruma.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=====================================================================================
*11_4_2
;イベント6.6回目【財前への手紙】11月４週イベント６回目翌日
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景？】新聞
[preload storage="data/fgimage/bg/test_bg_sinbun.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*12_2
;イベント7回目【財前の交渉】１２月２週
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]

;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=====================================================================================
*12_4
;イベント7回目【財前の交渉】１２月４週
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
;【背景】背景会議室
[preload storage="data/fgimage/bg/B4nFWraU42/test_zaizen_kaigi.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*1_3_1
;イベント８回目【新聞に投稿】１月３週
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*1_3_2
;*イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】洋館居間[背景洋館居間]
;[chara_mod name="bg" storage="bg/room_zaizen_ima.jpg"]
[preload storage="data/fgimage/bg/test_room_zaizen_ima.jpg" wait=true]

;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*2_1
;*イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】町並み
;[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*3_4_good 
;イベント名のラベルを追加していきます。
;================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_zaizen.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】スチル
[preload storage="data/fgimage/bg/zaizen_CGgood.jpg" wait=true]
;【背景】パーティ会場の庭
[preload storage="data/fgimage/bg/zaizen_paty_niwa.jpg" wait=true]
;【背景】洋館居間
[preload storage="data/fgimage/bg/test_room_zaizen_ima.jpg" wait=true]
;【背景】 フウセンカズラの実
[preload storage="data/fgimage/bg/zaizen_fusenkazura.jpg" wait=true]
;【背景】 フウセンカズラの花
[preload storage="data/fgimage/bg/zaizen_fusenkazura2.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*3_4_normal
;イベント10回目【財前母の誕生日パーティ】3月4週、
;================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_zaizen.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】パーティー会場応接室
[preload storage="data/fgimage/bg/I9IhvvVdPo/zaizen_paty_ousetu.jpg" wait=true]
;【背景】CGnomal
[preload storage="data/fgimage/bg/zaizen_CGnomal.jpg" wait=true]
[preload storage="data/fgimage/bg/zaizen_CGnomal_2.jpg" wait=true]
;【背景】雪柳
[preload storage="data/fgimage/bg/zaizen_yukiyanagi.jpg" wait=true]
;【背景】パーティー会場庭
[preload storage="data/fgimage/bg/zaizen_paty_niwa.jpg" wait=true]
;【背景】独逸大使館パーティ会場
[preload storage="data/fgimage/bg/zaizen_doitutaisikan.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*bazar
;*イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_zaizen.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】バザー
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity51.jpg" wait=true]
;【背景】背景バザー出店（近景）
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity2.jpg" wait=true]
;【背景】背景バザー出店（遠景）
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity.jpg" wait=true]
;【背景】バザー会場　売店　売り子場面
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity4.jpg" wait=true]
;【背景】背景バザー出店（遠景）
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity.jpg" wait=true]
;【背景】背景バザー出店（入り口）
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity3.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*sansaku
;*イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】町並み
[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;=============================================================================



;======================================================================================
*end_sub
;!!!!!!!!!!!全てはここにGoします。以下は、消さないでください!!!!!!!!!!!!!!
[cm]
;========================================================================================
*end_sub0
;◆【プリロード画面消去】はmacro.ksへ　こちらは削除
;=====================================================================================
;ほかにマクロがあればここに記述↓
;=====================================================================================

;◆【[暗転２ clegit=true]と[暗転２終了]はmacro_etc.ksに移動しました。マクロ作成をありがとうございました(スクリプト担


;====================================================================================
;全てはここにGoします。ここは、消さないでください
[return]
;===================================================================================
