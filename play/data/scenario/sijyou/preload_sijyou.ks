;==================================================
*start
;◇プリロードサブルーチン 主人公表示までの幕の役割
;targetで呼び出し方法
;◆【call target=*9_3 storage="sijyou/preload_sijyou.ks"】
;==================================================
*first


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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;///使用背景メモ　必要時に解放///////
[preload storage="data/fgimage/bg/test_sijyou_hanazono.jpg" wait=true]
;プリロード画面自体のプリロード
[preload storage="data/fgimage/bg/B4nFWraU42/bg_sijyou_preload.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*9_1
;個別に呼び出してますのでいちいち書いてます。
;幕の役割なので、プリロード画面消去は、マクロにして、消すタイミングはシナリオで決定します　
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sijyou_preload.jpg" time=500]
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
;四条face
[preload storage="data/image/face_sijyou_sepia.png" wait=true]
[preload storage="data/image/face_sijyou_color.png" wait=true]
[preload storage="data/image/face_sijyou_smail.png" wait=true]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*9_3
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
*2_2
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;//////使用背景メモ　上が実行されればいらない//////////////////////////////
[preload storage="data/fgimage/bg/bg_okeiko.jpg" wait=true]
[preload storage="data/fgimage/bg/room_niwa.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_omoide.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity7.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_cyarity.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_bazaar_syokudou.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_bazaar_kyukeijyo.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/sijyou_bazaar_kairou.jpg" wait=true]
[preload storage="data/fgimage/bg/sijyou_hanabi2_1.jpg" wait=true]
@jump target=end_sub
;[return]へGO
;==========================================================================

*3_1
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[if exp="f.flag_replay == true"]
[cm]
[endif]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sijyou_preload.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sijyou_preload.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sijyou_preload.jpg" time=500]
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
*ed
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sijyou_preload.jpg" time=500]
[wait time=50]
[image name="loding_pic1" layer=29 folder="image" zindex=2 storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;桜の表示が遅いと見えない,処理不能の為プリロード
[preload storage="data/fgimage/bg/B4nFWraU42/img_sakura_sijyou.png" wait=true]
[preload storage="data/fgimage/bg/bg_sakura.jpg" wait=true]
;回想モード
[preload storage="data/fgimage/bg/room_niwa_sepia.jpg" wait=true]
[preload storage="data/fgimage/bg/room_niwa_yuki_sepia.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_sakura_sepia.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_omoide_sepia.jpg" wait=true]
[preload storage="data/fgimage/bg/sijyou_CGnomal.png" wait=true]
;エンディングスチルをプリロード
[if exp="f.para_sijyou_koukando >= 80 && f.para_shujinkou_shukujodo >= 80 && f.sijyou_sobo == true && f.para_shujinkou_j_kadou >= 50"]
[preload storage="data/fgimage/bg/sijyou_CGgood.png" wait=true]
[else]
[endif]
@jump target=end_sub
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
*asuka
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;飛鳥　葉月イベント
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_hiroma.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_tenjyou.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_tenjyou2.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_tenjyou3.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_asuka_haduki_ame.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_tokei.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_kakitubata.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_tuki.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_tuki0.jpg" wait=true]
[preload storage="data/fgimage/bg/B4nFWraU42/bg_asuka_haduki_tuki1.jpg" wait=true]
@jump target=end_sub1
;[return]へGO
;以降は、無駄な読み込みはしない
;======================================================================================
;他散策時の凡庸
;======================================================================================
*bonyou
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
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
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sijyou_preload.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
@jump target=end_sub1
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
*end_sub1
;ここはマクロ案部です。さすがに本体にかかわるマクロには書くけませんので、もしなにかあればこちらで検証&試作して見せます

;四条用背景　一括変換　記録にはcg/flg等を使う
;[macro name="暗転１"]
;[bg storage="../fgimage/bg/anten.jpg" time=100 method=%method | &f.bg_method]
;[eval exp="f.haikei_credit=''"]
;[endmacro]
[macro name="背景セピア化"]
[iscript]
//レイヤーのクラス名を変数に代入。jqueryで出来ればいらない処理
var lay1=document.getElementsByClassName("layer base_fore");
lay1[0].style.webkitFilter = "sepia(100%)";
[endscript]
[endmacro]
;======
[macro name="背景セピア化_50"]
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer base_fore");
lay1[0].style.webkitFilter = "sepia(50%)";
[endscript]
[endmacro]
;======
[macro name="背景セピア化_解除"]
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
//レイヤーのクラス名を変数に代入。jqueryで出来ればいらない処理
var lay1=document.getElementsByClassName("layer base_fore");
lay1[0].style.webkitFilter = "sepia(0%)";
[endscript]
[endmacro]
;=======
[macro name="背景明度アップ"]
[iscript]
//layer 1_fore
//bright=function(){
$('.base_fore').css({'filter':'brightness(1.5)','-webkit-filter':'brightness(1.5)','-moz-filter':'brightness(1.5)','-ms-filter':'brightness(1.5)'});
//};
[endscript]
[endmacro]
;=======
[macro name="背景明度アップ_13"]
[iscript]
$('.base_fore').css({'filter':'brightness(1.3)','-webkit-filter':'brightness(1.3)','-moz-filter':'brightness(1.3)','-ms-filter':'brightness(1.3)'});
[endscript]
[endmacro]
;=======
[macro name="背景明度アップ解除"]
[iscript]
//layer 1_fore
$('.base_fore').css({'filter':'brightness(1.0)','-webkit-filter':'brightness(1.0)','-moz-filter':'brightness(1.0)','-ms-filter':'brightness(1.0)'});
[endscript]
[endmacro]
;==============
[macro name=背景選択肢_sakura]
[bg storage="../fgimage/bg/plane_sakura.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景選択肢_mizuiro]
[bg storage="../fgimage/bg/plane_mizuiro.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_選択肢_和紙風セピア色]
[bg storage="../fgimage/bg/plane_sepia.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;=============
[macro name=背景_黒茶・和紙風]
[bg storage="../fgimage/bg/bg_prologue.jpg" method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;=======
[macro name="背景_町"]
[bg storage="../fgimage/bg/bg_machi.jpg" time=50 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[endmacro]
;=======
[macro name=背景_橋]
[bg storage="../fgimage/bg/bg_machi_hasi.jpg" time=50 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;=======

[macro name="背景_お稽古部屋"]
[bg storage="../fgimage/bg/bg_okeiko.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name="背景_庭"]
[bg storage="../fgimage/bg/room_niwa.jpg" time=0 method=%method | &f.bg_method wait=true]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name=背景_庭_夜]
[bg storage="../fgimage/bg/room_niwa_yoru.jpg" time=%time|50 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name=背景_庭_雪]
[bg storage="../fgimage/bg/room_niwa_yuki.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name=背景_庭_冬]
[bg storage="../fgimage/bg/room_niwa_fuyu.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name=背景_庭_夏]
[bg storage="../fgimage/bg/room_niwa_natu.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name=背景_庭_縁側(夕)]
[bg storage="../fgimage/bg/sijyou_engawa.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=
[macro name=背景_庭_縁側(夜)]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=%time|1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_主人公邸_玄関]
[bg storage="../fgimage/bg/bg_genkan.jpg" time=1500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name=背景_四条_夢]
[bg storage="../fgimage/bg/test_sijyou_hanazono.jpg" time=1500 method=%method | &f.bg_method wait=true]
[endmacro]
;==============
[macro name=背景_料亭風の屋内（昼)]
;【背景】料亭風の屋内（昼）
[bg storage="../fgimage/bg/bg_ryoutei.jpg" time=500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
[endmacro]
;==============
[macro name=背景_料亭風の屋内（夕)]
;【背景】料亭風の屋内（夕）
[bg storage="../fgimage/bg/bg_ryouotei_yuu.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
[endmacro]
;==============
[macro name=背景_思い出（花)]
[bg storage="../fgimage/bg/bg_omoide.jpg" time=500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_白萩]
;【背景】白萩
[bg storage="../fgimage/bg/bg_flower_hagi.jpg" time=500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_庭園(昼)]
;【背景】庭園
[bg storage="../fgimage/bg/bg_teien_ishidatami.jpg" time=500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_庭園(夕)]
;【背景】庭園_夕
[bg storage="../fgimage/bg/bg_teien_ishidatami_yuu.jpg" time=500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_庭園(夜)]
[bg storage="../fgimage/bg/bg_teien_ishidatami_yoru.jpg" time=500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_四条家]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyouke.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条家庭椅子1]
[bg storage="../fgimage/bg/bg_garden_isu.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=' '"]
[endmacro]
;==============
[macro name=背景_四条家庭椅子2]
[bg storage="../fgimage/bg/bg_garden_isu_dark.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_四条家庭バラ茂]
[bg storage="../fgimage/bg/B4nFWraU42/rose_shigemi.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条家温室]
[bg storage="../fgimage/bg/B4nFWraU42/rose_onsitsu.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条家庭バラ噴水]
[bg storage="../fgimage/bg/B4nFWraU42/niwa_rose_funsui.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条家湖畔1]
[bg storage="../fgimage/bg/B4nFWraU42/niwa_large_ike.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条家湖畔2]
[bg storage="../fgimage/bg/B4nFWraU42/niwa_large_ike_long.jpg" time=1500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条_歌舞伎座前]
[bg storage="../fgimage/bg/bg_kabuki_out.jpg" time=%time|50 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[endmacro]
;==============
[macro name=背景_四条_歌舞伎座中]
[bg storage="../fgimage/bg/bg_kabuki_in.jpg" time=%time|50 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[endmacro]
;==============
[macro name=背景_四条_銀座]
[bg storage="../fgimage/bg/B4nFWraU42/ginza3.jpg" time=%time|50 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条_商店]
[bg storage="../fgimage/bg/bg_shop_wazakka.jpg" time=1500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_四条家廊下]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_rouka.jpg" time=2000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条玄関]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg" time=%time|500 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_ネリネ]
[bg storage="../fgimage/bg/B4nFWraU42/nerine_img.jpg" time=2000 wait=false method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条家玄関_外]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_genkan.jpg" time=50 method=%method | &f.bg_method wait=true]
[endmacro]
;==============
[macro name=背景_華衣婚約者の玄関]
;【背景】華衣婚約者の玄関
[bg storage="../fgimage/bg/test_mon.jpg" time=10 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_華衣婚約者の実家]
[bg storage="../fgimage/bg/test_konyaku_jikka2.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_土蔵]
[bg storage="../fgimage/bg/test_sijyou_dozou.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_土蔵の中]
[bg storage="../fgimage/bg/B4nFWraU42/sijyou_dozou.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条夕焼け]
[bg storage="../fgimage/bg/bg_yuuyake.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_四条_波ヶ裏]
[bg storage="../fgimage/bg/test_sijyou_namigauara.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_華衣婚約者花園]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg" time=50 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_青空]
[bg storage="../fgimage/bg/bg_bluesky.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　Mike Linksvayer　https://www.flickr.com/photos/mlinksva/15476575104/'"]
[endmacro]
;==============
[macro name=背景_四条病院]
[bg storage="../fgimage/bg/sijyou_byouin.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[endmacro]
;==============
[macro name=背景_四条華道教室_1]
[bg storage="../fgimage/bg/B4nFWraU42/sijyou_kyousitu1.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条華道教室(夕)]
[bg storage="../fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条華道教室(夕)_2]
[bg storage="../fgimage/bg/B4nFWraU42/sijyou_kyousitu1_yuu2.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条華道教室廊下]
[bg storage="../fgimage/bg/B4nFWraU42/sijyou_kyousitu_rouka1.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条華道教室全体(夕)]
[bg storage="../fgimage/bg/B4nFWraU42/sijyou_kyousitu_zentai.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条展覧会]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_tenrankai.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条金屏風1]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条金屏風2]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu2.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条宴会]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_enkai.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_沈丁花]
[bg storage="../fgimage/bg/B4nFWraU42/jincyou_ge.jpg" time=100 wait=false method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_四条宴会廊下]
[bg storage="../fgimage/bg/bg_enkaijou_rouka.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[endmacro]
;==============
[macro name=背景_線香花火]
[bg storage="../fgimage/bg/sijyou_hanabi1.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;==============
[macro name=背景_花火2]
[bg storage="../fgimage/bg/sijyou_hanabi2.jpg" time=1000 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　YUKI　http://photo.v-colors.com/329.html'"]
[endmacro]
;==============
[macro name=背景_香水店中]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kousi.jpg" time=2000 wait=false method=%method | &f.bg_method wait=true]
[endmacro]
;==============
[macro name=背景_香水店前]
[bg storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kousuiB.jpg" time=600 method=%method | &f.bg_method wait=true]
[endmacro]
;==============
[macro name=背景_青空に桜]
[bg storage="../fgimage/bg/bg_sakura.jpg" time=600 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit='photo　by　djNIV　https://www.flickr.com/photos/nivpic/4496431348/'"]
[endmacro]
;==============
[macro name=背景_チャリティ会場階段]
;【背景】二階への階段
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity7.jpg" time=1100]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_チャリティ会場出店]
;【背景】背景バザー出店（遠景）
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]

[macro name=背景_チャリティ会場食堂]
;【背景】背景バザー食堂
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/sijyou_bazaar_syokudou.jpg" time=50]
[eval exp="f.src='bg/B4nFWraU42/sijyou_bazaar_syokudou.jpg'"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_チャリティ会場回廊]
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/sijyou_bazaar_kairou.jpg" time=50]
;表示準備用
[eval exp="f.src='bg/B4nFWraU42/sijyou_bazaar_kairou.jpg'"]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============
[macro name=背景_チャリティ会場休憩所夜]
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/sijyou_bazaar_kyukeijyo.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[endmacro]
[macro name=背景_チャリティ会場ダンスホール]
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity3.jpg" time=50]
[eval exp="f.src='bg/B4nFWraU42/bg_cyarity3.jpg'"]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[endmacro]
;==============================================================
;全てはここにGoします
[return]


