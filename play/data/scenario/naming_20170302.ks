
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

;------シナリオの最初にジャンプする
@jump storage="prologue.ks"
[s]

*ck_NG
[cm]
お名前を、もう一度お願いします
[主人公ほほえみL]
[l][cm]

@jump target=*show_input_yourname
[s]





