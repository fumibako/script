;==================================================
*start
;◇プリロードサブルーチン 主人公表示までの幕の役割
;targetで呼び出し方法
;◆【call target=*9_3 storage="sijyou/preload_sijyou.ks"】
;==================================================
*first
;↓プリロード作成をありがとうございます。first.ksでのプリロードに移動と動作確認ができましたので、こちらのプリロード処理を消去します
;四条用プリロード画面はどこで読み込むか思案中です。okeiko.ksにif分岐で読込を考えてみましたが、okeiko.ksはほぼループ動作なので…何度も読み込むとメモリを圧迫したりするだろうかと懸念したりです(スクリプト担
;プリロード画面自体のプリロード 9_1で読むことにします。ありがとうございます！
;[preload storage="data/fgimage/bg/bg_sijyou_preload.jpg" wait=true]
;以降は、無駄な読み込みはしない
@jump target=end_sub0
;=======================================================================================
;◇プリロードサブルーチン　targetで呼び出し方法　シナリオで呼び出し設定してます。
;◆【call target=*9_3 storage="sijyou/preload_sijyou.ks"】
;======================================================================================
*6_1
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します　
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/test_sijyou_hanazono.jpg" time=1500]
;プリロード画面自体のプリロード
[preload storage="data/fgimage/bg/bg_sijyou_preload.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*9_1
;個別に呼び出してますのでいちいち書いてます。
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します　
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
;ここで読みます＿手紙など
[preload storage="data/fgimage/bg/B4nFWraU42/bg_tegami_sijyou.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*9_2
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_sijyou_preload.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_omoide.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_flower_hagi.jpg" wait=true]
;@jump target=end_sub
;=========================================================================================================
;四条立ち絵を個別に入った時点で読み込みキャッシュ化しておく? 他で読み込みされる場合はjumpを実行で無効化してください。
;四条プリロード
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;=========================================================================================================
*sijyou
[preload storage="data/fgimage/sijyou/base_kimono.png" wait=true]
[preload storage="data/fgimage/sijyou/base_haori.png" wait=true]
;[四条眉通常]
[preload storage="data/fgimage/sijyou/mayu_futuu.png" wait=true]
;[四条眉下げ]
[preload storage="data/fgimage/sijyou/mayu_sage.png" wait=true]
;[四条眉驚き]
[preload storage="data/fgimage/sijyou/mayu_odoroki.png" wait=true]
;[四条眉困り]
[preload storage="data/fgimage/sijyou/mayu_komari.png" wait=true]
;[四条眉強気]
[preload storage="data/fgimage/sijyou/mayu_tuyoki.png" wait=true]
;目
;[四条目通常]
[preload storage="data/fgimage/sijyou/me_futuu.png" wait=true]
;[四条目大]
[preload storage="data/fgimage/sijyou/me_ake.png" wait=true]
;[四条目にこ]
[preload storage="data/fgimage/sijyou/me_niko.png" wait=true]
;[四条目伏]
[preload storage="data/fgimage/sijyou/me_fusi1.png" wait=true]
;[四条目閉じ]
[preload storage="data/fgimage/sijyou/me_toji.png" wait=true]
;[四条横目]
[preload storage="data/fgimage/sijyou/me_yoko.png" wait=true]
;[四条横伏目]
[preload storage="data/fgimage/sijyou/me_yokofusi1.png" wait=true]
;口
;[四条口通常]
[preload storage="data/fgimage/sijyou/kuti_futuu.png" wait=true]
;[四条口微笑み]
[preload storage="data/fgimage/sijyou/kuti_hohoemi.png" wait=true]
;[四条口笑顔]
[preload storage="data/fgimage/sijyou/kuti_warau_s.png" wait=true]
;[四条口笑顔大]
[preload storage="data/fgimage/sijyou/kuti_warau.png" wait=true]
;[四条口開]
[preload storage="data/fgimage/sijyou/kuti_ake.png" wait=true]
;[四条口驚き]
[preload storage="data/fgimage/sijyou/kuti_odoroki.png" wait=true]
;[四条口ムッ]
[preload storage="data/fgimage/sijyou/kuti_mu.png" wait=true]
;効果
;[四条汗]
[preload storage="data/fgimage/sijyou/emo_ase.png" wait=true]
;[四条頬染め]
[preload storage="data/fgimage/sijyou/emo_hohosome.png" wait=true]
;[四条ビンタ]
[preload storage="data/fgimage/sijyou/emo_binta.png" wait=true]
;【背景】ししおどし
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sisiodosi.jpg" wait=true]
;【背景】料亭風の屋内（昼）
[preload storage="data/fgimage/bg/bg_ryoutei.jpg" wait=true]
;【背景】思い出（花
[preload storage="data/fgimage/bg/bg_omoide.jpg" wait=true]
;【背景】庭園＿萩
[preload storage="data/fgimage/bg/bg_flower_hagi.jpg" wait=true]
;【背景】庭園
[preload storage="data/fgimage/bg/bg_teien_ishidatami.jpg" wait=true]
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
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;[preload storage="data/fgimage/bg/bg_prologue.jpg" wait=true]
;四条が先に表示されてしまったため解放
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyouke.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_garden_isu.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_garden_isu_dark.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/rose_shigemi.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/rose_onsitsu.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/niwa_large_ike.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/niwa_large_ike_long.jpg" wait=true]
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
[preload storage="data/fgimage/bg/bg_prologue.jpg" wait=true]
;どうしても全画面で文字が表示されない時がある
[preload storage="data/fgimage/bg/bg_kabuki_in.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_kabuki_out.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/ginza3.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_genkan.jpg" wait=true wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg" wait=true]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_rouka.jpg" wait=true
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
;[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*10_3
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放///
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true wait=true]
[preload storage="data/fgimage/bg/bg_kabuki_out.jpg" wait=true]
;[preload storage="data/fgimage/bg/room_niwa_yuki.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==========================================================================
*11_1
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放//////
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
[preload storage="data/fgimage/bg/bg_ryoutei.jpg"]
[preload storage="data/fgimage/bg/test_mon.jpg" wait=true]
[preload storage="data/fgimage/bg/test_sijyou_dozou.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_dozou.jpg" wait=true]
;=====11_2========
[preload storage="data/fgimage/bg/bg_bluesky.jpg" time=100 wait=true]
[preload storage="data/fgimage/bg/test_konyaku_jikka2.jpg" wait=true]
[preload storage="data/fgimage/bg/test_sijyou_namigauara.jpg" wait=true]
[preload storage="data/fgimage/bg/sijyou_namigaura.jpg" wait=true]
;婚約者手紙
[preload storage="data/fgimage/bg/B4nFWraU42/bg_tegami_konyakusha.jpg" wait=true]
[preload storage="data/fgimage/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg" wait=true]
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
;雪庭使っているからテストではプリロードできない
[preload storage="data/fgimage/bg/room_niwa_yuki.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==================================================
*1_3
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放///
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==================================================
*1_4
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　ここでは表示遅れはないですが必要時に開放///
;[preload storage="data/fgimage/bg/room_niwa.jpg"]
;[preload storage="data/fgimage/bg/bg_machi.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==================================================
*2_1
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ;///////////////////////////////
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_kyousitu_zentai.jpg" wait=true]
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
[preload storage="data/fgimage/bg/bg_genkan.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_tenrankai.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyouke.jpg"]
;[preload storage="data/fgimage/bg/B4nFWraU42/rose_shigemi.jpg"]
;////////////表示準備/////////
;文矢との選択肢表示↓　選択肢での表示遅れ防止
[preload storage="data/fgimage/bg/plane_sepia.jpg"]
;[preload storage="data/fgimage/bg/bg_ryouotei_yuu.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_enkai.jpg"]
;///////////////////////////////
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
;///////////////////////////////
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;==========================================================================
*3_4_1
*3_4_ep
;グットエンドエピローグ
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_sijyou_preload.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///////////////////////////////
;【背景】ｴﾋﾟﾛｰｸﾞ部屋
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_ep_wasitu.jpg"]
;///////////////////////////////
@jump target=end_sub
;まだないです
[return]
;==========================================================================
*sansaku6
;個別に呼び出してますのでいちいち書いてます。
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します　
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_sijyou_preload.jpg" time=500]
[wait time=50]
[image name="loding_pic1" layer=29 folder="image" zindex=2 storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;/////////////////使用背景メモ　必要時に解放//////////////
;テスト画像はありません
;[preload storage="data/fgimage/bg/room_niwa_natu.jpg]
[preload storage="data/fgimage/bg/sijyou_engawa.jpg"]
[preload storage="data/fgimage/bg/sijyou_engawa2.jpg"]
[preload storage="data/fgimage/bg/room_niwa_yoru.jpg" wait=true]
[preload storage="data/fgimage/bg/sijyou_hanabi1.jpg" wait=true]
[preload storage="data/fgimage/bg/sijyou_hanabi2.jpg" wait=true]
[preload storage="data/fgimage/bg/sijyou_hanabi2_1.jpg" wait=true]
;花火画像
[preload storage="data/fgimage/bg/sijyou_engawa2_1.png" wait=true]
;透明化オンオフ　一緒にしましょう　拡大縮小つけたほうがいい。けど周囲の透過色が目立つ
[keyframe name="opcy"]
[frame p=0% opacity="0" scale=0.8]
[frame p=50% opacity="0.5" scale=0.9]
[frame p=100% opacity="1"scale=1]
[endkeyframe]
;消えるときに必要だった
[keyframe name="not_opcy"]
[frame p=100% opacity="0"]
[endkeyframe]
;/////////////////使用背景メモ　必要時に解放//////////////
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*sansaku7
;香水店デート　プリロード画面表示は未定
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_sijyou_preload.jpg" time=500]
[wait time=50]
[image name="loding_pic1" layer=29 folder="image" zindex=2 storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;/////////////////使用背景メモ　必要時に解放//////////////
;桜の表示が遅いと見えない為プリロード
[preload storage="data/fgimage/bg/B4nFWraU42/img_sakura_sijyou.png"]
[preload storage="data/fgimage/bg/plane_sakura.jpg"]
[preload storage="data/image/frame_red.png" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kousuiB.jpg"]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_kousuiB.jpg"]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
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
;他散策時の凡庸２
;======================================================================================
*bonyou2
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_sijyou_preload.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*end_sub
;全てはここにGoします
[cm]
;==========================================================================
*end_sub0
;◆【プリロード画面消去】はmacro.ksへ

;==========================================================================
;ここはマクロ案部です。さすがに本体にかかわるマクロには書くけませんので、もしなにかあればこちらで検証&試作して見せます
;◆[イベントシーン終了・ＢＧＭ有]
[macro name="イベントシーン終了・ＢＧＭ有"]
[cm]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;演出用レイヤ消去
[freeimage layer = 29]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

;会話ウィンドウ消去
[freeimage layer = 14]
[wait time=10]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[stopse]
[endmacro]
;==================================================
;テストプレイで画面遷移時の自然さに見入ってしまいました。立ち絵が背景と共にふわっと溶け込むように切り替わる自然さが素晴らしいと思います
;↓macro_etc.ksに[四条イベントシーン構築][四条ボタン表示]を追加と動作確認をしましたので、こちらは消去させていただきます
;マクロ作成と自然で軽い表示の試みをありがとうございます
;主人公プリロードもfirst.ksに追加しましたので、消去しました。ありがとうございました(スクリプト担 了解です
;==============================================================
;全てはここにGoします
[return]


