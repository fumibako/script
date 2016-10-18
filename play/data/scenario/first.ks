
;ティラノスクリプト　ブースターパック
;メニューボタン非表示
[hidemenubutton]
[stopbgm]
;ゲームに必要なライブラリ読み込み
[call storage="tyrano.ks"]
;[call storage="novel_booster.ks"]
[call storage="macro_graphic.ks"]
[call storage="macro_etc.ks"]
[call storage="boost_mode/boost_mode.ks"]

;メッセージレイヤの定義(画面全体）
[position layer=message0 width=960 height=500 top=80 left=340 page=fore opacity=0]

;タイトルの設定
[title name="恋綴り"]

@layopt layer=message0 page=fore visible=true
[font color=white]
・・・読込中・・・[r]
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images_title1 = ["data/fgimage/bg/title.jpg","data/fgimage/toumei.gif"];
[endscript]
[preload storage=&f.preload_images_title1 wait=true]
20%

[iscript]
f.preload_images_title2 = ["data/image/button_title_start.png","data/image/button_title_load.png","data/image/button_title_cg.png","data/image/button_title_replay.png","data/image/button_title_credit.png"];
[endscript]
[preload storage=&f.preload_images_title2 wait=true]
[cm]
[font color=white]
・・・読込中・・・[r]
40%

[iscript]
f.preload_images_title3 = ["data/image/toumei.gif","data/image/button_bgm_off.png","data/image/button_bgm_on.png","data/image/button_se_off.png","data/image/button_se_on.png","data/image/button_kskip_off.png","data/image/button_kskip_on.png","data/image/button_boost_off.png"];
[endscript]
[preload storage=&f.preload_images_title3 wait=true]
[cm]
[font color=white]
・・・読込中・・・[r]
60%




;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images1 = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/kuti_futuu.png"];
//ver3.41ではエラーが出るのでコメントアウト。verup時に再度試すことf.preload_bgms = ["data/bgm/prologue_kotonisakuhana.m4a","data/bgm/isono_miyabi.m4a"];
[endscript]
[preload storage=&f.preload_images1 wait=true]
[cm]
[font color=white]
・・・読込中・・・[r]
80%

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images2 = ["data/fgimage/message_bg/frame_red.png","data/fgimage/message_bg/frame_brown.png","data/fgimage/girl/L/base.png","data/fgimage/girl/L/mayu_futuu.png","data/fgimage/girl/L/me_futuu.png","data/fgimage/girl/L/kuti_futuu.png"];
//ver3.41ではエラーが出るのでコメントアウト。verup時に再度試すことf.preload_bgms = ["data/bgm/prologue_kotonisakuhana.m4a","data/bgm/isono_miyabi.m4a"];
[endscript]
[preload storage=&f.preload_images2 wait=true]
[cm]
[font color=white]
・・・読込中・・・[r]
100%[r]
[r]
・click・[r]
[r]
設定によっては音が鳴ります[r]
（タイトル画面右下で設定してください）[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）click=trueは一部ブラウザでクリック待ち的な動作をすることがあるため除いて運用中
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]


[resetfont]
[cm]



;タイトル画面表示
[jump storage="title.ks"]

;--------------------------

[s]
