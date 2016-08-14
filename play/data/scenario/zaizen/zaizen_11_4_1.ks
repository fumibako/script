;=============================================
;イベント6回目【散策イベント２】1１月４週
;町で噂を聞く
;=============================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
;[eval exp="f.haikei_credit='----　by　----　------------ '"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]

#新聞社社員
「号外！　号外！[r]
[sp] 海軍高官贈賄事件に続き[r]
[sp] 大蔵大臣の金融不安を露呈した発言！[r]
[sp] さあ新聞を買った買った！」[p]

#
人々は足を止めて新聞を買い、[r]
不安そうな顔つきでざわざわと[r]
話し合っている[p]

#町人女性
「銀行なんて信用できないわ！」[p]

#町人男性
「ああ、[r]
今すぐ銀行からお金を引き出して[r]
手元に保管しよう」[p]

#
すぐ近くの男性が新聞を丸めて投げた[r]
新聞は私の足元に転がってきた[p]

;【立ち絵】主人公：不安
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「一体、何の騒ぎかしら」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_open.ogg loop=false ]
;[新聞]
[chara_mod name="bg" storage="bg/test_bg_sinbun.jpg" time=50]
[テキスト全画面白文字無背景]

[sp]衆議院予算委員会での大蔵大臣の[r]
「志井銀行がとうとう倒産した」[r]
という発言が波紋を呼び今金融不安が表面化している。[p]

[sp]これまでの好景気から一転して景気は不況となり[r]
不良債権を抱えた会社も多数存在し[r]
経営不振の銀行も多く存在する。[r]
[r]
[sp]また首都を中心に取り付け騒ぎに及ぶ所もあり……[p]
[resetfont]
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
;[eval exp="f.haikei_credit='----　by　----　------------ '"]
;メッセージをもどします
[イベントシーン構築]
#
[cm]
[主人公ポーズ通常]
[主人公通常]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公：困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
「取り付け騒ぎですって？[r]
[sp] こんな事って……」[r]
（財前様の銀行は[r]
[sp] どうなっているのかしら？」[p]

;【立ち絵】主人公：真剣
[主人公通常]
（私に今できることは……）[p]

#
私はつかつかと新聞社員に近寄った[p]

#新聞社社員
「おや、お嬢さんも新聞を買うかい？」[p]

;【立ち絵】主人公：困り
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、今すぐこんな[r]
[sp] 人の不安を煽るような新聞を売るのを[r]
[sp] 止めてください！」[p]

#新聞社社員
「……営業妨害するつもりか？」[p]

;【立ち絵】主人公：怒り
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「営業妨害ですって？[r]
[sp] こんな記事こそ銀行にとっては[r]
[sp] 風評被害です！」[p]

;【立ち絵】財前：驚
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん！」[p]

#
見知った声に驚いて[r]
振り返ると財前様がいた[p]

;【立ち絵】主人公：驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様！[r]
[sp] どうしてここに？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「車で移動していたのですが[r]
[sp] 貴方の姿が見えましたので[r]
[sp] 立ち寄っただけです」[p]

#
そういって財前様は可笑しそうに笑う[r]
私はそんな風に笑う財前様を初めて見た[p]

;【立ち絵】主人公：驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？」[p]

;【立ち絵】財前：笑み
[whosay name="財前美彬" color="#7a65b2"]
「……淑女なようで[r]
[sp] 芯がしっかりしていると思っていましたが[r]
[sp] 貴方は意外にはねっ返りな面も[r]
[sp] 持ち合わせていたのですね」[p]

;【立ち絵】主人公：驚頬染め、両手を頬に
[主人公頬染め]
[主人公ポーズ両手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ！」
;【立ち絵】主人公：目伏せ頬染　、両手を頬に
[主人公困り]
（見られていたのね……恥ずかしい[r]
[sp] 穴があったら入りたいわ）[p]

;もどすタイミングがないのでひとまず。
[主人公ポーズ通常]
[主人公通常]

#
そして財前様はと新聞社の方の間に入った[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「そこの君、[r]
[sp] 新聞を売るのを止めなさい！[r]
[sp] 新聞社に交渉します[r]
[sp] これ以上新聞を売るなら法的に訴えるので」[p]

#
いぶかしげに見る新聞社員に対して[r]
財前様は冷ややかな笑みを浮かべる[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「私は大正国際銀行頭取、[r]
[sp] 財前美彬だ、記事の差し止めの事は[r]
[sp] 亀蔵財閥総帥とも話し合い済みです」[p]

#
すっと新聞社員が青ざめて立ち去った[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「まったく記事が売れると思って[r]
[sp] 人の不安を煽る記事を書くなんて最低です」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「今から新聞社に行きますが貴方は？」[p]

;【立ち絵】主人公：真剣
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「厚かましいかもしれませんが、[r]
[sp] 一緒にお車に乗せて頂いいていいですか？[r]
[sp] 事情が知りたいのです」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ええ、どうぞ[r]
[sp] 機密はありますがそれ以外の事情なら[r]
[sp] お話ししましょう」[p]

;背景車の中
#
私は止まってあった財前様の車に乗り[r]
運転手さんが車を走らせる[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「さて、何から知りたいですか？」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「不況となって各銀行が[r]
[sp] 経営難になっていることは[r]
[sp] 本当ですか？」[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
「ええ、今不景気のあおりを受けて[r]
[sp] 少なくない数の会社が経営難に陥り、[r]
[sp] 各銀行で回収できない[r]
[sp] 資金があるのは本当です」[p]

;【立ち絵】主人公：心配そう
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様の銀行はどうですか？」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「私の銀行は定期的に調査をし、[r]
[sp] 健全な会社と確実な見込みのある投資しか[r]
[sp] してこなかったので今の所は[r]
[sp] 無事ですが支店の数か所で取り付け騒ぎが起こってます」[p]

;【立ち絵】主人公：目閉じ不安
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですか取り付け騒ぎが……」[r]
（やはり大変なのだわ[r]
[sp] そして銀行全体の信用が落ちているのね）[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「今回の件は大蔵大臣の失言から始まりましたが[r]
[sp] 人の噂というのもバカにはできない、[r]
[sp] それがきっかけで[r]
[sp] 倒産する店や会社もありますからね」[p]

;【立ち絵】主人公：心配
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様、交渉頑張って下さい」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「そう心配せずとも大丈夫です。[r]
[sp] 明日は新聞社の謝罪の記事を書かせましょう[r]
[sp] 同時に政府とも交渉中です」[p]

#運転手
「美彬様……新聞社に着きました」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「彼女を[名字]家へ送ってから[r]
[sp] またここで待機していなさい」[p]

#運転手
「はい！」[p]

#
そういって財前様は新聞社の中に入っていった[p]

;【立ち絵】主人公：心配
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様を信じていないわけでは無いけど[r]
この騒ぎを収めるのは大変な事だわ）[p]


;@jump storage="event.ks" target=*event_owari

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
