;sijyou_9_3.ks
*start
;///////////////////////////////
[stopbgm]
;暗転プリロードサブルーチン
[call target=*9_3 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[layopt layer=13 visible=true]
;テストから飛んでくるときのレイヤー１消去
[iscript]
$(".1_fore").empty();
[endscript]
[四条イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[背景_四条家庭バラ茂]
[四条ベース羽織]
[四条微笑み]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=================================================================================_
*mini_bara
[er]
;【背景】[背景_四条家庭バラ茂]
[背景_四条家庭バラ茂]
;◎家族ぐるみの付き合いになってきたので四条のことを名前で呼んでいいかきく
[whosay name="四条 華織" color="olivedrab"]
[主人公通常]
[wait time=10]
「ここには、小さな種類の薔薇が植えてあるんだ。[r]
[sp]この薔薇の花言葉は、『愛を持つ』『一時の感銘』で……」
[autosave改]
[p]
#
四条様は私の隣にたって、薔薇について話しながら、[r]
出会った頃のように私の髪を撫でる。[p]
[四条目パチ1回]
[主人公目パチ1回]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（やっぱり、まだ四条様にとって、妹扱いなのでしょうか？）[p]
[四条目パチ1回]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだわ。[r]
[sp]私、四条様に言わないといけないことがありましたわ）[p]
[四条目パチ1回]
;この部分↓は、あっても無くても。
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もっと四条様、いえ、華織様と仲を深めたい）[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「四条様」[p]
[四条目パチ1回]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="四条父" color="darkolivegreen"]
「[ruby text=ふた]二[ruby text=り]人はやはり仲が良いな！ 」[p]
[whosay name="四条 華織" color="olivedrab"]
「 ？ 」[p]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[whosay name="四条母" color="#9B608B"]
「アナタ、邪魔をなさらないように」[p]
[主人公横目パチ1回]
[whosay name="四条父" color="darkolivegreen"]
「そうだな！」[p]
[主人公ポーズ指]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
;○出だしを折られて[主人公汗]
[主人公ポーズ通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
「なんだい[名前]？」
[四条目パチ1回]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「あの……四条様」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ご家族でお付き合いするにあたり[r]
[sp]下のお名前でお呼びしてよろしいでしょうか？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;9-2シナリオ調整したので　そんなことで悩んでいた　のそんなことを具体的に
[whosay name=&sf.girl_namae color="#cf5a7f"]
[四条驚き]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「私、四条様と大人のお付き合いとして……[r]
[sp]"華織お兄様"としてではなく、[r]
[sp]対等なお付き合いをしたいのです！」[p]
[主人公目パチ1回]

#
しどろもどろに言葉を紡ぐ私。[r]
[四条笑顔]
;暫定　おまかせします　テンポ的に地の文をいれたかっただけ
そんな私を見た四条様は、何故かお顔が明るく華やいだ。[p]
[whosay name="四条 華織" color="olivedrab"]
「！[sp]再会したときから気になっていたけど、[r]
[sp]そんなことで悩んでいたのかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：強気 [主人公眉強気]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
「お付き合いをするのに……[r]
[sp]華織お兄様なんて……もう呼べませんわ」
;[主人公怒り]または[主人公照れ]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[p]
[whosay name="四条 華織" color="olivedrab"]
「そっか、そういうことだったんだね」[p]
「はじめて会った君の挨拶は、なんだか[ruby text=ぎょう]仰[ruby text=ぎょう]々しくて驚いたんだ。[r]
[sp]それに僕がいう呼び方に[ruby text=こだわ]拘っていたから気になっていたよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[whosay name="四条 華織" color="olivedrab"]
「[名前]は、可愛らしい方ですね。[r]
[四条口微笑み]
[sp]そうですね。　僕も、[名前]をひとりの女性としてお付き合いを[r]
[sp]させていただきましょうか」[p]
;態度を改ましょうか　敬愛
;わかりやすいセリフ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……本当ですか？」
[wait time=10]
[主人公目パチ1回]
[p]
#
四条様は、私が想像していたことよりも、遥かに快く了承してしまったので[r]
思わず聞き返してしまった。[p]
;もっと簡単な言い方は？
[whosay name="四条 華織" color="olivedrab"]
[四条目閉じ]
「えぇ。[r]
[sp]ただ、昔の"[名前]ちゃん"が、可愛らしいと記憶しているので、[r]
[sp]少し時間がかかってしまうかもしれません」
[autosave改]
[p]
[whosay name="四条 華織" color="olivedrab"]
「ですが、少しずつ[名前]との関係を深めていきましょうか」
[四条笑顔]
[p]
;好感度がひくいとイベント発生　35以上だとスキップ
[if exp="f.para_sijyou_koukando > 35"]
@jump target=*select_2
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用レイヤーを追加
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様……）
[四条退場]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示選択肢用]
[wait time=10]
;背景変更:和紙風 桜色
[背景選択肢_sakura]
[eval exp="f.haikei_credit=''"]
[glink target=*select_1 text="私は、緊張してしまった。" size=23 width=500 x=250 y=80 graphic="select_waku_x500.png" font_color=black]
[glink target=*select_2_0 text="私は、ほっとした。" size=23 width=500 x=250 y=220 graphic="select_waku_x500.png" font_color=black]
[s]
*select_1
;//////////////私は緊張してしまった。////////////////////////////
;違和感ある人、好感度がかなりひくい用
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景をもどす】[背景_四条家庭バラ茂]
[背景_四条家庭バラ茂]
[表示準備 storage="bg/B4nFWraU42/rose_shigemi.jpg" layer=13]
[四条ベース羽織]
[四条微笑み]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
[freeimage layer=13 time=100]
[er]
#
私は緊張してしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
（どうしてからしら？[r]
[主人公伏目]
_　私が、望んでいたことなのに少し緊張してしまうのは）[p]
（そうだわ。　華織様にお近づきするにあたって、[r]
_　私も、より淑女として成長しないといけないのだわ）[p]
;9-3で決意してるので修正
#
これからの未来に身構えていると、[r]
華織様は私の手を取り、優しい眼差しを向けられた。[p]
;フォロー
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
「これからは、どの様に呼んでいただいても構いませんよ」
[四条微笑み][p]
[whosay name="四条 華織" color="olivedrab"]
「なんでしたら、"華織" でもいいですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「いえ、 "華織様" とお呼びさせてください」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り照れ]
（もしかして、また、気を遣われてしまったかしら？）[p]
@jump target=common_0
;//////////////胸が高鳴った//////////////
*select_2_0
[cm]
;【背景をもどす】[背景_四条家庭バラ茂]
[背景_四条家庭バラ茂]
[wait time=10]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
@layopt layer=message0 visible=true
[current layer="message0"]
[wait time=10]
[表示準備 storage="bg/B4nFWraU42/rose_shigemi.jpg" layer=13]
[四条ベース羽織]
[四条微笑み]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
[freeimage layer=13 time=100]
#
私は、ほっとした。[p]
*select_2
[whosay name=&sf.girl_namae color="#cf5a7f"]
（よかった。これからは……）[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="四条 華織" color="olivedrab"]
「これからはどの様に呼んでいただいても構いませんよ」
[四条微笑み][p]
[whosay name="四条 華織" color="olivedrab"]
「なんでしたら、"華織" でもいいですよ」[p]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、 "華織様" とお呼びさせてください」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目閉]
（華織様ったら……ですが、ようやく私たちは……）[p]
[主人公伏目パチ1回]
#
――私と華織様の間に新しい風が吹いていく。[p]
出会いを振り返れば、とても長い月日。[p]
;理由をかいて↑　つまりどうなった？↓
恋仲のように呼び合える。[r]
ただ、それだけのことが、私の胸の奥をほんのりと熱くさせた。[p]
;難しい

*common_0
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[名前]。[sp]
[四条口開]
久しぶりに来た、我が家を見て回ろうか」
[autosave改]
[p]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[whosay name="華織" color="olivedrab"]
「いずれ、君の家になる場所だから、迷子にならないように[r]
[sp]覚えておこう」[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、華織様」[p]
;=====================================================
@jump storage="sijyou/sijyou_9_3c.ks" target=*seen5


*seen8
[イベントシーン終了]
[stopse]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

@jump storage="test_sijyou.ks"
[s]
