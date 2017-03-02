[call target=*start storage="tyrano.ks"]
[setreplay name="kuroda_3_4_normalED_scene1" storage="naming.ks" target="naming"]
*naming

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください

[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;主人公の名前決め
;=============================================
;入力部分にティラノスクリプト交流掲示板http://tyrano.bbs.fc2bbs.net/「質問用スレッド」より、>>324keito@様のスクリプトをお借りしました。
;keito様、ありがとうございます。
;=============================================

[cm]

;背景変更:水色
[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=100]
;[chara_mod name="bg" storage="toumei.gif" time=100]

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[position width=960 height=550 top=60 left=300 page=fore opacity=0]
;[font color=black size=24]

;主人公画像表示【初登場時のみchara_new使用。後はマクロで切り替え】
[chara_new name="A_base" storage="toumei.gif"]
[chara_show left=50 top=220 layer=3 name="A_base" time=0]
[wait time=10]
[chara_new name="A_mayu" storage="toumei.gif"]
[chara_show left=50 top=220 layer=4 name="A_mayu" time=0]
[wait time=10]
[chara_new name="A_me" storage="toumei.gif"]
[chara_show left=50 top=220 layer=5 name="A_me" time=0]
[wait time=10]
[chara_new name="A_kuti" storage="toumei.gif"]
[chara_show left=50 top=220 layer=6 name="A_kuti" time=0]
[wait time=10]
[chara_new name="A_emo" storage="toumei.gif"]
[chara_show left=50 top=220 layer=7 name="A_emo" time=0]
[wait time=10]


[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
[wait time=10]

;name属性を指定してアニメーション ふわっと表示するが重い
;[anim name="A_base" opacity=0 time=100]
;[anim name="A_mayu" opacity=0 time=100]
;[anim name="A_me" opacity=0 time=100]
;[anim name="A_kuti" opacity=0 time=100]
;[anim name="A_emo" opacity=0 time=100]
;[wa]

[主人公ポーズ通常L]
[wait time=10]
[主人公通常L]
[wait time=10]

;name属性を指定してアニメーション ふわっと表示するが重い
;[anim name="A_base" opacity=255 time=1000]
;[anim name="A_mayu" opacity=255 time=1001]
;[anim name="A_me" opacity=255 time=1001]
;[anim name="A_kuti" opacity=255 time=1001]
;[anim name="A_emo" opacity=255 time=1001]
;[wa]

[iscript]
$('.junbi_girl').remove();
[endscript]

;名前入力部分
*show_input_yourname
;[主人公目パチ1回L]
[wait time=10]
主人公の名前を教えてください[r][r]
苗字：[r][r][r][r][r]
[edit left=360 top=200 width=200 length=200 maxchars=4 name="sf.girl_myouji"]
[locate x=200 y=200]
名前：[r][r]
　　　　　　　　　　　　　　　[resetfont]
[edit left=360 top=350 width=200 length=200 maxchars=4 name="sf.girl_namae"]
[locate x=200 y=200]
[iscript]
//デフォルトの名前
$("input[name='sf.girl_myouji']").val("鷹司");
$("input[name='sf.girl_namae']").val("文奈");
[endscript]
;editとlinkは干渉してクリックできなくなるので、buttonがオススメです
[button graphic="kettei.png" target=*ck_name x=650 y=250]



[s]

*ck_name
;入力内容を確定します
;commitするとバグる為、コメントアウト
;[commit]
[iscript]
//Javascriptでティラノのバグを回避
sf.girl_myouji = $("input[name='sf.girl_myouji']").val()
sf.girl_namae = $("input[name='sf.girl_namae']").val()
[endscript]
[nowait]
[cm]

;空白部分があるとき,名前が未入力の場合
[if exp="sf.girl_myouji=='' || sf.girl_namae==''"]
すみません。名前が見当たらないのですが……
[主人公困りほほえみL]
[l][cm]

@jump target=*show_input_yourname
[endif]

;名前の最終確認
*ck_name2
[cm]
[主人公目パチ1回L]
「[emb exp=sf.girl_myouji] [emb exp=sf.girl_namae]」[r]
この名前でよろしいですか？[r]
[r][r][r]
[font size=41]
[link target=*ck_OK]　　はい[endlink][r]
[r][r][r][r]
[link target=*ck_NG]　　いいえ[endlink]
[resetfont]
[s]

*ck_OK
[cm]
[autosave]
「[emb exp=sf.girl_myouji] [emb exp=sf.girl_namae]」[r][r]
[主人公笑顔L]
ありがとうございます
[r][l][cm]

;【BGM】フェードアウト
[fadeoutbgm time=1000]

[主人公退場L]
[freeimage page=fore layer=0 ]

[endreplay] 

;------プロローグskipの最初にジャンプする
@jump target=skip_plg0
;@jump storage="prologue.ks"
[s]

*ck_NG
[cm]
お名前を、もう一度お願いします
[主人公ほほえみL]
[l][cm]

@jump target=*show_input_yourname
[s]
;===============================================ここから=============================================================
*skip_plg0
;start

;黒田チェック
[if exp="sf.ED_kuroda_bad == 1 || sf.ED_kuroda_normal == 1 || sf.ED_kuroda_good == 1"]
@jump target=skip_sentaku
[endif]
;四条チェック
[if exp="sf.ED_sijyou_bad == 1 || sf.ED_sijyou_normal == 1 || sf.ED_sijyou_good == 1"]
@jump target=skip_sentaku
[endif]
;財前チェック
[if exp="sf.ED_zaizen_bad1 == 1 || sf.ED_zaizen_bad2 == 1 || sf.ED_zaizen_normal == 1 || sf.ED_zaizen_good == 1"]
@jump target=skip_sentaku
[endif]
;葛城宮チェック
[if exp="sf.ED_katuraginomiya_good == 1 || sf.ED_katuraginomiya_normal == 1 || sf.ED_katuraginomiya_bad == 1"]
@jump target=skip_sentaku
[endif]
;藤枝チェック
[if exp="sf.ED_hujieda_good == 1 || sf.ED_hujieda_normal == 1 || sf.ED_hujieda_bad == 1"]
@jump target=skip_sentaku
[endif]
@jump storage="prologue.ks"
[s]

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]

*skip_sentaku
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
;和紙風 水色
;[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=100]
;和紙風 セピア色
;[chara_mod name="bg" storage="bg/plane_sepia.jpg" time=100]
;和紙風 若草色
;[chara_mod name="bg" storage="bg/plane_wakakusa.jpg" time=100]
;[eval exp="f.haikei_credit=''"]

;=====================================================
;選択肢用レイヤーを追加
[position layer=message1 height=400 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;=====================================================

[link target=*plo]プロローグから始める[endlink][r]
[r][r][r]
[link target=*op] オープニングから始める[endlink][r]
[r][r][r]
[link target=*okiko] お稽古から始める[endlink][r]
[resetfont]
[s]

*plo
@jump storage="prologue.ks"
[s]

*op
;------オープニングの最初にジャンプする
@jump storage="opening2.ks"
[s]

*okiko
;------お稽古画面からはじめる
[stopbgm]
;------シナリオの最初にジャンプする
@jump storage="okeiko.ks"
[s]


*window_close
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]

[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible=true
[freeimage layer = 27]
[wait time=10]

[return]
