;================================================================================
;イベント6回目【散策イベント２】1１月４週
;町で噂を聞く
;=======================お芝居の準備中です==========================================
*replay_zaizen_11_4_1
[stopbgm]
[call target=*11_4_1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[whosay name="新聞社社員"]
「号外！　号外！[r]
[sp]海軍高官贈賄事件に続き、大蔵大臣の金融不安を露呈した発言！[r]
[sp]さあ、新聞を買った買った！」
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

#
人々は、足を止めて新聞を買い、不安そうな顔つきでザワザワと[r]
話し合っている。[p]

[whosay name="町人女性"]
「銀行なんて信用できないわ！」[p]

[whosay name="町人男性"]
「ああ、今すぐ銀行からお金を引き出して、手元に保管しよう」[p]

#
すぐ近くの男性が、新聞を丸めて投げた新聞の号外が[r]
私の足元に転がってきた。
[autosave]
[wait time=10]
[p]

#
嫌な予感がするけれど、何が起こっているのかわからない。[p]
;原文：嫌な予感がするけど知らないと何かわからない。[p]

;【立ち絵】主人公：不安
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「一体、何の騒ぎかしら」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_open.ogg loop=false ]
;==========================スクリプト・全画面表示の間に設定　新聞===============================
#
;【テキスト全画面】;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=1000]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp]衆議院予算委員会での大蔵大臣の[r]
「志井銀行がとうとう倒産した」[r]
という発言が波紋を呼び今、金融不安が表面化している。
[autosave]
[wait time=10]
[p]

[sp]これまでの好景気から一転して景気は不況となり[r]
不良債権を抱えた会社も多数存在し[r]
経営不振の銀行も多く存在する。[r]
[r]
[sp]また首都を中心に取り付け騒ぎに及ぶ所もあり……[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
[主人公憂い]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
#

;【立ち絵】主人公：困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
「取り付け騒ぎですって？ こんな事って……」[p]

（財前様の銀行は、どうなっているのかしら？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：真剣
[主人公通常]
（私に今できることは……）[p]

#
私は、つかつかと新聞社員に近寄った。[p]

[whosay name="新聞社社員"]
「おや、お嬢さんも新聞を買うかい？」[p]

;【立ち絵】主人公：困り
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、今すぐこんな人の不安を煽るような新聞を売るのを[r]
[sp]止めてください！」[p]

[whosay name="新聞社社員"]
「……営業妨害するつもりか？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：怒り
[主人公真剣]
 [主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「営業妨害ですって？[r]
[sp]こんな記事こそ銀行にとっては、風評被害です！」[p]
[fadeoutbgm time=3000]
[主人公口通常]


[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん！」[p]

;===============================================================
;振り向いて背景変更する場合はこちら
;[bg wait=true method='crossfade' storage="../fgimage/bg/zaizen_kuruma1.jpg" time=50]
;[eval exp="f.haikei_credit=''"]
;[表示準備 storage="bg/zaizen_kuruma1.jpg" time=50]
;===============================================================
;町のままでで進行します。
[表示準備 storage="bg/bg_machi.jpg" time=50]
;=====================================================================

;====================
;【立ち絵】財前：驚
[財前ベーススーツ]
[財前驚き]
[表示開始 time=300]
;====================

#
見知った声に驚いて振り返ると財前様がいらした。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【立ち絵】主人公：驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様！[sp]どうしてここに？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「車で移動していたのですが、貴方の姿が見えましたので[r]
[sp]立ち寄っただけです」
[autosave]
[wait time=10]
[p]
[財前目にこ]
[財前口笑み]
#
そういって財前様は可笑しそうに笑う。[r]
私は、そんな風に笑う財前様を初めて見た[p]

;【立ち絵】主人公：驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？」[p]

;【立ち絵】財前：笑み
[財前笑み]
[whosay name="財前美彬" color="#7a65b2"]
「……淑女なようで、 芯がしっかりしていると思っていましたが[r]
[sp]貴方は意外にはねっ返りな面も、持ち合わせていたのですね」[p]

;【立ち絵】主人公：驚頬染め、両手を頬に
[主人公頬染め]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ！」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：目伏せ頬染　、両手を頬に
[主人公困り]
（見られていたのね……恥ずかしい。 穴があったら入りたいわ）
[autosave]
[wait time=10]
[p]

;もどすタイミングがないのでひとまず。
[主人公ポーズ通常]
[主人公通常]


;【立ち絵】財前：通常
[財前通常]
#
そして財前様は、私と新聞社の方の間に入った。[p]

[whosay name="財前美彬" color="#7a65b2"]
「そこの君、新聞を売るのを止めなさい！[r]
[sp]これ以上、販売するなら新聞社を訴えます」
[autosave]
[wait time=10]
[p]

[whosay name="新聞社社員"]
「あんたは誰だ？ 外国人のようだが……」[p]

#
いぶかしげに見る新聞社員に対して、財前様は冷ややかな笑みを浮かべる。[p]

;【立ち絵】財前：冷ややか
[財前冷ややか]
[whosay name="財前美彬" color="#7a65b2"]
「私は大正国際銀行頭取、 財前美彬だ。[r]
[sp]記事の差し止めの事は、亀蔵財閥総帥とも話し合い済みです」[p]

[whosay name="新聞社社員"]
「し、失礼しました！」[p]

[fadeoutbgm time=3000]
#
すっと新聞社員が青ざめて立ち去った。
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：ため息
[財前ため息]
[whosay name="財前美彬" color="#7a65b2"]
「まったく記事が売れると思って。[r]
[sp]人の不安を煽る記事を書くなんて最低です」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「今から新聞社に行きますが貴方は？」[p]

;【立ち絵】主人公：真剣
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「厚かましいかもしれませんが、一緒にお車に乗せて頂いて[r]
[sp]いいですか？  事情が知りたいのです」[p]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「ええ、どうぞ。[r]
[sp]機密はありますがそれ以外の事情なら、お話ししましょう」[p]

;====================================================================================
[暗転２]
[財前退場]
;【背景】車の外　外なので退場です。
[bg wait=true method='crossfade' storage="../fgimage/bg/zaizen_kuruma1.jpg" time=50]
;[eval exp="f.haikei_credit=''"]
[暗転２終了]
;====================================================================================
#
私と財前様が車に乗ると、運転手さんが車を走らせた。[p]

;【SE】車が走っている音（車内）
[playse storage=car_inside.ogg loop=false ]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「さて、何から知りたいですか？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「不況となって各銀行が、 経営難になっていることは、[r]
[sp]本当ですか？」[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
「ええ、今、不景気のあおりを受けて、少なくない数の会社が[r]
[sp]経営難に陥り、各銀行で回収できない資金があるのは本当です」[p]

;【立ち絵】主人公：心配そう
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様の銀行はどうですか？」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「私の銀行は定期的に調査をし、[r]
[sp]健全な会社と見込みのある投資しかしてこなかったので[r]
[sp]今の所は無事ですが、支店の数か所で取り付け騒ぎが起こってます」[p]

;【立ち絵】主人公：目閉じ不安
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですか。　取り付け騒ぎが……」[p]

[主人公目伏]
（やはり大変なのだわ。　銀行全体の信用が落ちているのね）
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「今回の件は、大蔵大臣の失言から始まりましたが[r]
[sp]人の噂というのもバカにはできない」[p]

「それがきっかけで、倒産する店や会社もありますからね」[p]

;【立ち絵】主人公：心配
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様。 交渉、頑張って下さい」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「そう心配せずとも大丈夫です。[r]
[sp]明日は新聞社の謝罪の記事を掲載させましょう[r]
[sp]同時に政府とも交渉中です」[p]

;====================================================================================
;新聞社前はない
[暗転１]
;====================================================================================

[whosay name="運転手"]
「美彬様……新聞社に着きました」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「彼女を[名字]家へ送ってから、またここで待機していなさい」[p]

[whosay name="運転手"]
「はい！」[p]
[fadeoutbgm time=3000]
#
そういって財前様は新聞社の中に入っていった。[p]

;【立ち絵】主人公：心配
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様を信じていないわけでは無いけど、[r]
[sp]この騒ぎを収めるのは大変な事だわ）[p]
#

;====================================================================================
[if exp="f.okeiko_gamen == true"]
@jump storage="zaizen/zaizen_11_4_2.ks" target=*seen1
[endif]
[イベントシーン終了]
@jump storage="test_zaizen.ks"
[s]

*window_close
[cm]
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
