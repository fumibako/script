﻿﻿;周回プレイ時のスクリプトは＠名無しさん１様作です。ありがとうございます。
*naming

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
;===============================================ここから=============================================================
*skip_plg0
;start
;tweet動作2週目　ゲームを終了しないではじめからを選択した時tweetがスキップされるのを抑止
[eval exp="tf.tweet_end=false"]
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
;======================================条件に合わなければ問答無用でプロローグへ====================================
;◆条件に合わなければ問答無用でプロローグへ naming.ksでskip_plg0に飛んでも大丈夫な構造
;bg背景を黒に
[bg storage="toumei.gif" time=1]
[wait time=10]

@jump target=*name
;============================================================================================================

[s]

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]

*skip_sentaku
;背景変更:和紙風 桜色
;title周りをbgタグに統一します。ここはchara_modに合わせていただいたのに、すみません
[bg storage="../fgimage/bg/plane_sakura.jpg" time=0 wait=true]
[wait time=10]
;[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
;和紙風 水色
;[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=100]
;和紙風 セピア色
;[chara_mod name="bg" storage="bg/plane_sepia.jpg" time=100]
;和紙風 若草色
;[chara_mod name="bg" storage="bg/plane_wakakusa.jpg" time=100]
;[eval exp="f.haikei_credit=''"]
;bg背景を黒に
;[bg storage="toumei.gif" time=1]
;[wait time=10]
;=====================================================
;選択肢用レイヤーを追加
[position layer=message1 height=550 top=50 left=250 opacity=0]
[wait time=50]
@layopt layer=message1 visible=true
[current layer="message1"]
[if exp="sf.girl_myouji == undefined || sf.girl_namae == undefined "]
[sp]        　　　[sp] 
[endif]
お好みの開始位置をご選択ください。[r]
;=====================================================
;飛び先で利用
[clearstack stack=if]
[eval exp="f.skip_sentaku=1"]
[if exp="sf.girl_myouji == undefined || sf.girl_namae == undefined "]
[font size=15] 名前の入力が必要です。※入力無しの場合は、デフォルトネームとなります。
;[l]
[resetfont]
;名前が無い場合、先に入力する
[eval exp="sf.girl_myouji='鷹司'"]
[eval exp="sf.girl_namae='文奈'"]
;名前が無い場合、先に入力する
[endif]
[r][r][r]
[font size=31]
[link target=*name]名前入力から始める[endlink][r]
[r][r][r]
[link target=*plo]プロローグから始める[endlink][r]
[r][r][r]
[link target=*op]オープニングから始める[endlink][r]
[r][r][r]
[link target=*okiko]お稽古から始める[endlink][r]
[resetfont]
[s]

*name
;=============================================
;主人公の名前決め
;=============================================
;入力部分にティラノスクリプト交流掲示板http://tyrano.bbs.fc2bbs.net/「質問用スレッド」より、>>324keito@様のスクリプトをお借りしました。
;keito様、ありがとうございます。
;=============================================

[cm]

;背景変更:水色
[bg storage="../fgimage/bg/plane_mizuiro.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="toumei.gif" time=100]

;最初の選択肢メッセージレイヤを非表示
@layopt layer=message1 visible=false
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
;@jump target=skip_plg0
;◆スキップ時の条件分岐・opで発動しないように念のため入力
[eval exp="f.skip_sentaku=0"]
@jump storage="prologue.ks"
[s]

*ck_NG
[cm]
お名前を、もう一度お願いします
[主人公ほほえみL]
[l][cm]

@jump target=*show_input_yourname
[s]

*plo
[cm]
;全画面
[position left=200 width=960 height=530 top=110 page=fore margint="50"]
;[position width=960 height=550 top=60 left=250 page=fore opacity=0]
@jump target="prologue0"
[s]

*op
[cm]
;------オープニングの最初にジャンプする
[イベントシーン構築]
[eval exp="f.skip_sentaku=1"]
;いまのところopには使用フラグ。使用後はお稽古側で０に
@jump storage="opening2.ks"
[s]

*okiko
[cm]
;------お稽古画面からはじめる
;[eval exp="f.skip_sentaku=1"]
;opには使用フラグ。お稽古にて音楽を続ける。使用後はお稽古側で０に
[stopbgm]
お稽古画面からはじめます[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[wait time=10]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;------シナリオの最初にジャンプする
@jump storage="okeiko.ks"
[s]

;============================================================================================================
;プロローグ準備　元ファイルを触るのは怖いのでこちらに追加
;============================================================================================================
*prologue0
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[if exp="sf.BGM=='OFF'"]
[iscript]
/*BGMを再生しない*/
TG.stat.play_bgm = false;
[endscript]
;ロード時点で再生していたBGMを停止します。
[stopbgm ]
[else]
[iscript]
/*BGMを再生する*/
TG.stat.play_bgm = true;
[endscript]
[playbgm storage=&f.bgm_storage]
[endif]

[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;ロード時点で再生していたSEを停止します。
[stopse ]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[endif]

[if exp="sf.KSKIP=='ON'"]
	[skipstop]
	[skipstart]
[endif]
*prologue
[setreplay name="prologue"]
[eval exp="sf.FButton='OFF'"]
[stopbgm]

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]

;============================================================================================================
;プロローグ　元ファイルを触るのは怖いのでこちらに追加
;[eval exp="f.skip_sentaku=1"]
;プロローグで386行目ほどで使用。opには使用フラグ。プロローグでのフラグ使用後は０にしてあります。
;============================================================================================================
[cm]
[stopbgm]
;背景変更:プロローグイントロ全画面
[bg storage="../fgimage/bg/bg_prologue.jpg" time=100]
;[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=100]
[wait time=10]
[font color=white size=31]
[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue1==undefined"]
	[skipstop]
[endif]
*prologue1
[r][r][r][r][endnowait]
[delay speed=80]
;[emb exp="sf.KSKIP"]
淑女たるもの温良貞淑たり[r]
詠雪之才を持て
[stopbgm]
[l][r]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[resetfont]
[font color=white size=31]
[r]
日本古来から続く伝統により[r]
高貴な生まれの男女は一定の[r]
年齢を迎えると、手紙の交流[r]
によって心を通わせるもので[r]
ある。
[autosave]
[p][cm]
[resetfont][delay speed=10]

;背景変更:主人公邸_庭
[bg storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

;skipを選択していない場合　区切りのよいところでbg変更:[bg]タグ使用のためコメントアウトさせていただきます(◆jsYiJcqRkk
;[if exp="f.skip_sentaku != 1"]
;bg背景を黒に
;[bg storage="toumei.gif" time=1]
;[wait time=10]
;[endif]
;============================================================================================================
;◆追加分
[if exp="f.skip_sentaku == 1"]
[イベントシーン構築枠茶色]
;反応テスト[p]
;メッセージレイヤを会話窓用に設定変更
[position layer=message1 left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" size=26 x=270 y=407 bold="bold"]
[chara_config ptext="chara_name_area"]
[eval exp="f.skip_sentaku=0"]
;opには使用していない。お稽古に響かないようにプロローグでのフラグ使用後は０に
@jump target=*prologue_A
[endif]
;============================================================================================================

;メッセージエリアの表示
[eval exp="f.message_storage='message_bg/frame_brown.png'"]
[chara_mod name="message_bg" storage=&f.message_storage]

;セーブ等ボタン配置
;[call target=*start storage="macro_etc.ks"]
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue2==undefined"]
	[skipstop]
[endif]

*prologue2
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" size=26 x=270 y=407 bold="bold"]
[chara_config ptext="chara_name_area"]

;============================================================================================================
;◆追加文
*prologue_A
[clearstack stack=if]
;============================================================================================================

[cm]
;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false]
　××０９年　１０月　２１日　[名字]家　邸内
[autosave]
[p]
;キャラ定義
[chara_new name="fumiya" storage="toumei.gif" jname="<span style='color:#538a8a;'>文矢</span>"]
[chara_show name="fumiya"]
[whosay name=文矢 color="#538a8a"]
「……よし」
[layopt layer=13 visible=true]
;【SE】ペンのキャップを閉める
[playse storage=pen_katya.ogg loop=false]
[p]
#
ペンが紙を走る音が聞こえるほど静まり返った広い邸内の一室に、[r]
この部屋の持ち主である文矢の緊張した声が響いた。
[p]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
文矢は今し方書き終えた手紙を手に取り真剣な表
情で文面の確認を始める。[p]
;【SE】軽い足音（フェードイン）
[playse storage=girl_in_run.ogg loop=false ]

しばらくすると[r]
障子の向こうが騒がしくなり始め、大きな足音が近づいてきた。
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue3==undefined"]
	[skipstop]
[endif]
*prologue3
;【SE】襖を開ける（勢いよく）
[playse storage=fusuma-open_fast.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[resetfont]
「――文矢お兄様！」[p]
[whosay name=文矢 color="#538a8a"]
「[名前]……？　どうしたの？　廊下を走ってはいけないよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あっ！　ごめんなさいお兄様……でも、でもね！[r]
[sp]これ見てください！！」
;【SE】紙に触れる（早・軽）
[playse storage=paper_open_fast.ogg loop=false ]
[p]
#
妹の[名前]は興奮さめやらぬといった様子で、手に
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
していた一枚の紙を掲げて満面の笑みを浮かべた。
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue4==undefined"]
	[skipstop]
[endif]
*prologue4
[whosay name=&sf.girl_namae color="#cf5a7f"]
「さっきお母様からお手紙が届いたんです。[r]
[sp]それでね、来週帰って来られるって！」
[autosave]
[p]

[whosay name=文矢 color="#538a8a"]
「そっか、帰って来られるんだ……」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue5==undefined"]
	[skipstop]
[endif]
*prologue5
#
二人の両親であるこの館の主人夫妻は、仕事のため[r]
海外にいる事が多く、帰ってくるのは極稀な事であった。
[autosave]
[p]

文矢はホッと安堵の表情を浮かべると、落ち着きなく部屋を[r]
歩き回っていた妹を呼び「良かったね」と優しく頭を撫でる。[p]

そしてしばらくの間、[r]
はしゃぐ妹の言葉を聞いていたが、ふと先ほどまでの用事を[r]
思い出し机の上に置いた紙を手に取り丁寧に折りたたんだ。
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue6==undefined"]
	[skipstop]
[endif]
*prologue6
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あらお兄様、それは？」
[autosave]
[p]
[whosay name=文矢 color="#538a8a"]
「ふふ、これは未来の大切な人への手紙だよ」
;【SE】紙を折る（丁寧）
[playse storage=paper_oru.ogg loop=false ]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「未来の？？」[p]
#
妹は言葉の意味がわからなかったのか、不思議そうに首を傾げる。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue7==undefined"]
	[skipstop]
[endif]
*prologue7
[whosay name=文矢 color="#538a8a"]
「[名前]にもいつか届くかもしれないよ？」
[autosave]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手紙が……ですか？」[p]
[whosay name=文矢 color="#538a8a"]
「そう、将来[名前]の事を一番大切にしてくれて[r]
[sp][名前]も一番大切だと思える人からの手紙」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「一番大切に……」[p]
#
そう呟いた妹は、一瞬考え込むように顔を伏せ視
線をさ迷わせる。[r]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

その視線が母親の手紙の前で止まった。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue8==undefined"]
	[skipstop]
[endif]
*prologue8
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも……[名前]はお手紙より、会いに来てくれる方が嬉しいな」
[autosave]
[p]
[whosay name=文矢 color="#538a8a"]
「[名前]……」[p]
#
悲しげに視線を伏せたまま動かない妹を慰めるため、
もう一度頭を撫でる。[r]
[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue9==undefined"]
	[skipstop]
[endif]
*prologue9
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false]
[fadeoutbgm time=2000]
瞬間、妹ははっと顔を上げ何か言葉を発しようと口を開いたが
[p]
妹の時とは違って落ち着いた足音が響き、部屋の前で止まった。
[autosave]
[p]

[stopbgm]
;【BGM】みやび（磯野テーマ）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="isono_miyabi.ogg" loop=true]
[eval exp="f.bgm_storage='isono_miyabi.ogg'"]

[whosay name=磯野 color="dimgray"]
「文矢様、[名前]お嬢様、お話中の所失礼します。
[r]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[sp]四条華織様がいらっしゃいました」
[autosave]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織お兄様が！？」[p]
#
磯野の言葉に、妹は先ほどまでの暗さを忘れぱぁっと笑顔を浮かべる。[p]

[whosay name=文矢 color="#538a8a"]
（よかった……）[p]
#
妹の笑顔が戻った事に安堵しながら、磯野へと視線を向ける。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue10==undefined"]
	[skipstop]
[endif]
*prologue10
[whosay name=文矢 color="#538a8a"]
「ああ、わかった。[名前]を先に行かせるから、[r]
[sp]磯野は少しそこで待っていてくれ」
[autosave]
[p]
[whosay name=磯野 color="dimgray"]
「かしこまりました」[p]

[stopbgm ]
[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue11==undefined"]
	[skipstop]
[endif]
*prologue11
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]

[whosay name=文矢 color="#538a8a"]
「[名前]、僕はまだ磯野に用事があるから、先に行って華織を[r]
[sp]もてなしておいてくれるかい？」
[autosave]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、わかりましたお兄様！」[p]
#
既にそわそわと腰を浮かせていた妹は[r]
すぐに立ち上がると勢いよく駆け出した。
;【SE】軽い足音（すぐ止まる）
[playse storage=girl_out_run_stop.ogg loop=false ]
[autosave]
[p]

[whosay name=文矢 color="#538a8a"]
「こら！　廊下は走らない！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はーい」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue12==undefined"]
	[skipstop]
[endif]
*prologue12
;【SE】軽い足音（小走りフェードアウト）
[playse storage=girl_out_kobasiri.ogg loop=false ]
#
元気のいい返事と共に小走りになった足音が遠ざかっていく。[r]
[名前]の姿が見えなくなったのを確認してから文矢は大きなため息を吐いた。
[autosave]
[p]

[whosay name=文矢 color="#538a8a"]
「はぁ、まったく……」[p]

#
[名前]は良家の子女にしては少しお転婆だ。[r]
元気なのは良い事だが将来を考えると少し心配になる。
[autosave]
[p]

[whosay name=磯野 color="dimgray"]
「お嬢様は本当に元気でいらっしゃいますね」[p]
[whosay name=文矢 color="#538a8a"]
「磯野……もう少し叱ってくれてもいいんだよ？」[p]
#
文矢の気持ちを察したのか、
[名前]の教育係兼この家の家令である磯野は[r]
「申し訳ありません」と目尻の皺を深くして微笑んだ。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue13==undefined"]
	[skipstop]
[endif]
*prologue13
[whosay name=磯野 color="dimgray"]
「ところで、ご用とは何でございましょう？」[p]
[whosay name=文矢 color="#538a8a"]
「ああそうだ、この手紙を出しておいてくれ」
[p]


[whosay name=磯野 color="dimgray"]
「なるほど、かしこまりました」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue14==undefined"]
	[skipstop]
[endif]
*prologue14
#
先ほど封をしたばかりの手紙を手渡す。[r]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
磯野はすぐに宛先を確認すると、納得した様子で頷いた。
[autosave]
[p]

[whosay name=磯野 color="dimgray"]
「これで最後の手紙になりますね、良い縁談になるといいのですが」[p]
[whosay name=文矢 color="#538a8a"]
「大丈夫、手紙通りならとても素敵な女性だよ」[p]
[whosay name=磯野 color="dimgray"]
「ふふ、奥様にお会いできるのを楽しみにしていますよ」[p]
[whosay name=文矢 color="#538a8a"]
「うん……」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue15==undefined"]
	[skipstop]
[endif]
*prologue15
#
そう、この手紙は
僕の婚約者になるかもしれない女性に宛てた手紙だ。
[autosave]
[p]

昔からの伝統で、僕のような華族の人間が結婚相手を探す場合[r]
まず手紙によって交流する決まりがある。[p]
そして今回の手紙で承認されれば、晴れて対面での見合いになる。[p]

華織もきっと、その事を聞きつけ激励しに来てくれたのだろう。[p]

[whosay name=磯野 color="dimgray"]
「しかし時が経つのは早いですね、文矢様はご結婚、[r]
[sp]お嬢様も１２になられますか……」[p]
[whosay name=文矢 color="#538a8a"]
「そう…だね……」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_prologue_prologue16==undefined"]
	[skipstop]
[endif]
*prologue16
#
[名前]にもいつか縁談の話がくるのだろうか？[r]
あまり想像がつかない。
[autosave]
[p]

（――お手紙より、会いに来てくれる方が嬉しいな）[p]

ふと、先ほどの妹の言葉を思い出す。[p]

[whosay name=文矢 color="#538a8a"]
（もし[名前]に手紙が届いたら……）[p]
#
;【BGM】フェードアウト
[fadeoutbgm time=5000]
それがきっと幸福な物になりますように、そう願わずにはいられなかった――[p]
[cm]
;[枠消]

;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
;機能ボタン消去
[clearfix]
[wait time=10]
[eval exp="sf.FButton='OFF'"]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false


;プロローグ　終

;背景非表示
;[chara_mod name="bg" storage="toumei.gif" time=100]
[bg storage="toumei.gif" time=100]
[wait time=10]


[stopbgm]
;オープニングから始めると被らないように0に
[eval exp="f.skip_sentaku=0"]
;------オープニングの最初にジャンプする
@jump storage="opening1.ks"
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
