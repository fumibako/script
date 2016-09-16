;¥¥¥¥¥¥¥¥イベント1お見合い決定 9月1週¥¥¥¥¥¥¥¥
;☆主人公 選択肢からお見合い相手を決定 決意する主人公 ミッドポイントのはじまり//////////////////
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「決めました。私、華織お兄さまとお会いします」[p]
;あとは黒田と同じ文章で

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

*scene2
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「……！　そうか、華織君か」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「では、早速見合いの準備を進めよう……[r]
[sp][名前]。華織君に決めて、本当に良いのだね？」
[autosave]
[p]
;【立ち絵】主人公：目閉じ思案
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
華織お兄さまに頂いたお手紙は、どうしてか素っ気ない。[r]
私はそのことが気がかりであった。[p]
――もう一度、お会いして確かめたい。[r]
あの時の憧れの華織お兄さまのことを。[p]
一度、離れた人と再会するのは、とても勇気がいる。[p]
――けれども[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私のことをよく知ってくれているのは、やっぱり華織お兄さまだと思う)[p]
;【立ち絵】主人公：決意
[主人公目を開く]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「はい。華織お兄さまに、決めます」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「わかった。[r]
[sp]この事はすぐに先方に伝えよう。[名前]からも手紙を送っておくといい」
[autosave]
[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、分かりました」[p]
#
話が終わり、お父様を見送るために立ち上がる。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「お休み、[名前]」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「おやすみなさい」[p]

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_9_1_scene4==undefined"]
	[skipstop]
[endif]
*scene4
;【立ち絵】主人公：ふぅ
[主人公ふぅ閉]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ、これでもう後戻りはできないわ）[p]

;【保留】四条華織への好感度が高い場合　配列計算？
[if exp="f.para_sijyou_koukando > 40"]
;スクリプト担：↑数値は仮です。好感度がそれほど高くなくても合いそうな文章はifの外に出してみました。参考：四条がお見合い候補になる好感度=31以上
;【期待するプレイヤーの気持ちと同調】
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓眉：下がり眉 [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（久しぶりに会う華織お兄さま。 今はどの様なお姿をされてるのでしょうか？）[p]
#
――あの頃は、お兄さまと華織お兄さまに囲まれて楽しく過ごしていて……[p]
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
//レイヤーのクラス名を変数に代入。jqueryで出来ればいらない処理
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(100%)";
[endscript]
;スクリプト担：↑cssフィルター関連の記事へのリンクもありがとうございます。勉強になります
;【プロローグ抜粋】
#文矢
『[名前]、僕はまだ磯野に用事があるから、先に行って華織をもてなしておいてくれるかい？』[p]
#幼い頃の私
『はい、わかりましたお兄さま！』[p]
;【SE】軽い足音（すぐ止まる）
[playse storage=girl_out_run_stop.ogg loop=false ]
#文矢
『こら！ 廊下は走らない！』[p]
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
//レイヤーのクラス名を変数に代入。jqueryで出来ればいらない処理
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(0%)";
[endscript]
;【恥ずかしいことも知られているので余計に緊張する主人公 片手ポーズ恥じ横目】
;【主人公口ムッ】
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
;【主人公眉困り】
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;【主人公頬染め　汗は一緒にできないしやりすぎなのでこちらかな】
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;【主人公ポーズ片手】
[主人公ポーズ片手]
;【主人公横目】
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
("少しばかり"……お転婆でした……)[p]
[endif]
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしよう。今から緊張してきたわ)[p]
[主人公ポーズ通常]
;共通?　個別でもいい
(私、きちんと華織お兄さまの前で淑女として振る舞えるかしら？)[p]
;[主人公真剣]　つなげている状態でも見れなくはないようにコメント化、なくてもいいかな
;(と、とにかく明日の為に早く寝ないと！？)[p]
;↑スクリプト担：可愛い感じで入れたいとも思うのですが、四条と他攻略対象とどちらも好感度が高い場合には、他の方にも手紙を送る方が自然かとも思いますので、この部分と"*end_rute"へのjumpはコメント化のままにしてみます;@jump target="*end_rute"


;【分岐】他攻略対象の好感度が高い場合
[if exp="f.para_kuroda_koukando > 15 || f.para_katuraginomiya_koukando > 15 || f.para_hujieda_koukando > 15 || f.para_zaizen_koukando > 15"]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだ、他の方にも手紙を送らなければ）[p]

;【立ち絵】主人公：目閉じ困り眉
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せっかく長い間楽しい時間を過ごさせて頂いたのに心苦しいけれど[r]
[sp]こればっかりは仕方ないわね）[p]
[fadeoutbgm time=3000]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せめて、今まで以上に心を込めて別れの手紙を書こう。[r]
[sp]もしどこかでお会いすることがあっても笑顔でお話できるように）[p]
[endif]

*end_rute
[stopbgm]
;[endif]
;個別ルート前夜終了

[eval exp="f.sijyou_au=1"]
;@jump storage="event.ks" target=*event_owari


[イベントシーン終了]
@jump storage="test_sijyou.ks"
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
