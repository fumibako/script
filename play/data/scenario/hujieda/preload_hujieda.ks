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
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】お稽古部屋
;[preload storage="data/fgimage/bg/bg_okeiko.jp" wait=true]
;======================================================================================
*11_3
;*イベント名のラベルを追加していきます。イベント１１回目【父と磯野への説得】１１月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：夜
;[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
;【背景】主人公邸 玄関
;[preload storage="data/fgimage/bg/bg_genkan.jpg" wait=true]
;======================================================================================
*12_3
;*イベント名のラベルを追加していきます。;イベント１２回目【時子さん訪問】１２月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]

;======================================================================================
*1_3
;*イベント名のラベルを追加していきます。イベント１3回目【時子さんからの手紙】１月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]

;======================================================================================
*2_3
;*イベント名のラベルを追加していきます。イベント１４回目【藤枝の留学辞退】2月3週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】藤枝＿音楽練習室
[preload storage="data/fgimage/bg/I9IhvvVdPo/ongakurensyuusitu.jpg" wait=true]
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】主人公邸 玄関
;[preload storage="data/fgimage/bg/bg_genkan.jpg" time=1000]

;======================================================================================
*3_4_goodED
;*イベント名のラベルを追加していきます。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】公園
[preload storage="data/fgimage/bg/I9IhvvVdPo/kouenn.jpg"]
;======================================================================================
*3_4_normalED
;*イベント名のラベルを追加していきます。;イベント１５回目【指切りエンド】3月4週、
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
;【背景】主人公邸 庭の見える部屋：昼
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;【背景】公園
[preload storage="data/fgimage/bg/I9IhvvVdPo/kouenn.jpg"]
;======================================================================================
*4_4
;*イベント名のラベルを追加していきます。イベント１回目【手紙が届くその１】4月お琴のお稽古を２回以上
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_okeiko.jpg" time=500]
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
*5_4
;*イベント名のラベルを追加していきます。;イベント２回目【手紙が届くその２】5月お琴のお稽古を２回以上
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_okeiko.jpg" time=500]
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
*6_4
;*イベント名のラベルを追加していきます。;イベント3回目【手紙が届くその３】６月お琴のお稽古を２回以上
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_okeiko.jpg" time=500]
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
*7_4
;*イベント名のラベルを追加していきます。;イベント４回目【手紙を出す】７月２回以上お琴のお稽古
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_okeiko.jpg" time=500]
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
*8_4
;*イベント名のラベルを追加していきます。;イベント５回目【手紙のお返事】８月２回以上お琴の稽古をする
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_okeiko.jpg" time=500]
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
*9_1
;*イベント名のラベルを追加していきます。;イベント6回目【藤枝の事を考える】9月1週、誰も選ばないを選択
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_okeiko.jpg" time=500]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[mtext name="loding_pic1" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;[wait time=10]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////使用背景メモ　必要時に解放///////////////////
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
;======================================================================================
*9_2
;ルート決定
;*イベント名のラベルを追加していきます。;イベント７回目【再び手紙が届く】9月2週、お琴のお稽古
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面が今はないのです。あると自然かもしれません
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
;＝＝＝ここではお稽古からの流れだと思うのでお稽古画像？ ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_okeiko.jpg" time=500]
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
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】:町並み
[preload storage="data/fgimage/bg/bg_machi.jpg" wait=true]
;======================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください
;以降は、無駄な読み込みはしない
;======================================================================================
*10_3
;*イベント名のラベルを追加していきます。;イベント９回目【花と手紙を渡す】１０月３週、
;◆__◆__◆10_3に藤枝が表示されるためキャラロードします。◆__◆__◆
;できれば、専用背景をお願い致します。
;======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
;個別のプリロード画面が今はないのです
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;////////////使用背景メモ　必要時に解放///////////////////
;【背景】: レトロな喫茶店
[preload storage="data/fgimage/bg/I9IhvvVdPo/mirukugenkan.jpg" wait=true]
;======================================================================================
;◆__◆__◆10_3に藤枝が表示されるためキャラロードします◆__◆__◆
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
;◆__◆__◆10_3に藤枝が表示されるためキャラロード終了◆__◆__◆
;以降は、無駄な読み込みはしない
;======================================================================================
;*
;*イベント名のラベルを追加していきます。予備
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
;*イベント名のラベルを追加していきます。予備
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
;*イベント名のラベルを追加していきます。予備&テンプレ
;=======================================================================================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////////////////////////使用背景メモ///////////////////////////////////////////
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
;ここに追加
;====================================================================================
@jump target=end_sub
;[return]へGO　ここは、消さないでください　
;以降は、無駄な読み込みはしない
;===================================================================================



;======================================================================================
;他散策時の凡庸
;======================================================================================
*bonyou
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
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
