;======================================================================================
*start
;◇プリロードサブルーチン 主人公表示までの幕の役割
;◇作業中
;◆targetで呼び出し方法
;◇【[call target=*event_1 storage="katuraginomiya/preload_katuraginomiya.ks"]】
;◇【[call target=*9_1 storage="katuraginomiya/preload_katuraginomiya.ks"]】
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】町
[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;【背景】お稽古部屋
[preload storage="data/fgimage/bg/bg_okeiko.jpg"]
;【背景】町　回想シーン用
[preload storage="data/fgimage/bg/bg_machi_omoide.jpg" wait=true]
;【背景】手紙
;[preload storage="data/fgimage/bg/I9IhvvVdPo/bg_tegami_katuragi_silver.jpg" wait=true]
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

;葛城宮face　ノーマルエンド未満
[preload storage="data/image/face_katuraginomiya_sepia.png" wait=true]
;葛城宮face　ノーマルエンド　好感度
[preload storage="data/image/face_katuraginomiya_color.png" wait=true]
;葛城宮face　グッドエンド　好感度他パラメータ
[preload storage="data/image/face_katuraginomiya_smile.png" wait=true]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】町
;[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;【背景】皇室手紙
[preload storage="data/fgimage/bg/bg_tegami_kousitsu_akabudou.jpg" wait=true]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*6_1
;イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////使用背景メモ//////////////////
;【背景】執務室 
[preload storage="data/fgimage/bg/I9IhvvVdPo/situmu.jpg" wait=true] 
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////使用背景メモ//////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】主人公邸 庭の見える部屋：夜
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】バラ園
[preload storage="data/fgimage/bg/I9IhvvVdPo/baraen.jpg" wait=true]
;【イメージ】バラ
[preload storage="data/fgimage/bg/B4nFWraU42/bara_image.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=====================================================================================
*11_1_bad
*11_1badED
;======================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
*11_4
;イベント名のラベルを追加していきます。バッド分岐があるシナリオなので個別のプリロード画面
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】会議室2
[preload storage="data/fgimage/bg/katuraginomiya_kaigi2.jpg" wait=true]
;【背景】臣民教育
[preload storage="data/fgimage/bg/B4nFWraU42/katuragi_sisou.jpg" wait=true]
;【背景】蟷螂団
[preload storage="data/fgimage/bg/B4nFWraU42/katuragi_kamakiri.jpg" wait=true]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】会議室
[preload storage="data/fgimage/bg/B4nFWraU42/kaigisitu.jpg" wait=true]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*12_1b
;イベント名のラベルを追加していきます。
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】会議室
[preload storage="data/fgimage/bg/B4nFWraU42/kaigisitu.jpg" wait=true]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;【背景】放送局
[preload storage="data/fgimage/bg/I9IhvvVdPo/housoukyoku.jpg" wait=true] 
;【背景】演説
[preload storage="data/fgimage/bg/I9IhvvVdPo/enzetu.jpg" wait=true] 
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
;イベント名のラベルを追加していきます。
;==============================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;【背景】執務室 
[preload storage="data/fgimage/bg/I9IhvvVdPo/situmu.jpg" wait=true] 
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*2_2b
;*イベント名のラベルを追加していきます。 良い知らせのイベントなので個別プリロード画面
;================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面 特別な時は bg_preload_katuraginomiya.jpg
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true] 
;【背景】執務室 
[preload storage="data/fgimage/bg/I9IhvvVdPo/situmu.jpg" wait=true] 
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*3_4_nomal
;イベント名のラベルを追加していきます。
;================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】公園
[preload storage="data/fgimage/bg/I9IhvvVdPo/kouenn.jpg" wait=true]
;【背景】森林公園
[preload storage="data/fgimage/bg/B4nFWraU42/bg_katuraginomiya_sinrin_kouen.jpg"]
;[preload storage="data/fgimage/bg/I9IhvvVdPo/kouenn.jpg" wait=true]
;【背景】CG
[if exp="f.okeiko_gamen == true && (f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_c'])) && ( f.para_shujinkou_j_sadou >= f.katuraginomiya_sadou_good) && f.para_shujinkou_shukujodo >= 100 && f.katuraginomiya_au == 1"]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_goodED.jpg" wait=true]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_goodED_2.jpg" wait=true]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_goodED_3.jpg" wait=true]
[else]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_nomalED.jpg" wait=true]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_nomalED_2.jpg" wait=true]
[preload storage="data/fgimage/bg/katuraginomiya_3_4_nomalED_3.jpg" wait=true]
[endif]
;=============================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;=============================================================================
*3_4epilogue_goodED
;イベント名のラベルを追加していきます。ここは使わないかも
;================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】玄関
[preload storage="data/fgimage/bg/bg_genkan.jpg" wait=true]
;【背景】謁見室
[preload storage="data/fgimage/bg/I9IhvvVdPo/ekken.jpg" wait=true]
;【背景】執務室
;[preload storage="data/fgimage/bg/I9IhvvVdPo/situmusitu.jpg" wait=true]
[preload storage="data/fgimage/bg/I9IhvvVdPo/situmu.jpg" wait=true]
;【背景】桜
[preload storage="data/fgimage/bg/bg_sakura.jpg" wait=true]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
;◆【プリロード画面消去】はmacro.ksへ　こちらは削除

;=====================================================================================
;ほかにマクロがあればここに記述↓
;=====================================================================================

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
