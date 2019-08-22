*start
;【レイヤー修正予定表】
;layer1→base：背景
;==============================
;layer21→0:システム表示：月
;layer22→0:システム表示：週
;layer24→0:システム表示：主人公パラメータ画像&数値テキスト
;layer23→1:システム表示：フキダシ枠
;layer25→1:システム表示：手紙各場面画像
;layer26→1:システム表示：お稽古アニメ、攻略対象情報（背景)
;layer27→1:システム表示：攻略対象情報（数値テキスト）
;layer28→1:システム表示：攻略対象情報（手紙属性）
;layer30→1:システム表示：予備
;==============================
;layer8→1：他キャラbase
;layer9→1:他キャラ眉
;layer10→1:他キャラ目
;layer11→1:他キャラ口
;layer12→1:他キャラエモーション（頬染め、汗）
;layer13→1:予備
;==============================
;layer14→message0:メッセージレイヤ
;==============================
; 立ち絵マクロ設定
;【主人公グラL】
;layer3→1：base
;layer4→1:眉
;layer5→1:目
;layer6→1:口
;layer7→1:エモーション（頬染め、汗）
;==============================
; 立ち絵マクロ設定
;【主人公顔グラ】
;layer15→message0 zindex=1003：base
;layer16→message0 zindex=1004:眉
;layer17→message0 zindex=1004:目
;layer18→message0 zindex=1004:口
;layer19→message0 zindex=1004:エモーション（頬染め、汗）
;layer20→message0 zindex=1004:手
;==============================
;layer29→message0 zindex=1005:システム表示：手紙（イベント）

;名前表示用のマクロ(ティラノ公式サンプルゲーム『MikuPod』を参考にしています)
;ティラノバージョンアップによりhtmlタグが名前欄に表示される不具合防止のため、rubyと名前を2行に分けて表示するよう変更しました。それに伴いy位置を条件分岐で設定するように変更しました。◆jsYiJcqRkk
[macro name="whosay"]
[eval exp="sf.father_name='浩文'"]
[eval exp="sf.message_name_y=412"]
;入力された名前によって色を変更
[iscript]
if(mp.name=="文矢"){
    mp.ruby = "";
    mp.color = "#538a8a";
}else if(mp.name==sf.girl_namae){
    mp.ruby = "";
    mp.color = "#cf5a7f";
}else if(mp.name=="幼い頃の私"){
    mp.ruby = "";
    mp.color = "#cf5a7f";
}else if(mp.name=="磯野"){
    mp.ruby = "";
    mp.color = "dimgray";
}else if(mp.name=="ばあや"){
    mp.ruby = "";
    mp.color = "#916565";
}else if(mp.name==sf.father_name){
    mp.ruby = "";
    mp.color = "DarkSlateBlue";
}else if(mp.name=="黒田　将貴"){
    mp.ruby = "　くろだ　　まさたか";
    mp.color = "#7a65b2";
}else if(mp.name=="黒田 将貴"){
    mp.ruby = "　くろだ　　まさたか";
    mp.color = "#7a65b2";
}else if(mp.name=="黒田将貴"){
    mp.ruby = "　くろだ　　まさたか";
    mp.color = "#7a65b2";
}else if(mp.name=="田中　岩男"){
    mp.ruby = "";
    mp.color = "#775545";
}else if(mp.name=="財前 美彬"){
    mp.ruby = "ざいぜん　　よしあきら";
    mp.color = "#929055";
}else if(mp.name=="財前　美彬"){
    mp.ruby = "ざいぜん　　よしあきら";
    mp.color = "#929055";
}else if(mp.name=="財前美彬"){
    mp.ruby = "ざいぜん　よしあきら";
    mp.color = "#929055";
}else if(mp.name=="財前・アルベルト・美彬"){
    mp.ruby = "ざいぜん　　　　　よしあきら";
    mp.color = "#929055";
}else if(mp.name=="独逸大使夫人"){
    mp.ruby = "　ドイツ";
    mp.color = "#b2a077";
}else if(mp.name=="財前母"){
    mp.ruby = "ざいぜん";
    mp.color = "#b2a077";
}else if(mp.name=="四条"){
    mp.ruby = "";
    mp.color = "olivedrab";
}else if(mp.name=="四条 華織"){
    mp.ruby = "";
    mp.color = "olivedrab";
}else if(mp.name=="四条華織"){
    mp.ruby = "";
    mp.color = "olivedrab";
}else if(mp.name=="華織"){
    mp.ruby = "";
    mp.color = "olivedrab";
}else if(mp.name=="華織お兄さま"){
    mp.ruby = "";
    mp.color = "olivedrab";
}else if(mp.name=="四条父"){
    mp.ruby = "";
    mp.color = "darkolivegreen";
}else if(mp.name=="四条母"){
    mp.ruby = "";
    mp.color = "#9B608B";
}else if(mp.name=="四条祖父"){
    mp.ruby = "";
    mp.color = "#888898";
}else if(mp.name=="四条祖母"){
    mp.ruby = "";
    mp.color = "#916565";
}else if(mp.name=="四条 華衣"){
    mp.ruby = "しじょう　　か　い";
    mp.color = "#22ae91";
}else if(mp.name=="四条　華衣"){
    mp.ruby = "しじょう　　か　い";
    mp.color = "#22ae91";
}else if(mp.name=="四条華衣"){
    mp.ruby = "しじょう　　か　い";
    mp.color = "#22ae91";
}else if(mp.name=="華衣"){
    mp.ruby = "　か　い";
    mp.color = "#22ae91";
}else if(mp.name=="葛城宮 晴仁"){
    mp.ruby = "かつらぎのみや　　はるひと";
    mp.color = "#414180";
}else if(mp.name=="四条悠次郎"||mp.name=="四条　悠次郎"||mp.name=="四条 悠次郎"){
    mp.ruby = "";
    mp.color = "darkolivegreen";
}else if(mp.name=="葛城宮　晴仁"){
    mp.ruby = "かつらぎのみや　　はるひと";
    mp.color = "#414180";
}else if(mp.name=="葛城宮晴仁"){
    mp.ruby = "かつらぎのみや　はるひと";
    mp.color = "#414180";
}else if(mp.name=="藤枝　肇"){
    mp.ruby = "ふじえだ　　はじめ";
    mp.color = "#8280ff";
}else if(mp.name=="藤枝 肇"){
    mp.ruby = "ふじえだ　　はじめ";
    mp.color = "#8280ff";
}else if(mp.name=="藤枝肇"){
    mp.ruby = "ふじえだ　はじめ";
    mp.color = "#8280ff";
}else if(mp.name=="郵便屋"){
    mp.ruby = "";
    mp.color = "#8280ff";
}else if(mp.name=="藤枝　晶子"){
    mp.ruby = "";
    mp.color = "#bb7bda";
}else if(mp.name=="藤枝 晶子"){
    mp.ruby = "";
    mp.color = "#bb7bda";
}else if(mp.name=="藤枝晶子"){
    mp.ruby = "";
    mp.color = "#bb7bda";
}else if(mp.name=="三宮　時子"){
    mp.ruby = "さんのみや　　ときこ";
    mp.color = "#c25232";
}else if(mp.name=="三宮 時子"){
    mp.ruby = "さんのみや　　ときこ";
    mp.color = "#c25232";
}else if(mp.name=="三宮時子"){
    mp.ruby = "さんのみや　ときこ";
    mp.color = "#c25232";
}else if(mp.name=="お茶屋の娘"){
    mp.ruby = "";
    mp.color = "#5b7e23";
}else{
    mp.ruby = "";
    mp.color = "#807070";
}//名前領域の一旦削除
$(".chara_name_area").remove();

//名前をバックログに追加←ティラノバージョンアップにより自動で名前が挿入されるようになった為、コメントアウトします
;tf.name_for_log = "<font color = '" + mp.color + "'>【 " + mp.name + " 】</font>";
;if (mp.name!="") {
;	this.kag.variable.tf.system.backlog.push(tf.name_for_log);
;}
[endscript]
[if exp="mp.ruby != ''"]
[ptext name="chara_name_area" layer=message0 text=&mp.ruby color=&mp.color face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=8 x=260 y=399 bold="bold"]
[ptext name="chara_name_area" layer=message0 text=&mp.name color=&mp.color size=23 x=260 y=410 bold="bold"]
[else]
[ptext name="chara_name_area" layer=message0 text=&mp.name color=&mp.color size=23 x=260 y=407 bold="bold"]
[endif]
[endmacro]
;[主人公ポーズ四条ピンク通常][主人公ポーズ四条ピンク指][主人公ポーズ四条緑通常][主人公ポーズ四条緑指]
;[主人公ポーズ四条紫通常][主人公ポーズ四条紫指][主人公ポーズ四条紫片手]
;[主人公ポーズ財前ドレス通常][主人公ポーズ財前ドレス片手]
;[主人公ポーズ財前ED通常][主人公ポーズ財前ED片手][主人公ポーズ財前ED両手]
;[主人公ポーズ通常][主人公ポーズ指][主人公ポーズ片手][主人公ポーズ両手][主人公退場]
;[主人公通常][主人公伏目][主人公驚][主人公困り][主人公困りほほえみ][主人公照れ][主人公照れ目普通][主人公ほほえみ]
;[主人公目パチ1回][主人公閉目パチ1回][主人公伏目パチ1回][主人公目閉じ][主人公目を開く][主人公笑顔][主人公ふぅ閉]
[macro name="主人公顔グラ"]
;眉
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
;目
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi2.png" time=0]
[wait time=10]
;口
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ee.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
;エモ
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]



;立ち絵表示[主人公ポーズ通常]
[macro name="主人公ポーズ通常"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ指]
[macro name="主人公ポーズ指"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/yubi.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ片手]
[macro name="主人公ポーズ片手"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/katate.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ両手]
[macro name="主人公ポーズ両手"]
[chara_mod name="girl_base" storage="girl/S/base_ryoute.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/ryoute.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;◆◆◆ 四条Goodエピローグピンク ◆◆◆

;立ち絵表示[主人公ポーズ四条ピンク通常]
[macro name="主人公ポーズ四条ピンク通常"]
[chara_mod name="girl_base" storage="girl/S/base_sED_pink.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ四条ピンク指]
[macro name="主人公ポーズ四条ピンク指"]
[chara_mod name="girl_base" storage="girl/S/base_sED_pink.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/yubi_sED_pink.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;◆◆◆ 四条Goodエピローグ緑 ◆◆◆
;立ち絵表示[主人公ポーズ四条緑通常]
[macro name="主人公ポーズ四条緑通常"]
[chara_mod name="girl_base" storage="girl/S/base_sED_green.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ四条緑指]
[macro name="主人公ポーズ四条緑指"]
[chara_mod name="girl_base" storage="girl/S/base_sED_green.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/yubi_sED_green.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;◆◆◆ 四条展覧会紫 ◆◆◆
;立ち絵表示[主人公ポーズ四条紫通常]
[macro name="主人公ポーズ四条紫通常"]
[chara_mod name="girl_base" storage="girl/S/base_sTenran.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ四条紫指]
[macro name="主人公ポーズ四条紫指"]
[chara_mod name="girl_base" storage="girl/S/base_sTenran.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/yubi_sTenran.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ四条紫片手]
[macro name="主人公ポーズ四条紫片手"]
[chara_mod name="girl_base" storage="girl/S/base_sTenran.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/katate_sTenran.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;◆◆◆ 財前ドレス ◆◆◆
;立ち絵表示[主人公ポーズ財前ドレス通常]
[macro name="主人公ポーズ財前ドレス通常"]
[chara_mod name="girl_base" storage="girl/S/base_zDress.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ財前ドレス片手]
[macro name="主人公ポーズ財前ドレス片手"]
[chara_mod name="girl_base" storage="girl/S/base_zDress.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/katate_zDress.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;◆◆◆ 財前エンディング ◆◆◆
;立ち絵表示[主人公ポーズ財前ED通常]
[macro name="主人公ポーズ財前ED通常"]
[chara_mod name="girl_base" storage="girl/S/base_zED.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ財前ED片手]
[macro name="主人公ポーズ財前ED片手"]
[chara_mod name="girl_base" storage="girl/S/base_zED.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/katate_zED.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ財前ED両手]
[macro name="主人公ポーズ財前ED両手"]
[chara_mod name="girl_base" storage="girl/S/base_ryoute_zED.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="girl/S/ryoute_zED.png" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;◆◆◆ 葛城宮 ◆◆◆
;立ち絵表示[主人公ポーズ葛城宮白桜色通常]
[macro name="主人公ポーズ葛城宮白桜色通常"]
[chara_mod name="girl_base" storage="girl/S/base_kSakura.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ葛城宮白桜色通常m]
[macro name="主人公ポーズ葛城宮白桜色通常m"]
[chara_mod name="girl_base" storage="girl/S/base_kSakura_m.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ葛城宮白桜色通常s]
[macro name="主人公ポーズ葛城宮白桜色通常s"]
[chara_mod name="girl_base" storage="girl/S/base_kSakura_s.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ葛城宮ED通常]
[macro name="主人公ポーズ葛城宮ED通常"]
[chara_mod name="girl_base" storage="girl/S/base_kED.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公ポーズ葛城宮ED通常b]
[macro name="主人公ポーズ葛城宮ED通常b"]
[chara_mod name="girl_base" storage="girl/S/base_kEDb.png" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="f.kaogura='on'"]
[endmacro]

;立ち絵表示[主人公通常]
[macro name="主人公通常"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;マクロ作成ありがとうございます（スクリプト担
;立ち絵表示[主人公困り照れ]
[macro name="主人公困り照れ"]
;～～～驚きつつ困惑照れ～～～
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;～～～驚きつつ困惑照れ～～～
[endmacro]

;立ち絵表示[主人公柔和ほほえみ１]
[macro name="主人公柔和ほほえみ１"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公伏目]
[macro name="主人公伏目"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公驚]
[macro name="主人公驚"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公困り]
[macro name="主人公困り"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]
[return]