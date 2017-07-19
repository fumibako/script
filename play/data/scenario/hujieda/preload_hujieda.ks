;=====================================================================================
*start
;◇プリロードサブルーチン 主人公表示までの幕の役割
;targetで呼び出し方法
;◆【call target=*9_3 storage="hujieda/preload_hujieda.ks"】
;====================================================================================
;◆イベントの構築方法　[イベントシーン構築ボタン無し版] [メッセージウィンドウ上ボタン表示]
;=====================================================================================
*first
;make.ksで使用する際、ここに共通の読み込みを書きます。今はないのでここは書いてません。
@jump target=end_sub0
;無駄な読み込みしない
;=======================================================================================
;◇プリロードサブルーチン　targetで呼び出し方法　シナリオで呼び出し設定してます。
;◆【[call target=*9_3 storage="hujieda/preload_sijyou.ks"]】target=*イベント名のラベルを追加します。
;シーンを希望してください。追加します。
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します
;◆画面消去　[プリロード画面消去]
;======================================================================================
;///////////////////////////////この下から//////////////////////////////////////////////
;======================================================================================
*11_1
;*イベント名のラベルを追加していきます。;イベント１０回目【手紙を交わしていることが発覚】１１月１週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】お稽古部屋
;[preload storage="data/fgimage/bg/bg_okeiko.jp" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*11_3
;*イベント名のラベルを追加していきます。イベント１１回目【父と磯野への説得】１１月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：夜
;[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
;【背景】主人公邸 玄関
;[preload storage="data/fgimage/bg/bg_genkan.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*12_3
;*イベント名のラベルを追加していきます。;イベント１２回目【時子さん訪問】１２月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*12_3_bad
;*イベント名のラベルを追加していきます。;イベント１２回目【時子さん訪問】１２月3週、BAD
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：昼
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】藤枝bad洋館
[preload storage="data/fgimage/bg/I9IhvvVdPo/youkannaisou.jpg" wait=true]
;【背景】藤枝badラジオ
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_rajio.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*1_3
;*イベント名のラベルを追加していきます。イベント１3回目【時子さんからの手紙】１月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*2_3
;*イベント名のラベルを追加していきます。イベント１４回目【藤枝の留学辞退】2月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_hujieda.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】藤枝＿音楽練習室
[preload storage="data/fgimage/bg/I9IhvvVdPo/ongakurensyuusitu.jpg" wait=true]
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】主人公邸 玄関
;[preload storage="data/fgimage/bg/bg_genkan.jpg" time=1000]
;【背景】藤枝＿音楽練習室
[preload storage="data/fgimage/bg/I9IhvvVdPo/ongakurensyuusitu.jpg" wait=true]
;【背景】藤枝＿音楽会場外観
[preload storage="data/fgimage/bg/I9IhvvVdPo/ensoukaijyou.jpg" wait=true]
;【背景】藤枝＿音楽会場内装_近景
[preload storage="data/fgimage/bg/situnaiongaku.jpg" wait=true]
;【背景】藤枝＿音楽会場内装_遠景
[preload storage="data/fgimage/bg/situnaiongaku2.jpg" wait=true]
;【効果】キラキラ
[preload storage="data/fgimage/bg/B4nFWraU42/bg_hujieda_kirakira.png" wait=true]
;【効果】;ピアノベース藤枝(目なし)
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_base.png" wait=true]
;【効果】ピアノベース藤枝(目のみ通常１)
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_futuu.png" wait=true]
;【効果】ピアノベース藤枝(目のみ閉じ1)合体表示
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_fusi1.png" wait=true]
;【効果】ピアノベース藤枝(目のみ閉じ2)合体表示
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_fusi2.png" wait=true]
;【効果】ピアノベース藤枝(目のみ閉じ2)合体表示
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_toji.png" wait=true]

;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*3_4_goodED
;*イベント名のラベルを追加していきます。
;======================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_hujieda.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】空と桜
[preload storage="data/fgimage/bg/bg_sakura.jpg"]
;【背景】空と桜ＥＤ
[preload storage="data/fgimage/bg/bg_EDsakura.jpg"]
;【背景】ﾌﾟﾛﾛｰｸﾞ
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*3_4_normalED
;*イベント名のラベルを追加していきます。;イベント１５回目【指切りエンド】3月4週、
;======================================================================================
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_hujieda.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】たんぽぽ
[preload storage="data/fgimage/bg/hujieda_tanpopo.jpg" wait=true]
;【背景】たんぽぽ公園
[preload storage="data/fgimage/bg/hujieda_tanpopo_kouen.jpg" wait=true]
;【背景】綿毛全画面表示用
[preload storage="data/fgimage/bg/hijieda_kaede_sita2.jpg" wait=true]
;【背景CG】hujieda_normalED.jpg
[preload storage="data/fgimage/bg/hujieda_normalED.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*4_4
;*イベント名のラベルを追加していきます。イベント１回目【手紙が届くその１】4月お琴のお稽古を２回以上
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 お稽古部屋
[preload storage="data/fgimage/bg/bg_okeiko.jpg"]
[preload storage="data/fgimage/bg/I9IhvvVdPo/bg_hujieda_hato2.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*5_4
;*イベント名のラベルを追加していきます。;イベント２回目【手紙が届くその２】5月お琴のお稽古を２回以上
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 お稽古部屋
;[preload storage="data/fgimage/bg/bg_okeiko.jpg"]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*6_4
;*イベント名のラベルを追加していきます。;イベント3回目【手紙が届くその３】６月お琴のお稽古を２回以上
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 お稽古部屋
;[preload storage="data/fgimage/bg/bg_okeiko.jpg"]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*7_4
;*イベント名のラベルを追加していきます。;イベント４回目【手紙を出す】７月２回以上お琴のお稽古
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 お稽古部屋
;[preload storage="data/fgimage/bg/bg_okeiko.jpg"]
;【背景】主人公手紙
[preload storage="data/fgimage/bg/I9IhvvVdPo/bg_tegami_blue.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*8_4
;*イベント名のラベルを追加していきます。;イベント５回目【手紙のお返事】８月２回以上お琴の稽古をする
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_hujieda.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 お稽古部屋
;[preload storage="data/fgimage/bg/bg_okeiko.jpg"]
;========================================================================================
;◆__◆__◆8_4に藤枝が表示されるためキャラロードします◆__◆__◆
;@jump target=end_sub
;[return]へGO　ここは、消さないでください
;========================================================================================
;藤枝立ち絵を個別に入った時点で読み込みキャッシュ化しておきます。
;藤枝プリロード
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;=========================================================================================
*hujieda
;立ち絵表示[藤枝ベース]
[preload storage="data/fgimage/hujieda/base_sifuku.png" wait=true]
;立ち絵表示[藤枝郵便局員服]
[preload storage="data/fgimage/hujieda/base_yuubin.png" wait=true]
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
[preload storage="data/fgimage/hujieda/kuti_futuu.png" wait=true]
;[藤枝口微笑み]
[preload storage="data/fgimage/hujieda/kuti_hohoemi.png" wait=true]
;[藤枝口笑顔]
[preload storage="data/fgimage/hujieda/kuti_warau_s.png" wait=true]
;[藤枝口笑顔大]
[preload storage="data/fgimage/hujieda/kuti_warau.png" wait=true]
;[藤枝口開]
[preload storage="data/fgimage/hujieda/kuti_ake.png" wait=true]
;[藤枝口大開]
[preload storage="data/fgimage/hujieda/kuti_ooake.png" wait=true]
;[藤枝口驚き]
[preload storage="data/fgimage/hujieda/kuti_odoroki.png" wait=true]
;[藤枝口ムッ]
[preload storage="data/fgimage/hujieda/kuti_mu.png" wait=true]
;[藤枝汗]
[preload storage="data/fgimage/hujieda/emo_ase.png" wait=true]
;[藤枝頬染め]
[preload storage="data/fgimage/hujieda/emo_hohosome.png" wait=true]
;藤枝faceノーマルエンド未満
[preload storage="data/image/face_hujieda_sepia_yuubin.png" wait=true]
[preload storage="data/image/face_hujieda_sepia_sifuku.png" wait=true]
;藤枝faceノーマルエンド　好感度40以上
[preload storage="data/image/face_hujieda_color_yuubin.png" wait=true]
[preload storage="data/image/face_hujieda_color_sifuku.png" wait=true]
;藤枝faceグッド
[preload storage="data/image/face_hujieda_smile_yuubin.png" wait=true]
[preload storage="data/image/face_hujieda_smile_sifuku.png" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_1
;*イベント名のラベルを追加していきます。;イベント6回目【藤枝の事を考える】9月1週、誰も選ばないを選択
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_2
;ルート決定
;*イベント名のラベルを追加していきます。;イベント７回目【再び手紙が届く】9月2週、お琴のお稽古
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面が今はないのです。あると自然かもしれません
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 お稽古部屋
;[preload storage="data/fgimage/bg/bg_okeiko.jpg" wait=true]
;すでに読み込まれている背景なのでコメント
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*9_4
;*イベント名のラベルを追加していきます。　散策９＿４
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面が今はないのです
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】:町並み
[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]　　
;【背景】:ミルクホール全景
[preload storage="data/fgimage/bg/I9IhvvVdPo/mirukuho-ru2.jpg" wait=true]
;【背景】:ミルクホール近景
[preload storage="data/fgimage/bg/I9IhvvVdPo/mirukuho-ru3.jpg" wait=true]
;【背景】:ミルクホール窓
[preload storage="data/fgimage/bg/B4nFWraU42/mirukuho_ru4.jpg" wait=true]
;【背景】:ミルクホール窓際　ピアノ
[preload storage="data/fgimage/bg/bg_fujieda_piano_0.jpg" wait=true]
;【効果】キラキラ
[preload storage="data/fgimage/bg/B4nFWraU42/bg_hujieda_kirakira.png" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*10_1
;*イベント名のラベルを追加していきます。;イベント8回目【両親のなれそめ】１０月１週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 部屋
[preload storage="data/fgimage/bg/room_niwa.jpg"]
;【背景】全画面　番傘の女性
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_haha.jpg" wait=true]
;【背景】全画面　白っぽいﾐﾙｸﾎｰﾙ店内
[preload storage="data/fgimage/bg/B4nFWraU42/mirukutennai_zengamen.jpg" wait=true]
;【背景】 全画面背景＿空
[preload storage="data/fgimage/bg/hujieda_sky1.jpg" wait=true]
;【背景】 全画面背景＿芙蓉
[preload storage="data/fgimage/bg/bg_hujieda_fuyou.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*10_3
;*イベント名のラベルを追加していきます。;イベント９回目【花と手紙を渡す】１０月３週、
;◆__◆__◆10_3に藤枝が表示されるためキャラロードします。◆__◆__◆
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面が今はないのです
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_hujieda.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】:ミルクホール玄関外昼
[preload storage="data/fgimage/bg/B4nFWraU42/mirukutest.jpg" wait=true]
;【背景】:ミルクホール玄関中夜
[preload storage="data/fgimage/bg/I9IhvvVdPo/mirukugenkan.jpg" wait=true]
;【背景】:ミルクホール玄関中昼
[preload storage="data/fgimage/bg/I9IhvvVdPo/miruku_genkan2.jpg" wait=true]
;【背景】:ミルクホール 立ち絵用　ピアノ
[preload storage="data/fgimage/bg/bg_fujieda_piano_0.jpg" wait=true]
;【効果】キラキラ
[preload storage="data/fgimage/bg/B4nFWraU42/bg_hujieda_kirakira.png" wait=true]
;【効果】;ピアノベース藤枝(目なし)
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_base.png" wait=true]
;【効果】ピアノベース藤枝(目のみ通常１)
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_futuu.png" wait=true]
;【効果】ピアノベース藤枝(目のみ閉じ1)合体表示
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_fusi1.png" wait=true]
;【効果】ピアノベース藤枝(目のみ閉じ2)合体表示
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_fusi2.png" wait=true]
;【効果】ピアノベース藤枝(目のみ閉じ2)合体表示
[preload storage="data/fgimage/bg/B4nFWraU42/hujieda_piano_me_toji.png" wait=true]

;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;◆__◆__◆10_3に藤枝が表示されるためキャラロード終了◆__◆__◆
;以降は、無駄な読み込みはしない
;======================================================================================
*hujieda_bazaar_1
*hujieda_bazaar_2
;*イベント名のラベルを追加していきます。予備
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;【背景】:ミルクホール 全画面用　ピアノ
[preload storage="data/fgimage/bg/bg_fujieda_piano_1_1.jpg" wait=true]
;【背景】:ミルクホール 立ち絵用　ピアノ
[preload storage="data/fgimage/bg/bg_fujieda_piano_0.jpg" wait=true]
;【背景】華族会館全画面
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity6_1.jpg" wait=true]
;【背景】ﾁｬﾘﾃｨｰ会場門前
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity6.jpg" wait=true]
;【背景】;野点傘と縁談の背景
[preload storage="data/fgimage/bg/B4nFWraU42/katuraginomiya_yaten.jpg" wait=true]
;【背景】演奏会場１うらぐち
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity51.jpg" wait=true]
;【背景】準備中の廊下
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity8.jpg" wait=true]
;【背景】二階への階段
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity7.jpg" wait=true]
;【背景】演奏会場2_遠景
[preload storage="data/fgimage/bg/B4nFWraU42/bg_hujieda_ensou1.jpg" wait=true]
;【背景】演奏会場2_近景
[preload storage="data/fgimage/bg/B4nFWraU42/bg_hujieda_ensou2.jpg" wait=true]
;【背景】ｲﾒｰｼﾞ背景ｵﾙｶﾞﾝ
[preload storage="data/fgimage/bg/bg_hujieda_orugan.jpg" wait=true]
;【背景】ｲﾒｰｼﾞ背景　箏
[preload storage="data/fgimage/bg/bg_hujieda_koto.jpg" wait=true]
;【背景】演奏会場１ 
[preload storage="data/fgimage/bg/B4nFWraU42/bg_hujieda_ensou3.jpg" wait=true]
;【背景】演奏会場２
[preload storage="data/fgimage/bg/B4nFWraU42/bg_hujieda_ensou3_1.jpg" wait=true]
;【背景】金屏風
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg" wait=true]

;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;======================================================================================
;*
;*イベント名のラベルを追加していきます。予備
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]

;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================
*6_1
;*イベント名のラベルを追加していきます。予備&テンプレ
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;背景鳩
[preload storage="data/fgimage/bg/I9IhvvVdPo/bg_hujieda_hato.jpg" wait=true]
;背景月の光
[preload storage="data/fgimage/bg/B4nFWraU42/bg_moon_lake.jpg" wait=true]
;ここに追加
;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================



;======================================================================================
;他散策時の凡庸
;======================================================================================
*sansaku
*bonyou
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_hujieda.jpg" time=500]
;[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================


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


;====================================================================================
;!!!!!!!!!!!全てはここにGoします。ここは、消さないでください!!!!!!!!!!!!!!!!!!!!!!
[return]
;===================================================================================
