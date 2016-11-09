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
[macro name="whosay"]
[eval exp="sf.father_name='浩文'"]
[eval exp="sf.message_name_y=407"]
;入力された名前によって色を変更
[iscript]
if(mp.name=="文矢"){
    mp.color = "#538a8a";
}else if(mp.name==sf.girl_namae){
    mp.color = "#cf5a7f";
}else if(mp.name=="幼い頃の私"){
    mp.color = "#cf5a7f";
}else if(mp.name=="磯野"){
    mp.color = "dimgray";
}else if(mp.name=="ばあや"){
    mp.color = "#916565";
}else if(mp.name==sf.father_name){
    mp.color = "DarkSlateBlue";
}else if(mp.name=="黒田　将貴"){
    mp.name = "黒田　<ruby><rb>将貴</rb><rt>まさたか</rt></ruby>";
    mp.color = "#7a65b2";
    sf.message_name_y=400;
}else if(mp.name=="黒田 将貴"){
    mp.name = "黒田 <ruby><rb>将貴</rb><rt>まさたか</rt></ruby>";
    mp.color = "#7a65b2";
    sf.message_name_y=400;
}else if(mp.name=="黒田将貴"){
    mp.name = "黒田<ruby><rb>将貴</rb><rt>まさたか</rt></ruby>";
    mp.color = "#7a65b2";
    sf.message_name_y=400;
}else if(mp.name=="田中　岩男"){
    mp.color = "#775545";
}else if(mp.name=="財前 美彬"){
    mp.name = "<ruby><rb>財前</rb><rt>ざいぜん</rt></ruby> <ruby><rb>美彬</rb><rt>よしあきら</rt></ruby>";
    mp.color = "#929055";
    sf.message_name_y=400;
}else if(mp.name=="財前　美彬"){
    mp.name = "<ruby><rb>財前</rb><rt>ざいぜん</rt></ruby>　<ruby><rb>美彬</rb><rt>よしあきら</rt></ruby>";
    mp.color = "#929055";
    sf.message_name_y=400;
}else if(mp.name=="財前美彬"){
    mp.name = "<ruby><rb>財前</rb><rt>ざいぜん</rt></ruby><ruby><rb>美彬</rb><rt>よしあきら</rt></ruby>";
    mp.color = "#929055";
    sf.message_name_y=400;
}else if(mp.name=="財前・アルベルト・美彬"){
    mp.name = "<ruby><rb>財前</rb><rt>ざいぜん</rt></ruby>・アルベルト・<ruby><rb>美彬</rb><rt>よしあきら</rt></ruby>";
    mp.color = "#929055";
    sf.message_name_y=400;
}else if(mp.name=="独逸大使夫人"){
    mp.name = "<ruby><rb>独逸</rb><rt>ドイツ</rt></ruby>大使夫人";
    mp.color = "#b2a077";
    sf.message_name_y=400;
}else if(mp.name=="財前母"){
    mp.name = "<ruby><rb>財前</rb><rt>ざいぜん</rt></ruby>母";
    mp.color = "#b2a077";
    sf.message_name_y=400;
}else if(mp.name=="四条"){
    mp.color = "olivedrab";
}else if(mp.name=="四条 華織"){
    mp.color = "olivedrab";
}else if(mp.name=="四条華織"){
    mp.color = "olivedrab";
}else if(mp.name=="華織"){
    mp.color = "olivedrab";
}else if(mp.name=="華織お兄さま"){
    mp.color = "olivedrab";
}else if(mp.name=="四条父"){
    mp.color = "darkolivegreen";
}else if(mp.name=="四条母"){
    mp.color = "#9B608B";
}else if(mp.name=="四条祖父"){
    mp.color = "#888898";
}else if(mp.name=="四条祖母"){
    mp.color = "#916565";
}else if(mp.name=="四条 華衣"){
    mp.name = "四条 <ruby><rb>華衣</rb><rt>かい</rt></ruby>";
    mp.color = "#22ae91";
    sf.message_name_y=400;
}else if(mp.name=="四条　華衣"){
    mp.name = "四条　<ruby><rb>華衣</rb><rt>かい</rt></ruby>";
    mp.color = "#22ae91";
    sf.message_name_y=400;
}else if(mp.name=="四条華衣"){
    mp.name = "四条<ruby><rb>華衣</rb><rt>かい</rt></ruby>";
    mp.color = "#22ae91";
    sf.message_name_y=400;
}else if(mp.name=="華衣"){
    mp.name = "<ruby><rb>華衣</rb><rt>かい</rt></ruby>";
    mp.color = "#22ae91";
    sf.message_name_y=400;
}else if(mp.name=="葛城宮 晴仁"){
    mp.name = "<ruby><rb>葛城宮</rb><rt>かつらぎのみや</rt></ruby> <ruby><rb>晴仁</rb><rt>はるひと</rt></ruby>";
    mp.color = "#414180";
    sf.message_name_y=400;
}else if(mp.name=="四条悠次郎"||mp.name=="四条　悠次郎"||mp.name=="四条 悠次郎"){
    mp.color = "darkolivegreen";
}else if(mp.name=="葛城宮　晴仁"){
    mp.name = "<ruby><rb>葛城宮</rb><rt>かつらぎのみや</rt></ruby> <ruby><rb>晴仁</rb><rt>はるひと</rt></ruby>";
    mp.color = "#414180";
    sf.message_name_y=400;
}else if(mp.name=="葛城宮晴仁"){
    mp.name = "<ruby><rb>葛城宮</rb><rt>かつらぎのみや</rt></ruby> <ruby><rb>晴仁</rb><rt>はるひと</rt></ruby>";
    mp.color = "#414180";
    sf.message_name_y=400;
}else if(mp.name=="藤枝　肇"){
    mp.name = "藤枝　<ruby><rb>肇</rb><rt>はじめ</rt></ruby>";
    mp.color = "#8280ff";
    sf.message_name_y=400;
}else if(mp.name=="藤枝 肇"){
    mp.name = "藤枝 <ruby><rb>肇</rb><rt>はじめ</rt></ruby>";
    mp.color = "#8280ff";
    sf.message_name_y=400;
}else if(mp.name=="藤枝肇"){
    mp.name = "藤枝<ruby><rb>肇</rb><rt>はじめ</rt></ruby>";
    mp.color = "#8280ff";
    sf.message_name_y=400;
}else if(mp.name=="郵便屋"){
    mp.color = "#8280ff";
}else if(mp.name=="藤枝　晶子"){
    mp.color = "#bb7bda";
}else if(mp.name=="藤枝 晶子"){
    mp.color = "#bb7bda";
}else if(mp.name=="藤枝晶子"){
    mp.color = "#bb7bda";
}else if(mp.name=="三宮　時子"){
    mp.name = "<ruby><rb>三宮</rb><rt>さんのみや</rt></ruby>　<ruby><rb>時子</rb><rt>ときこ</rt></ruby>";
    sf.message_name_y=400;
    mp.color = "#c25232";
}else if(mp.name=="三宮 時子"){
    mp.name = "<ruby><rb>三宮</rb><rt>さんのみや</rt></ruby> <ruby><rb>時子</rb><rt>ときこ</rt></ruby>";
    sf.message_name_y=400;
    mp.color = "#c25232";
}else if(mp.name=="三宮時子"){
    mp.name = "<ruby><rb>三宮</rb><rt>さんのみや</rt></ruby><ruby><rb>時子</rb><rt>ときこ</rt></ruby>";
    sf.message_name_y=400;
    mp.color = "#c25232";
}else if(mp.name=="お茶屋の娘"){
    mp.color = "#5b7e23";
}else{
    mp.color = "#807070";
}//名前領域の一旦削除
$(".chara_name_area").remove();

//名前をバックログに追加
tf.name_for_log = "<font color = '" + mp.color + "'>【 " + mp.name + " 】</font>";
if (mp.name!="") {
	this.kag.variable.tf.system.backlog.push(tf.name_for_log);
}
[endscript]
[ptext name="chara_name_area" layer=message0 text=&mp.name color=&mp.color size=26 x=260 y=&sf.message_name_y bold="bold"]
;[ptext name="chara_name_area" layer=message0 text=%name color=%color face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407 bold="bold"]
[endmacro]


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

;立ち絵表示[主人公困りほほえみ]
[macro name="主人公困りほほえみ"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公照れ]
[macro name="主人公照れ"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公照れ目普通]
[macro name="主人公照れ目普通"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公苦笑]
[macro name="主人公苦笑"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公ほほえみ]
[macro name="主人公ほほえみ"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公笑顔]
[macro name="主人公笑顔"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公ふぅ閉]
[macro name="主人公ふぅ閉"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公憂い]
[macro name="主人公憂い"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公真剣]
[macro name="主人公真剣"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公眉通常]
[macro name="主人公眉通常"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公眉下げ]
[macro name="主人公眉下げ"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公眉下げ下]
[macro name="主人公眉下げ下"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公眉困り]
[macro name="主人公眉困り"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公眉強気]
[macro name="主人公眉強気"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口通常]
[macro name="主人公口通常"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口ほほえみ]
[macro name="主人公口ほほえみ"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口笑顔]
[macro name="主人公口笑顔"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口笑顔小]
[macro name="主人公口笑顔小"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口えー]
[macro name="主人公口えー"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ee.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口ふぅ]
[macro name="主人公口ふぅ"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口開]
[macro name="主人公口開"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口大]
[macro name="主人公口大"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公口ムッ]
[macro name="主人公口ムッ"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[主人公目通常]
[macro name="主人公目通常"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目大]
[macro name="主人公目大"]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目にこ]
[macro name="主人公目にこ"]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目伏柔]
[macro name="主人公目伏柔"]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目伏]
[macro name="主人公目伏"]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目閉]
[macro name="主人公目閉"]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公横目]
[macro name="主人公横目"]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公横伏目]
[macro name="主人公横伏目"]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公汗]
[macro name="主人公汗"]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公頬染め]
[macro name="主人公頬染め"]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公涙]
[macro name="主人公涙"]
[chara_mod name="girl_emo" storage="girl/S/emo_namida.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公涙_目閉用]
[macro name="主人公涙_目閉用"]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公涙流]
[macro name="主人公涙流"]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_nagare.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公涙流_目閉用]
[macro name="主人公涙流_目閉用"]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_nagare_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公汗]
[macro name="主人公汗"]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公効果消]
[macro name="主人公効果消"]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目パチ1回]
[macro name="主人公目パチ1回"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目閉じ]
[macro name="主人公目閉じ"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公伏目パチ1回]
[macro name="主人公伏目パチ1回"]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公閉伏目パチ1回]
[macro name="主人公閉伏目パチ1回"]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目を開く]
[macro name="主人公目を開く"]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公閉目パチ1回]
[macro name="主人公閉目パチ1回"]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公横伏目パチ1回]
[macro name="主人公横伏目パチ1回"]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公横目パチ1回]
[macro name="主人公横目パチ1回"]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公退場]
[macro name="主人公退場"]
;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]
[eval exp="f.kaogura='off'"]
[endmacro]


;==============================
; 立ち絵マクロ設定
;【主人公グラL】
;layer3：base（のっぺらぼう）
;layer4:眉
;layer5:目
;layer6:口
;layer7:エモーション（頬染め、汗）
;==============================

;立ち絵表示[主人公ポーズ通常L]
[macro name="主人公ポーズ通常L"]
[chara_mod name="A_base" storage="girl/L/base.png" time=0]
[endmacro]

;立ち絵表示[主人公通常L]
[macro name="主人公通常L"]
[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
[endmacro]

;立ち絵表示[主人公笑顔L]
[macro name="主人公笑顔L"]
[chara_mod name="A_mayu" storage="girl/L/mayu_yowa.png" time=0]
[chara_mod name="A_me" storage="girl/L/me_niko.png" time=0]
[chara_mod name="A_kuti" storage="girl/L/kuti_warau.png" time=0]
[endmacro]

;立ち絵表示[主人公頬染めL]
[macro name="主人公頬染めL"]
[chara_mod name="A_emo" storage="girl/L/emo_hohosome.png" time=0]
[endmacro]

;立ち絵表示[主人公ほほえみL]
[macro name="主人公ほほえみL"]
[chara_mod name="A_mayu" storage="girl/L/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_niko.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公困りほほえみL]
[macro name="主人公困りほほえみL"]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_niko.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[主人公目パチ1回L]
[macro name="主人公目パチ1回L"]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="A_me" storage="girl/L/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="A_me" storage="girl/L/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=50]
[chara_mod name="A_me" storage="girl/L/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="A_me" storage="girl/L/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[主人公退場L]
[macro name="主人公退場L"]
[chara_mod name="A_base" storage="toumei.gif" time=0]
[chara_mod name="A_mayu" storage="toumei.gif" time=0]
[chara_mod name="A_me" storage="toumei.gif" time=0]
[chara_mod name="A_kuti" storage="toumei.gif" time=0]
[chara_mod name="A_emo" storage="toumei.gif" time=0]
[endmacro]

;立ち絵表示[主人公目パチL](未完成）
[macro name="主人公目パチL"]
[iscript]
function mepatiL(){
	var img_me = document.createElement("img");
	document.body.appendChild(img_me);
	img_me.src = "girl/L/me_toji.png";

}
setInterval("mepatiL()",1000);
[endscript]
[endmacro]

[return]




