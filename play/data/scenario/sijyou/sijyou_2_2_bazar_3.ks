*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン
[call target=*2_2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;====================================================
[cm]
[背景_チャリティ会場出店]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
@layopt layer=fix visible=true
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様は何がお好みでしょうか？)[p]
[whosay name=女性]
「あの失礼ですが、もしかして、[名字]様でしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？」[p]
[whosay name=四条親戚]
「突然、話し掛けて申し訳ございません。[r]
[sp]私は四条家の親戚にあたる四条幸代という[ruby text=もの]者です」[p]
;------------------------------------------------
;華衣、エンカンの飴屋のイベントを見ていない場合sijyou_sansaku4.ks
[if exp="f.event_machi_sijyou[4] == 1"]
;華衣 エンカンの飴屋のイベントをみているとき
[whosay name=四条幸代]
「先日は、エンとカンを……子供達を見てくださってありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ええと……)[p]
#
私は、四条親戚の幸代と名乗る女性のお顔から記憶を呼び寄せる。[p]
ほんの少しの間を置いて、[r]
冬の日、華衣様が子供達の姉を探しに行った記憶が蘇ってきた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そうだわ。 この方は、エンさんと、カンさんのお姉様だわ)[p]
;------------------------------------------------
[else]
[whosay name=四条幸代]
「以前、園遊会でお見掛けしました時、[r]
[sp]子供達が[名字]様に失礼をして……」[p]
;背景 四条家
#
園遊会での出来事は、私の中で記憶に新しい。[p]
[暗転]
[背景セピア化]
[背景_四条家庭椅子2]
特にあの、子供達が走り込んできて、[r]
その際に華織様に支えてもらった時――[p]
[暗転]
[背景セピア化_解除]
[背景_チャリティ会場出店]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(あの時は、華織は私に対してあまり意識されてなかった気がするわ)[p]
[endif]
;------------------------------------------------

[whosay name=四条幸代]
「今日は華織様と御一緒に来られたのでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。 何かご用件がございましたか？」[p]
[whosay name=四条幸代]
「いえ。[華衣]様が、お元気でいらっしゃるのか[r]
[sp]気になっていたので……」[p]
#
四条幸代様は、どうしてか潤んだ目をした後、俯かれた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしたのかしら？)[p]
#
私が訝しでいると、[r]
幸代様は先ほどと打って変わって満点の笑顔でハキハキと話された。[p]
[whosay name=四条幸代]
「失礼いたしました。[r]
[sp]実は、昔から[華衣]様には、私の弟達の相手をして下さっていて、[r]
[sp]きちんとお礼を伝えれたいと考えていたのです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたのね」[p]
[whosay name=四条幸代]
「ですが、[華衣]様は、いらっしゃられないようですので、[r]
[sp]また今度にいたします……」[p]
#
幸代様の快活な笑みが、花が綻ぶような慈愛の笑みに変わる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
(もしかして、幸代様は[華衣]様のことが気になっているのかしら？[r]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
[sp]……考えすぎかしら？)[p]
#
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[主人公ポーズ通常]
私は、幸代様の表情の変化が気になりつつも、平静を装って返事をした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「もし宜しければ華織様にお伝えしましょうか？」[p]
[whosay name=四条幸代]
「いえ、[r]
[sp]たとえ上手く伝えられなくても、私から直接、[r]
[sp]お伝えしたいので……」[p]
「[名字]様、お気遣いありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「？　いえ……」[p]
#
深々とお辞儀をする幸代様。[p]
意志の強さを感じられる仕草に[r]
私はこれ以上、彼女の心情を尋ねれそうになかった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（でも、[r]
[sp]もし、幸代様が華衣様を気に掛けて下さっていらっしゃるのでしたら……)[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;敢えて言葉はしなかったが、
幸せが訪れる予感に私は胸をほんのりと温かくした。[p]

[whosay name=四条幸代]
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「[名字]様、どういったものをお探しでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
(！  そうでしたわ)[p]
[主人公ポーズ通常]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「華織様が好まれるような贈り物を探しているのです」[p]
[whosay name=四条幸代]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「こちらは、如何でしょうか？ 」[p]
#
勧められた陳列棚には、押し花が飾られた栞や便箋が[r]
数種類、並んでいた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（華織様はお花を好まれますし、[r]
[sp]もし使って頂けたら…と考えると嬉しいですね)[p]
#
私は
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢 セーブできるように
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[bg name="bg1" storage="../fgimage/bg/plane_sakura.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=siori_prezent]栞を選んだ。[endlink][r]
[r][r][r]
[link target=binsen_prezent]便箋を選んだ。[endlink][r]
[s]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*siori_prezent
[eval exp="f.present_name = '栞'"]
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_チャリティ会場出店]
栞を選んだ。[p]
@jump target=cmon_prezent

*binsen_prezent
[eval exp="f.present_name = '便箋'"]
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_チャリティ会場出店]
便箋を選んだ。[p]
@jump target=cmon_prezent
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*cmon_prezent
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
「[ruby text=い]良いですね。 こちらを頂きます」[p]
[whosay name=四条親戚]
「ありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
(華織様は何を選ばれたのでしょうか？)[p]
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]


[else]
@jump storage="test_sijyou.ks"
[endif]
[s]

;------------------------------------------------
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
[メッセージウィンドウ上ボタン表示]
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
