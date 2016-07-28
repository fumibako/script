[setreplay name="opening2"]
*opening2
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/girl/S/base.png"]
[preload storage="data/fgimage/girl/S/base_yubi.png"]
[preload storage="data/fgimage/girl/S/base_katate.png"]
[preload storage="data/fgimage/girl/S/base_ryoute.png"]
[preload storage="data/fgimage/girl/S/mayu_yowa.png"]
[preload storage="data/fgimage/girl/S/me_fusi1.png"]
[preload storage="data/fgimage/girl/S/kuti_futuu.png"]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;背景テスト
;=============================================

[cm]
;背景変更:主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]

;メッセージ窓の表示
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
;[current layer="message0"]
;名前欄の設定
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407 bold="bold"]
[chara_config ptext="chara_name_area"]

;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
;[locate x=900 y=390]
;[button name="message_close" graphic="button_message_close.png" role=message ]
[eval exp="sf.FButton='ON'"]
;主人公画像表示【マクロで切り替え】
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=20]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]

主人公邸 庭(昼)
[l]

[cm]
;背景変更:主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
主人公邸 庭(光射す昼)
[l]

[cm]
;背景変更:主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
主人公邸 庭(夜)
[l]

[cm]
;背景変更:主人公邸_お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
主人公邸 お稽古部屋
[l]

[cm]
;背景変更:主人公邸_玄関
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
主人公邸 玄関
[l]

[cm]
;背景変更:青空
[freeimage layer = 27]
[eval exp="f.haikei_credit='photo　by　Mike Linksvayer　https://www.flickr.com/photos/mlinksva/15476575104/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_bluesky.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
青空[l]


[cm]
;背景変更:町
[freeimage layer = 27]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_machi.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
町[l]

[cm]
;背景変更:料亭など
[freeimage layer = 27]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
庭の見える和室(大きな庭・昼)[r]
料亭などのシーンに
[l]

[cm]
;背景変更:料亭など
[freeimage layer = 27]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_ryouotei_yuu.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
庭の見える和室(大きな庭・夕)[r]
料亭などのシーンに
[l]

[cm]
;背景変更:庭の見える和室(小さい庭)
[freeimage layer = 27]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_koryouriya.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
庭の見える和室(小さい庭)
[l]


[cm]
;背景変更:森林公園入口(秋・昼)
[freeimage layer = 27]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
森林公園入口(秋・昼)
[l]


[cm]
;背景変更:森林公園入口(秋・夕)
[freeimage layer = 27]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_yuu.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
森林公園入口(秋・夕)
[l]


[cm]
;背景変更:森林公園入口(冬・昼)
[freeimage layer = 27]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
森林公園入口(冬・昼)
[l]


[cm]
;背景変更:森林公園入口(冬・夕)
[freeimage layer = 27]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_shinrinkouen_gate_winter_yuu.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
森林公園入口(冬・夕)
[l]

[cm]
;背景変更:紅葉
[freeimage layer = 27]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_kouyou_ussou.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
紅葉
[l]


[cm]
;背景変更:紅葉
[freeimage layer = 27]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_kouyou_kaidan.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
紅葉（階段）
[l]


[cm]
;背景変更:冬の木々
[freeimage layer = 27]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Eddy BERTHIER　https://www.flickr.com/photos/didy_b/16022666269/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_winter_forest.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
冬の木々
[l]

[cm]
;背景変更:冬の木々(夕)
[freeimage layer = 27]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Eddy BERTHIER　https://www.flickr.com/photos/didy_b/16022666269/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_winter_forest_yuu.jpg"]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[wait time=10]
冬の木々(夕)
[l]

[cm]
;背景変更:全画面表示(和紙風)
[freeimage layer = 27]
[wait time=10]
[eval exp="f.haikei_credit='image　by　和風素材.com　http://www.wafusozai.com/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
[wait time=10]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去
[anim name="message_save" opacity=0]
[anim name="message_load" opacity=0]
[anim name="message_backlog" opacity=0]
[anim name="message_skip" opacity=0]
[eval exp="sf.FButton='OFF'"]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[resetfont]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[font color=white size=31]
[wait time=10]
全画面表示(和紙風)
[l]

[cm]
;背景変更:全画面表示(和紙風)
[freeimage layer = 27]
[wait time=10]
[eval exp="f.haikei_credit='image　by　和風素材.com　http://www.wafusozai.com/'"]
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg"]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=20 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[resetfont]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[font color=white size=31]
[wait time=10]
全画面表示(和紙風・暗)
[l]

[stopbgm ]
;【BGM】秋の夜長（オープニング等まったりシーンに）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
;[playbgm storage="mattari_akinoyonaga.ogg" loop=true click=true]

;メッセージ窓の表示
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
;[current layer="message0"]
;名前欄の設定
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407 bold="bold"]
[chara_config ptext="chara_name_area"]

;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
;[locate x=900 y=390]
;[button name="message_close" graphic="button_message_close.png" role=message ]
[eval exp="sf.FButton='ON'"]

[autosave]

*test1
;【SE】時計（広間カチコチ）
;[playse storage=tokei_hiroma.ogg loop=false ]

;主人公画像表示【マクロで切り替え】
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=20]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=200]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「……はぁ」[p]

[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=20]
#
時計の音だけが響き渡っていた広い部屋に私のため息が重なった。[p]

[主人公伏目パチ1回]
[wait time=10]

障子の外に向けていた視線を目の前に戻すと、目に入るのは[r]
黒い表紙の大きな冊子と「見合い届け在中」の文字。[p]

[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[主人公ふぅ閉]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……ふぅ」[p]

[主人公閉伏目パチ1回]
[wait time=10]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
#
もう一度大きなため息を吐くと同時に、廊下の軋む音が耳に入った。[r]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
今この家で、私の部屋まで訪ねてくる人は一人しかいない。[p]

[fadeoutbgm time=3000]
[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「ありがとう、入っていいわよ」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

[stopbgm ]
[autosave]
;【BGM】みやび（磯野テーマ）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="isono_miyabi.ogg" loop=true click=true]

[whosay name=磯野 color="dimgray"]
「失礼します」[p]
#
予想通りこの家の家令である磯野が[r]
にこやかな笑みを浮かべて入ってくる。[p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]
コトリ、と私の前に温かな湯気のたつお茶が置かれた。[r]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

しかし鼻先をくすぐる芳醇な香りも、今の憂鬱な気持ちを[r]
持ち上げるには少し足りない。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、いい加減そちらに目を通されましたか？」
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[p]
;【SE】茶器に触れる（カチャ）
[playse storage=tya_katya.ogg loop=false ]


[chara_mod name="girl_te" storage="girl/S/katate.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「……」
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[p]
#
思わずお茶を持ちあげた手を止め視線を逸らす。

[主人公横伏目パチ1回]
[wait time=10]
私の目の前にあるこれは、３０分ほど前にここに置かれたまま、一度もその位置を変えていなかった。[p]
[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「どうなさいました？　先日まであんなに楽しみにしておられたのに」[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「ごめんなさい……本当にお手紙が届いたと思ったら[r]
[sp]緊張してしまって」[p]

（それに……）[p]

[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[主人公閉伏目パチ1回]
[wait time=10]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
#
磯野の視線に押し負けるように実際に手に取ってみると、[r]
ずっしりとした重みが両手にかかる。[p]


[stopbgm ]
;【BGM】秋の夜長（オープニング等まったりシーンに）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="mattari_akinoyonaga.ogg" loop=true click=true]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]

[autosave]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（まさか[emb exp="sf.kouryaku_ninzuu_kansuuji"]通も同時に届くなんて、思ってもみなかったわ）[p]
[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[主人公閉伏目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「旦那様は交友関係が広い方でいらっしゃいますからね。
[sp]それでも大変悩んで決められたんだと思いますよ」[p]
#
私の心の声が聞こえたのか、苦笑と共に言葉が投げかけられる。[p]

[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「それは分かっています、けれど……」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「私ったらお兄様たちとぐらいしかまともに男の人とお話しした事が無いのに、いきなり[emb exp="sf.kouryaku_ninzuu_kansuuji"]人の方と文通なんてできるのかしら」[p]

[主人公伏目パチ1回]
[wait time=10]

#
それに、父が選んだ人たちだ。[r]
きっと[emb exp="sf.kouryaku_ninzuu_kansuuji"]人とも格式高い御家柄の方々だろう。[r]
何かあったら父に迷惑がかかるかもしれない。[p]

;立ち絵表情変更
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
その事が何よりも心配だった。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様……」[p]

[主人公閉伏目パチ1回]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「そんなに気負われなくてもいいんですよ、旦那様も[r]
[sp]縁談が上手くいかなかったからといって咎めたりはされません」[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「むしろ……ここだけの話、やっとお嬢様と暮らし始めたのに[r]
[sp]周りが縁談の話ばかり持ってくると嘆かれていました」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「まぁ、お父様ったら」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
#
思わずクスリと笑みが浮かぶ。[p]

[autosave]
;立ち絵表情変更
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「第一、お相手の事を知るための文通なのですから[r]
[sp]無理をしては何も伝わりません。[r]
[sp]それでは実際にお会いする時困ってしまいますよ」[p]

[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「そ、そうね……いつかはお会いするんですものね」[p]

緩みかけていた表情が、また引きつっていく。[r]
最近ではきちんとお稽古を受け、少しは自信も付いてきたけれど、[r]
私はまだまだ立派な淑女とは言い難い。[p]

[主人公伏目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ee.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「やっぱり心配だわ……」[p]
[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「ご安心ください、お会いする事になるまで[r]
[sp]まだまだ沢山の時間が残されています」[p]
[主人公伏目パチ1回]
[wait time=10]

[autosave]
[whosay name=磯野 color="dimgray"]
「自信を持ってお会いできるよう、お稽古に励んでくださいませ。[r]
[sp]もちろんこの私も、誠心誠意ご協力させて頂きます」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「磯野……本当に、いつもありがとう」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「それに、知らない方の事を思って緊張されるなんて……」[p]
「お転婆でいらした昔からは想像もできないほど落ち着かれて[r]

[主人公困り]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ee.png" time=0]
[wait time=10]

[sp]磯野は感動しています」[p]
[whosay name=磯野 color="dimgray"]
「昔のお嬢様はそれはもう好奇心旺盛で[r]
[sp]興味を持たれると一直線に走り回られて……」[p]
[主人公ポーズ両手]
[wait time=20]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]
;【SE】茶器（カチャ）
[playse storage=tya_katya.ogg loop=false ]
[wait time=70]
[主人公驚]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
「も、もう！　やめてください！[r][l]

[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[sp]貴方の話はいつも最後にそれなんだから！」[p]
[主人公ポーズ通常]
[wait time=10]
[主人公困り]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「ふふ、すみませんお嬢様」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[autosave]
#
でも確かに、何もせずに悩んでいるなんて[r]
私らしく無かったかもしれない……[p]

（―――[名前]にも、いつか届くかもしれないよ？[r]
[sp]将来[名前]の事を一番大切にしてくれて[r]
[sp][名前]も一番大切だと思える人からの手紙）[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公通常]
[wait time=10]

ふと、昔兄に聞かされた言葉を思い出す。[r]
あの時は、家族以上に大切に思える人なんて想像もつかなかった。[p]

[主人公ポーズ指]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="mediumvioletred"]
（この中に、そんな風に思える人がいるのかしら？）[p]

[主人公目パチ1回]
[wait time=10]
ドキリと、先ほどまでの憂鬱な気持ちが嘘のように胸が高鳴った。[r]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
私は期待に胸を膨らませて冊子の表紙を開いた。[p]

*fumi_sentaku01
[autosave]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;[機能ボタン表示]
[if eval exp="sf.FButton='OFF'"]
[anim name="message_save" opacity=255 time=1]
[anim name="message_load" opacity=255 time=1]
[anim name="message_backlog" opacity=255 time=1]
[anim name="message_skip" opacity=255 time=1]
[else]
[endif]

;背景変更:和紙風
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]


#
どなたのお手紙を読みましょう？[r]
[glink target=&sf.fumi_list1[0] text=&sf.kouryaku_list_fullname[0] size=23 width="200" x=200 y=50 color=white]
[if exp="sf.kouryaku_ninzuu<2"]
[elsif exp="sf.kouryaku_ninzuu>=2"]
	[glink target=&sf.fumi_list1[1] text=&sf.kouryaku_list_fullname[1] size=23 width="200" x=600 y=50 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<3"]
[elsif exp="sf.kouryaku_ninzuu>=3"]
	[glink target=&sf.fumi_list1[2] text=&sf.kouryaku_list_fullname[2] size=23 width="200" x=200 y=150 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<4"]
[elsif exp="sf.kouryaku_ninzuu>=4"]
	[glink target=&sf.fumi_list1[3] text=&sf.kouryaku_list_fullname[3] size=23 width="200" x=600 y=150 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<5"]
[elsif exp="sf.kouryaku_ninzuu>=5"]
	[glink target=&sf.fumi_list1[4] text=&sf.kouryaku_list_fullname[4] size=23 width="200" x=200 y=250 color=white]
[endif]
	[glink target="fumi_dokuryou01" text="終了" color=gray size=23 width="200" x=600 y=250 color=white]
[s]

[cm]
@jump target=*fumi_sentaku01
[s]


*kuroda_fumi1
;背景変更:手紙
[chara_mod name="bg" storage="bg/bg_tegami_kuroda.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[名字] [名前]様[r]
[r]
初めてお手紙を差し上げます。黒田 将貴と申します。[r]
私は植物の研究をしている大学生です。[r]
[r]
[sp]御尊父様には私の幼少時より学業の励ましをいただき、お話をするたびに御見識の広さや深さに感銘を受けておりました。[r]
[名前]様のお話もお聞きしておりましたので、お手紙をお送りする機会をいただき、嬉しく感じております。[p]
[r]
[sp][名前]様はお花や生き物はお好きでしょうか。[r]
もしお好きでしたら嬉しいです。[r]
[r]
[sp]生き物の事や調査で見つけた興味深い事などをお手紙に書いてみたいと思います。[r]
お返事をいただけると嬉しいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　黒田　将貴[p]
[iscript]
f.kuroda_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*zaizen_fumi1
;背景変更:手紙
[chara_mod name="bg" storage="bg/bg_tegami_zaizen.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
（仮）[r]
[名字] [名前]様[r]
[r]
謹啓　春暖の候、皆様ますますご清栄のこととお喜び申し上げます。[r]
このたび、古式日本の伝統に則り婚約の申し出を行うべく、手紙と釣書を送らせて頂きました。[p]
[r]
[sp]これからしばらくの間、私の事を知って頂けるよう努力いたしますのでよろしくお願いします。[r]
では、お体にお気をつけてお過ごしください。返事をお待ちしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
[iscript]
f.zaizen_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*kaori_fumi1
[chara_mod name="bg" storage="bg/bg_tegami_kaori.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
（仮）[r]
[名字] [名前]様[r]
[r]
拝啓　最近では桜も咲き始め、暖かくなってきました。ご家族一同元気にお過ごしですか？[r]
久しぶり、僕の事覚えてるかな？[r]
小さい頃、よく一緒に遊んだ華織です。[r]
[r]
[sp]今更文通なんて、なんだか不思議な気持ちだね。昔からお父様が、僕のお嫁さんには[名前]ちゃんを、なんて言っていたけど、本当に実行するなんて驚いたでしょう？　まぁもちろん、僕も君なら大歓迎だけど……なんてね。[p]
[r]
[sp]ああ、けれど君になら、他にもたくさんの人からお手紙がきてる[r]
だろうね。[r]
知り合いだからって気を遣わないで、君の気持ちが一番大切なん[r]
だから。[r]
何かあったら昔みたいに相談に乗るよ。[r]
[r]
[sp]それじゃあ体に気をつけて、また会える日を楽しみにしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　四条　華織[p]
[iscript]
f.kaori_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*jiyuuwaku1_fumi1
[chara_mod name="bg" storage="bg/bg_tegami_jiyuuwaku1.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[cm]
（仮）[r]
自由枠1の手紙1[r]
[r]
（黒田ルートを一通り実装した後に余裕があれば、シナリオ募集をしたいと考えています。[r]
[sp]その際に、設定が自由なキャラ枠がある方がやりやすいライターさんもいらっしゃるかも、と「自由枠」を設けてみています）[r]
[r]
（スクリプト的に攻略対象を後から追加するよりは、最初から多めに作り後から素材を流し込むor隠す方がやりやすそうなので、仮に5枠で作っていますが枠数は変更の可能性があります。[r]
[sp]また、応募が無ければ黒田ルートのみで公開予定です）[p]
[iscript]
f.jiyuuwaku1_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*jiyuuwaku2_fumi1
[chara_mod name="bg" storage="bg/bg_tegami_jiyuuwaku2.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[eval exp="sf.FButton='OFF'"]
[主人公退場]
[cm]
（仮）[r]
自由枠2の手紙1[p]
[iscript]
f.jiyuuwaku2_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*fumi_dokuryou01
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[背景_庭]
[autosave]
[主人公ふぅ閉]
[wait time=10]
[主人公汗]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……ふぅ」[p]

[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「お疲れ様です」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公効果消]
[wait time=10]
#
私が読み終えるのと同時に、新しくお茶が注がれる。[p]
[主人公眉下げ]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「何か気になる事はございましたか？」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「お相手の事は多少旦那様にお聞きしていますので、何かありましたらお尋ねください」[p]

*isono_situmon01
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;[機能ボタン表示]
[if eval exp="sf.FButton='OFF'"]
[anim name="message_save" opacity=255 time=1]
[anim name="message_load" opacity=255 time=1]
[anim name="message_backlog" opacity=255 time=1]
[anim name="message_skip" opacity=255 time=1]
[else]
[endif]

;背景変更:和紙風
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[autosave]

#
何か尋ねてみましょうか？[r]

[glink target=&sf.isono_list1[0] text=&sf.ask_list1[0] fontcolor=gray size=21 width="200" x=200 y=50 color=white]
[if exp="sf.kouryaku_ninzuu<2"]
[elsif exp="sf.kouryaku_ninzuu>=2"]
[glink target=&sf.isono_list1[1] text=&sf.ask_list1[1] color=gray size=21 width="200" x=600 y=50 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<3"]
[elsif exp="sf.kouryaku_ninzuu>=3"]
[glink target=&sf.isono_list1[2] text=&sf.ask_list1[2] color=gray size=21 width="200" x=200 y=150 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<4"]
[elsif exp="sf.kouryaku_ninzuu>=4"]
[glink target=&sf.isono_list1[3] text=&sf.ask_list1[3] color=gray size=21 width="200" x=600 y=150 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<5"]
[elsif exp="sf.kouryaku_ninzuu>=5"]
[glink target=&sf.isono_list1[4] text=&sf.ask_list1[4] color=gray size=21 width="200" x=200 y=250 color=white]
[endif]
[glink target="isono_situmon_owari01" text="特に無い" color=gray size=21 width="200" x=600 y=250 color=white]
[s]

[cm]
@jump target=*isono_situmon01
[s]

*kuroda_isono1
*黒田について
[whosay name=磯野 color="dimgray"]
「黒田様は地方に沢山の土地をもつ[r]
[sp]古くから続く伝統ある御家柄とお聞きしています」[p]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「黒田様のお父様は亡くなられて数年になりますが[r]
[sp]旦那様と古くからのお知り合いでいらしたそうです」[p]
[主人公眉下げ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「黒田様ご本人はどんな方なのかしら？」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「黒田様は幼い頃から学業に才能を示され[r]
[sp]大学でも優秀な成績を修めておられるそうですよ。[r]
[sp]次の春にはご卒業予定とお聞きしております」[p]
[whosay name=磯野 color="dimgray"]
「旦那様がおっしゃるには、努力家で優しいお人柄だそうです。[r]
[主人公目パチ1回]
[wait time=10]
[sp]机上の学問だけではなく、野山など自然にも親しまれているそうです」[p]
[whosay name=磯野 color="dimgray"]
「他の方で何か気になる事はありますか？」[p]
@jump target=*isono_situmon01
[s]

*zaizen_isono1
;[whosay name=磯野 color="dimgray"]
;「財前様のご子息ですね」[p]
[whosay name=磯野 color="dimgray"]
「財前様のお父様は一代にして数多の事業を成功され、華族を襲名された実業家でございます」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口開]
[wait time=10]
[主人公眉下げ]
[wait time=10]
「華族として日が浅いながらも、財政界に強い発言力を持たれています」[p]
[whosay name=磯野 color="dimgray"]
「旦那様とは華族襲名来からのご友人だという事ですから、そのご縁でしょう」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
#
[whosay name=&sf.girl_namae color="mediumvioletred"]
「財前様はどんな方なのかしら？」[p]
[whosay name=磯野 color="dimgray"]
「旦那様がおっしゃるには、実力のある真面目な方なそうですよ。[r]
[sp]既にお父上の事業を手伝われ、素晴らしい成果を上げられてるとか」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……凄い方なんですね」[p]
[whosay name=磯野 color="dimgray"]
「他の方で何か気になる事はありますか？」[p]
@jump target=*isono_situmon01
[s]

*kaori_isono1
[主人公ポーズ指]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「四条華織様って……」[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公眉下げ]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「ああ、華織様ですか、懐かしいですねぇ。[r]
[sp]文矢様と同じお年なので、２２になられましたか」[p]
[主人公口開]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「やっぱり華織お兄様……何故私に？」[p]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「四条様は昔から華織様とお嬢様のご結婚を望まれていましたから[r]
[sp]不思議な事ではないと思いますが」[p]

[主人公口開]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「まぁ……ご冗談だと思ってました」[p]
[主人公口通常]
[wait time=10]
#
なんといっても６つも年が離れているのだ。[r]
もう結婚されたのだとばかり思っていた。[p]
[主人公眉通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

最後に会ったのはいつだったか、当時は本当の兄のように慕っていたのを覚えている。ぼんやりと過去の記憶を思い起こした。[p]
[主人公眉困り]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（華織お兄様と結婚の話なんて、なんだか変な感じがするわね）[p]
[主人公眉下げ]
[wait time=10]
[主人公効果消]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「といっても、四条様も破談になったからといって[r]
[sp]何か仰るような方ではないので、ご安心ください」[p]
[主人公眉通常]
[wait time=10]
[主人公目にこ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「ええ、それはよく分かってます」[p]
[whosay name=磯野 color="dimgray"]
「ふふ、そうですね。[r]
[sp]他に何かございますか？」[p]
@jump target=*isono_situmon01
[s]

*jiyuuwaku1_isono1
#
（仮）[r]
まだ未定です。[p]
@jump target=*isono_situmon01
[s]
*jiyuuwaku2_isono1
#
（仮）
まだ未定です。[p]
@jump target=*isono_situmon01
[s]

*isono_situmon_owari01
[背景_庭]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[autosave]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「もういいわ、色々ありがとう磯野」[p]

[whosay name=磯野 color="dimgray"]
「いえ、お役に立てたなら何よりです」[p]

[主人公口通常]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「返事のお手紙は……そうですね、遅くても来月中にはお書きになったほうがよろしいかと」[p]
[主人公ポーズ指]
[wait time=10]
[主人公横目]
[wait time=30]
[主人公横目パチ1回]
[wait time=10]
「もちろん早いほどお相手も喜ばれると思いますが[r]
[sp]なかなか言葉が浮かばない事もあるでしょう」[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目通常]
[wait time=30]
[主人公眉困り]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「分かりました」[p]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「ふふ、来月からはお嬢様が自信を持ってお相手に会えるよう[r]
[sp]お稽古も今まで以上に厳しくするよう先生方にお伝えしておきますね」[p]
[主人公目にこ]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「ふふ、お願いします」[p]
[主人公閉目パチ1回]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「それでは、そろそろ失礼させて頂きます。[r]
[sp]また何かございましたら、いつものようにお呼びください」[p]
[主人公眉通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「ええ、ありがとう」[p]
[主人公口通常]
[wait time=10]
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[wait time=30]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
[主人公ポーズ指]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[autosave]
#
磯野がいなくなるのを見届けて、もう一度じっくりと送られた手紙を見直す。[p]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（――黒田様、財前様、華織お兄様、自由枠1様、自由枠2様）[p]
[主人公眉困り]
[wait time=10]
[主人公目通常]
[wait time=30]
[主人公横目パチ1回]
[wait time=20]
（どんな方達なのかしら、華織お兄様もきっとお変りになってるだろうな）[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目通常]
[wait time=10]
[主人公眉強気]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（……早速お返事を考えないと）[p]
[主人公目パチ1回]
[wait time=10]
#
私は急いで机に向かいペンを手に取った。[p]
[主人公ポーズ指]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
「……」[p]
[主人公ポーズ片手]
[wait time=10]
[主人公眉困り]
[wait time=10]
[主人公汗]
[wait time=10]
[主人公横伏目パチ1回]
[wait time=10]
（何も思いつかない）[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[主人公口大]
[wait time=10]
#
焦る気持ちを抑えるため、大きく深呼吸をする。[p]
[主人公ポーズ指]
[wait time=10]
[主人公効果消]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公口通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="mediumvioletred"]
（そうだ、とりあえずお兄様にこの事をお伝えしよう。[r]
[sp]何かアドバイスをもらえるかもしれない）[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
（時間は沢山あるのだから……ゆっくり、考えよう）[p]
#

;【BGM】フェードアウト
[fadeoutbgm time=2000]
[主人公退場]

;オープニング　終



;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去
[anim name="message_save" opacity=0]
[anim name="message_load" opacity=0]
[anim name="message_backlog" opacity=0]
[anim name="message_skip" opacity=0]
[eval exp="sf.FButton='OFF'"]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
;背景非表示
[chara_mod name="bg" storage="toumei.gif" time=100]

;------タイトルへ戻る
;@jump storage="title.ks"
[endreplay]

;------シナリオの最初にジャンプする
@jump storage="okeiko.ks"
[s]



