
;ティラノスクリプト　ブースターパック
;メニューボタン非表示
[hidemenubutton]
[stopbgm]
;ゲームに必要なライブラリ読み込み
[call storage="tyrano.ks"]
;[call storage="novel_booster.ks"]
[wait time=10]
[call storage="boost_mode/boost_mode.ks"]

;メッセージレイヤの定義(画面全体）
[position layer=message0 width=960 height=500 top=80 left=320 page=fore opacity=0]

;タイトルの設定
[title name="恋綴り"]

[if exp="sf.BGM=='OFF'"]
;BGM設定がOFFの場合はロード時点で再生していたBGMを停止します。
[stopbgm]
[endif]

@layopt layer=message0 page=fore visible=true
[font color=white]
_　　　　　　・・・読込中・・・[r]
[call target=*start storage="macro_etc.ks"]
[wait time=10]
[call target=*start storage="macro_etc2.ks"]
[wait time=10]
[call target=*start storage="macro_etc3.ks"]
[wait time=10]
[call target=*start storage="macro_graphic.ks"]
[wait time=10]
[call target=*start storage="macro_tati_girl.ks"]
[wait time=10]

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;githubでエラーとなるksファイル分をコメントアウトします："data/scenario/event.ks","data/scenario/hantei_fumi_toutyaku.ks","data/scenario/01_sijyou_fumi_toutyaku_hantei.ks","data/scenario/sansaku.ks","data/scenario/fumi_henji.ks","data/scenario/info_oaite_fumi.ks","data/scenario/fumi_toutyaku_shori_list.ks","data/scenario/fumi_wadai.ks","data/scenario/01_sijyou_fumi_toutyaku_shori_list.ks",
[iscript]
f.preload_images_title1 = ["data/fgimage/bg/title.jpg","data/fgimage/bg/bg_clearlist.jpg","data/fgimage/bg/bg_fumibako.jpg","data/fgimage/toumei.gif","data/image/button_title_start.png","data/image/button_title_load.png","data/image/button_title_cg.png","data/image/button_title_replay.png","data/image/button_title_credit.png","data/fgimage/button/frame_lesson_message.png","data/fgimage/button/frame_lesson_fukidasi.png","data/fgimage/button/frame_lesson.png","data/fgimage/button/kira_button.png","data/fgimage/button/menu_button_close.png","data/image/moji_sijyou.png","data/image/moji_zaizen.png","data/image/moji_kuroda.png"];
[endscript]
[preload storage=&f.preload_images_title1 wait=true]
_　　　　　　　　  20%
[iscript]
f.preload_images_title2 = ["data/fgimage/bg/B4nFWraU42/bg_info_sijyou.jpg","data/fgimage/bg/I9IhvvVdPo/bg_info_hujieda.jpg","data/fgimage/bg/I9IhvvVdPo/bg_info_katuraginomiya.jpg","data/fgimage/bg/I9IhvvVdPo/bg_info_zaizen.jpg","data/fgimage/bg/bg_info_kuroda.jpg","data/image/toumei.gif","data/image/button_bgm_off.png","data/image/button_bgm_on.png","data/image/button_se_off.png","data/image/button_se_on.png","data/image/button_kskip_off.png","data/image/button_kskip_on.png","data/image/button_boost_off.png","data/fgimage/bg/bg_kinari_sakura.jpg","data/fgimage/bg/plane_mizuiro.jpg","data/fgimage/bg/plane_sakura.jpg","data/fgimage/bg/plane_wakakusa.jpg","tyrano/images/kag/menu_load_bg.jpg","tyrano/images/kag/menu_save_bg.jpg","tyrano/images/kag/menu_bg.jpg","data/image/button_fumi.png","data/image/button_sansaku.png","data/image/button_info.png","data/image/button_message_load.png","data/image/button_message_log.png","data/image/button_message_save.png","data/image/button_message_skip.png","data/image/x_50x50.png"];
[endscript]
[preload storage=&f.preload_images_title2 wait=true]
[cm]
[font color=white]
_　　　　　　・・・読込中・・・[r]
_　　　　　　　　  40%
[iscript]
f.preload_images_title3 = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/mayu_tuyoki.png","data/fgimage/girl/S/mayu_sage.png","data/fgimage/girl/S/emo_hohosome.png","data/fgimage/bg/bg_prologue.jpg","data/fgimage/bg/bg_prologue_dark.jpg","data/fgimage/bg/bg_okeiko_main.jpg","data/fgimage/bg/bg_fumibako.jpg","data/fgimage/button/frame_lesson_message.png","data/fgimage/button/frame_lesson_fukidasi.png","data/fgimage/girl/S/girl_all_yubi_me_toji_mayu_yowa_ase.png","data/fgimage/girl/S/girl_all_yubi_me_fusi_mayu_yowa_ase.png","data/fgimage/girl/S/girl_all_me_futuu_mayu_futuu.png","data/fgimage/girl/S/girl_all_me_toji_mayu_komari.png","data/fgimage/girl/S/girl_all_me_toji_mayu_soft.png","data/fgimage/girl/S/girl_all_me_toji_mayu_futuu.png"];
[endscript]
[preload storage=&f.preload_images_title3 wait=true]
[cm]
[font color=white]
_　　　　　　・・・読込中・・・[r]
_　　　　　　　　  60%
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images1 = ["data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_fusi2.png","data/fgimage/girl/S/me_toji.png","data/fgimage/girl/S/me_niko.png","data/fgimage/girl/S/me_ake.png","data/fgimage/girl/S/me_yoko.png","data/fgimage/girl/S/me_yokofusi1.png","data/fgimage/girl/S/me_yokofusi2.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/girl/S/kuti_ake.png","data/fgimage/girl/S/kuti_hohoemi.png","data/fgimage/girl/S/kuti_ooake.png","data/fgimage/girl/S/kuti_warau.png","data/fgimage/girl/S/kuti_warau_s.png","data/fgimage/girl/S/kuti_otyobo.png","data/fgimage/button/qk_anim01.png","data/fgimage/button/qk_anim02.png","data/fgimage/button/qk_anim03.png","data/fgimage/bg/bg_4gatsu.jpg","data/fgimage/bg/bg_5gatsu.jpg","data/fgimage/bg/I9IhvvVdPo/bg_tegami_blue.jpg","data/fgimage/bg/B4nFWraU42/bg_tegami_sijyou.jpg","data/fgimage/bg/B4nFWraU42/bg_info_sijyou.jpg","data/fgimage/bg/I9IhvvVdPo/bg_tegami_zaizen.jpg","data/fgimage/bg/I9IhvvVdPo/bg_info_zaizen.jpg","data/fgimage/bg/bg_tegami_kuroda.jpg","data/fgimage/bg/bg_info_kuroda.jpg"];
[endscript]
[preload storage=&f.preload_images1 wait=true]
[cm]
[font color=white]
_　　　　　　・・・読込中・・・[r]
_　　　　　　　　  80%
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images2 = ["data/fgimage/message_bg/frame_red.png","data/fgimage/message_bg/frame_brown.png","data/fgimage/girl/L/base.png","data/fgimage/girl/L/mayu_futuu.png","data/fgimage/girl/L/me_futuu.png","data/fgimage/girl/L/kuti_futuu.png","data/fgimage/bg/room_niwa.jpg","data/fgimage/bg/bg_machi.jpg","data/fgimage/girl/L/gitl_L_all_futuu.png","data/fgimage/girl/L/girl_L_all_futuu_me_toji.png","data/fgimage/button/okeiko_koto.png","data/fgimage/button/okeiko_sadou.png","data/fgimage/button/okeiko_kadou.png","data/fgimage/button/okeiko_reihou.png","data/fgimage/button/okeiko_gogaku.png","data/fgimage/bg/I9IhvvVdPo/bg_preload_girl.jpg","data/fgimage/bg/B4nFWraU42/bg_sijyou_preload.jpg","data/fgimage/bg/I9IhvvVdPo/bg_preload_zaizen.jpg","data/fgimage/bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg","data/fgimage/bg/I9IhvvVdPo/bg_preload_hujieda.jpg","data/fgimage/bg/bg_preload_kuroda.jpg"];
//ver3.41ではエラーが出るのでコメントアウト。verup時に再度試すことf.preload_bgms = ["data/bgm/prologue_kotonisakuhana.m4a","data/bgm/isono_miyabi.m4a"];

f.preload_images3=["data/image/button_message_auto.png","data/image/button_message_close.png","data/image/button_message_load.png","data/image/button_message_log.png","data/image/button_message_save.png","data/image/button_message_skip.png"];
[endscript]
[preload storage=&f.preload_images2 wait=true]
[preload storage=&f.preload_images3 wait=true]
[cm]
[font color=white]
_　　　　　　・・・読込中・・・[r]
_　　　　　　　　 100%[r]
[r][r][font size=32]
_　　　・　click　・[r]
[r][r][resetfont][font color=white]
_　　　設定によっては音が鳴ります[r]
（タイトル画面右下で設定してください）[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）click=trueは一部ブラウザでクリック待ち的な動作をすることがあるため除いて運用中
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]

[resetfont]
[cm]

[iscript]
tf.system.backlog =[];
[endscript]
;タイトル画面表示
[jump storage="title.ks"]

;--------------------------

[s]
