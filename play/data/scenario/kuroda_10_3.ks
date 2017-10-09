;=============================================
;◆黒田イベント【初デート】黒田ルートかつ10月3週になった時点で1度だけ発生
;=============================================
*replay_kuroda_10_3
;[call target=*start storage="tyrano.ks"]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=10]
[call target=*start storage="macro_tati_kuroda.ks"]
[preload storage="data/fgimage/bg/bg_shinrinkouen_gate_yuu.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_kouyou_ussou.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_kouyou_kaidan.jpg" wait=true]
;==========================================================================================
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
[stopbgm]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸_庭
[背景_庭]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;【立ち絵】主人公：通常頬染め
[whosay name="ばあや" color="#916565"]
「お嬢様、お召し物はもうよろしいのですか」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[主人公横目パチ1回]
[wait time=10]

;【立ち絵】主人公：ふくれ
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ばあや、心配しないでいいのよ[r]
[sp]前もってすごく悩んで決めていたの」[p]

[主人公通常]
[wait time=10]
[whosay name="ばあや" color="#916565"]
「早めにご準備されるのは、良いことでございますね」[p]

;【立ち絵】主人公：照れ両手頬に
[主人公ポーズ両手]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そう言われると、恥ずかしいわ」[p]

;【立ち絵】主人公：伏目頬染め片手上げ
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
「……でもまだ少し不安なの。髪飾りは大丈夫かしら？」[p]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="ばあや" color="#916565"]
「大丈夫でございますよ、お嬢様」[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、ばあや」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene2==undefined"]
	[skipstop]
[endif]
*scene2

[whosay name="磯野" color="dimgray"]
「お嬢様、ご準備はよろしいですか？」
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。今行くわ、磯野」[p]

;【背景】フェードアウト→黒背景or黒っぽい和紙背景orあれば屋敷玄関背景
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_genkan.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopse]
[主人公通常]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「森林公園では少し離れて供の者が控えておりますから[r]
[sp]何かあればお言いつけくださいませ」[p]

;【立ち絵】主人公：苦笑
[主人公困りほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（二人きり、というわけにはいかないのね……）[p]

[whosay name="磯野" color="dimgray"]
「では、お気をつけて、行ってらっしゃいませ」[p]

;【立ち絵】主人公：通常
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。行って参ります」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene3==undefined"]
	[skipstop]
[endif]
*scene3

;【背景】青空（秋晴れ）又はフェードアウトのまま
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_bluesky.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Mike Linksvayer　https://www.flickr.com/photos/mlinksva/15476575104/'"]

[主人公通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
#
人力車に乗って、ふと見上げると[r]
見事な秋晴れが目に映る。
[autosave]
[p]

;【立ち絵】主人公：目閉じほほえみ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=100]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=100]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（心が吸いこまれそうな、澄んだ空……。[r]
[sp]高い空へ舞い上がっていくような[r]
[sp]心もとないような……）[p]

（不思議な心地）[p]

;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
ひときわ美しい木々が近づいてきた。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene4==undefined"]
	[skipstop]
[endif]
*scene4

;【背景】公園の門フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_shinrinkouen_gate.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit=''"]

;【立ち絵】黒田：遠_考え中
[chara_delete name="kuroda_base"]
[wait time=10]
[chara_new name="kuroda_base" storage="kuroda/base_haori_y580_kangae.png"]
[wait time=10]
[chara_show left=310 top=100 layer=8 name="kuroda_base"]
[wait time=10]
――森林公園だ。[r]
紅葉の枝がふりかかる入口の門に、紫の着物姿が見える。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（紅葉が似合って、絵になるお姿ですこと――）[p]
;【立ち絵】黒田：通常↓wait数値は実装時に調節予定。目立たない又はwaitがもたつく場合は省略
[chara_mod name="kuroda_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_delete name="kuroda_base"]
[wait time=10]
[freeimage layer = 8]
;黒田画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="kuroda_base" storage="toumei.gif"]
[chara_show left=250 top=60 layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif"]
[chara_show left=250 top=60 layer=9 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif"]
[chara_show left=250 top=60 layer=10 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif"]
[chara_show left=250 top=60 layer=11 name="kuroda_mayu" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif"]
[chara_show left=250 top=60 layer=12 name="kuroda_emo" time=0]
[wait time=10]
[黒田ほほえみ]
[wait time=10]
[chara_new name="kuroda_base" storage="kuroda/base_haori.png"]
[chara_show left=250 top=60 layer=8 name="kuroda_base"]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さん、こんにちは」[p]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう、黒田様」[p]
;【立ち絵】黒田：通常
[黒田通常]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「足元がすこし湿っていますから、お気をつけて……」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
#
足を下ろすと、濡れた土の香りが漂う。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「昨日は雨でしたものね」[p]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ええ。今日まで降り続いたらどうしよう、と思って[r]
[sp]晴れるように念じていたのですよ」[p]
[黒田閉目パチ1回]
[wait time=10]
;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「晴れて本当にようございました……」[p]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（ひと月も待ったのですもの。[r]
[sp]雨で延びたら、どんなに悲しいでしょう）[p]

;【立ち絵】主人公：横目
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
#
黒田様の隣へ立つと、[ruby text="たもと"]袂から伸びる腕が目に入る。[p]
[黒田目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（繊細なお顔に似合わず、引きしまった腕だわ）[p]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
#
そう思ったとたんに近さを感じて緊張してしまい、顔を上げられなくなった。[p]

;【背景】紅葉
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kouyou_ussou.jpg" time=500]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene5==undefined"]
	[skipstop]
[endif]
*scene5

[主人公閉伏目パチ1回]
[wait time=10]
;【立ち絵】黒田：通常
[黒田目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「この公園は、調査に出るときによく通るのです」
[autosave]
[p]

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
#
と話す黒田様に、ついて歩くのがやっとだ。[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お話したいのに、――言葉が出ない）[p]
;【立ち絵】主人公：通常
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
#
あせりを感じたころに、黒田様も下を向きがちなことに気づいた。[p]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（紅葉を見に来たのに、私たち下ばかり見ているわ）
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
;【立ち絵】黒田：真剣
[黒田真剣]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene7==undefined"]
	[skipstop]
[endif]
*scene7

#
そのとき、黒田様の瞳が一点を見つめて鋭さを増した。[p]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「すこしお待ちください」[p]
;【立ち絵】黒田：フェードアウト
[黒田退場]
[wait time=10]

;【立ち絵】主人公：驚
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（えっ……）[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene6==undefined"]
	[skipstop]
[endif]
*scene6

;【立ち絵】主人公：通常
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
私があっけにとられるうちに、黒田様は枝をかきわけて林の奥へ進まれ[r]
木の根元の落ち葉をそっと除いておられる。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene8==undefined"]
	[skipstop]
[endif]
*scene8

[whosay name="黒田 将貴" color="#7a65b2"]
「イグチです」[p]

[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「イグチ？　何でしょう」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="黒田 将貴" color="#7a65b2"]
「きのこの一種です。お汁に入れるといい出汁がでますよ」[p]

#
ときのこを手に、笑顔で戻っていらっしゃる。[p]

;【立ち絵】黒田：フェードイン、笑顔
[黒田ほほえみ]
[wait time=10]
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=300]
[wait time=10]
[黒田笑顔]
[wait time=10]

[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あら、きのこを採っても大丈夫なんですの？」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「はい。うちの研究室でこの公園のお手伝いをしていまして[r]
[sp]そのかわりに採集しても良いと言われているのです」[p]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
「このイグチは傘の内側が面白いのですよ」
[autosave]
[p]

[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ。シイタケみたいなひだは無くて[r]
[sp]細やかな穴がたくさん開いているのですね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene9==undefined"]
	[skipstop]
[endif]
*scene9

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
「こんなきのこもあるのですねぇ」[p]

;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ええ、でもきのこ採りは気をつけなければいけません。[r]
[sp]美味しいきのこに似た、毒きのこもありますから」[p]
;【立ち絵】黒田：真剣
[黒田真剣]
[wait time=10]
「……毒にあたると、血を吐いて死んでしまうこともあるのですよ」[p]

;【立ち絵】主人公：不安
[主人公伏目パチ1回]
[wait time=10]
[主人公困り]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……おそろしい」[p]
[黒田通常]
[wait time=10]
;【立ち絵】主人公：目閉じほほえみ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「でも、私は採らないから大丈夫ですわ」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene10==undefined"]
	[skipstop]
[endif]
*scene10

[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「はは、そうですね。[r]
[sp]つい自分の感覚で話してしまいました」[p]

;【立ち絵】主人公：横ジト目
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ご自分の感覚――さきほど、突然置いていかれたときは[r]
[sp]こちらはドキッと心細くなったのですよ」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：あわてる
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[黒田驚]
[wait time=10]
[chara_mod name="kuroda_emo" storage="kuroda/emo_ase.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「あっ、そうでした。すみません」[p]
;【立ち絵】黒田：苦笑
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ugugu.png" time=0]
[wait time=10]
「つい気になるものを見つけると……やってしまいました」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]

;【立ち絵】黒田：しょんぼり
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]

「以後、気をつけます」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene11==undefined"]
	[skipstop]
[endif]
*scene11

[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]

;【立ち絵】黒田：横ジト目
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_mu.png" time=0]
[wait time=10]
「でも[名前]さんが下ばかりご覧になっていたから[r]
[sp]下の方に楽しいものがないかと探してのことなのですよ」[p]
[黒田通常]
[wait time=10]
;【立ち絵】主人公：伏目
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（――二人そろって下ばかり見ていた、先ほどの光景が思い出される）[p]

;【立ち絵】主人公：驚
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
「あら！　私にも原因があったのですね」[p]
[主人公ポーズ通常]
[wait time=10]
;【立ち絵】主人公：頬染め目閉じ眉下げ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[黒田ほほえみ]
[wait time=10]

「ごめんなさい」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene12==undefined"]
	[skipstop]
[endif]
*scene12

;【立ち絵】主人公：頬染め通常
[主人公通常]
[wait time=10]
（イグチのおかげで、自然に話せるようになったみたい[r]
[sp]私も黒田様の影響を受けてしまったかしら――）
[autosave]
[p]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]

;【立ち絵】黒田：ほほえみ
[黒田閉目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「次は上を見ながら歩きましょうか」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】主人公：通常
[主人公目パチ1回]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene13==undefined"]
	[skipstop]
[endif]
*scene13

;【背景】紅葉　夕方
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kouyou_kaidan.jpg" time=500]
[wait time=10]
#
見上げると、陽が傾きはじめている。[r]
帰りの時間が近いと気づき、名残惜しく感じた。[p]

;【立ち絵】主人公：目閉じ眉下げ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「もうすぐ帰りの時間ですね。時が経つのが早く感じます」
[autosave]
[p]

;【立ち絵】黒田：苦笑
[黒田困りほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「私もですよ……」[p]

[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[黒田通常]
[wait time=10]
#
紅葉にほんのりと色づいた木漏れ日がキラキラと揺れている。
[autosave]
[p]

;【立ち絵】黒田：伏目
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yokofusi_kaisou.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「紅葉の木漏れ日を見ると、小さな頃に見たお能を思い出します」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

;【立ち絵】主人公：通常
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お能ですか。木漏れ日ということは、お外で……？」[p]
#
――[ruby text="たきぎ"]薪能。そう呼ばれる、野外の能舞台だろうか。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene14==undefined"]
	[skipstop]
[endif]
*scene14

;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「はい。山の中で紅葉谷と呼ばれるところでのお能だったのですが」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
「父に連れられて、紅葉に夕陽の木漏れ日がキラキラと輝くのを見ながら[r]
[wait time=10]
[sp]……ワクワクとお能がはじまるのを待ったのです」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……綺麗でしょうねぇ！」[p]

;【立ち絵】黒田：伏目
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yokofusi_kaisou.png" time=0]
[whosay name="黒田 将貴" color="#7a65b2"]
「日が沈むと、かがり火がゆらめくなかに[r]
[sp]舞台が浮かんで錦の袖がひるがえる……。[r]
[wait time=500]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_warau.png" time=0]
[wait time=10]
;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[sp]とてもうつくしかったです」[p]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
「そうして自然に触れるなかで、植物が好きになったのかもしれません」
[autosave]
[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
#
目の前の紅葉が炎となりかがり火となって[r]
お能の世界へといざなってくれる心地がする――。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene15==undefined"]
	[skipstop]
[endif]
*scene15

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「素敵ですね。[ruby text="つづみ"]鼓の音の合間に、虫の音も響いたのでしょうか」[p]

[主人公閉目パチ1回]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ええ。舞の間も、帰り道にも虫の音はありました」[p]
;【立ち絵】黒田：通常
[黒田通常]
[wait time=500]
「しん……と夜更けに冷え込んだなか[r]
[sp]提灯に照らされて葉がゆれるかげに虫の音が響くのも[r]
;【立ち絵】黒田：伏目
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
[sp]寂しい感じがして好きでした」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「うらやましいです。夜の外出は、お許しが出ませんから……」
[autosave]
[p]

（今の繊細な表情と、イグチを見つけたときの楽しそうなお顔……。[r]
[sp]どちらもお持ちなところが、黒田様の面白さかもしれない）[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene16==undefined"]
	[skipstop]
[endif]
*scene16

;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「では、[名前]さんは虫の音もあまり聞かれないのですか？」
[autosave]
[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お庭ぐらいですね」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene17==undefined"]
	[skipstop]
[endif]
*scene17

;【立ち絵】黒田：驚
[黒田驚]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「なんと！　それは不自由ですね。[r]
;【立ち絵】黒田：真剣
[黒田真剣]
[wait time=10]
[sp]今度、虫をたくさん届けさせましょうか？」[p]

;【立ち絵】主人公：あわてる
[主人公ポーズ両手]
[wait time=10]
[主人公驚]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「い……いえ！　結構でございます。　遠慮させてください！！」[p]
;【立ち絵】主人公：苦笑
[主人公ポーズ指]
[wait time=10]
[主人公困りほほえみ]
[wait time=10]
[主人公汗]
[wait time=10]
（黒田様の影響で自然に慣れたとはいえ、虫たくさんは、まだちょっと……）[p]

;【立ち絵】黒田：しょんぼり
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]

[whosay name="黒田 将貴" color="#7a65b2"]
「そうですか……良い声の虫を色々選ぼうと思ったのですが……残念です」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_3_scene18==undefined"]
	[skipstop]
[endif]
*scene18

;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
#
公園の門が見えてきた。[p]
;【背景】公園の門フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_shinrinkouen_gate_yuu.jpg" time=500]
[wait time=10]

名残惜しさを感じつつも、黒田様の自然への情熱を目の当たりにして[r]
少し疲れも感じていたので、ホッとする気持ちもあった――。[p]
[fadeoutbgm time=3000]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「今日はありがとうございました。またお会いしましょう！」[p]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こちらこそ、ありがとうございました」[p]
「黒田様、ごきげんよう！」[p]
[stopbgm]

;紅葉散策編終了
[黒田退場]
[wait time=10]
;sfクリア記録
[eval exp="sf.event_kuroda_10_3 = 1"]

[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]

[if exp="tf.test_kuroda == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;◆「休憩中」画像消去
[freeimage layer = 26]

;回想記録終了 
[endreplay] 
@jump storage="event.ks" target=*event_owari


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
