;=============================================
;◆黒田イベント【デート】黒田ルートかつ11月2週になった時点で1度だけ発生
;=============================================
*start
*replay_kuroda_11_2
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=10]
[call target=*start storage="macro_tati_kuroda.ks"]
[preload storage="data/fgimage/bg/bg_bluesky.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_winter_forest_yuu.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_shinrinkouen_gate_winter.jpg" wait=true]
[preload storage="data/fgimage/bg/bg_biwa_tree.jpg" wait=true]
;==========================================================================================
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[stopbgm]
[if exp="tf.test_kuroda !=true"]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[endif]
;---------------------------黒田登場--------------------------------------
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
;-----------------------------------------------------------------
;【背景】玄関
[freeimage layer = 1]
[wait time=10]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_genkan.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1_1
[whosay name="磯野" color="dimgray"]
「では、お気をつけて[r]
[sp]行ってらっしゃいませ」
[autosave改]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]


;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。行って参ります」[p]

;==========================================================================================
;【背景】青空（秋晴れ）又はフェードアウトのまま
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_bluesky.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Mike Linksvayer　https://www.flickr.com/photos/mlinksva/15476575104/'"]
;==========================================================================================
;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
人力車に乗りこんで振り返ると、磯野の姿がだんだんと小さくなってゆく。[p]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日は滞りなく準備ができたわ。[r]
[sp]ばあやのお小言も無かったけれど、それもなんだか寂しいものね）[p]

;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
;==========================================================================================
;【背景】公園の門フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_shinrinkouen_gate_winter.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit=''"]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene2==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene2
;【立ち絵】黒田：遠_疲れ
[chara_delete name="kuroda_base"]
[wait time=10]
[chara_new name="kuroda_base" storage="kuroda/base_haori_y580_tukare.png"]
[wait time=10]
[chara_show left=310 top=100 layer=8 name="kuroda_base"]
[wait time=10]
――森林公園に着いた。[r]
入口の門に、紫の着物姿が見える。
[autosave改]
[p]

;【立ち絵】黒田：伏目
[whosay name=&sf.girl_namae color="#cf5a7f"]
（黒田様。少しお疲れに見えるような……？）[p]

[chara_mod name="kuroda_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_delete name="kuroda_base"]
[wait time=10]
[freeimage layer = 8]
[layopt layer=8 visible=true]
[黒田ほほえみ]
[wait time=10]
[chara_new name="kuroda_base" storage="kuroda/base_haori.png" time=100]
[chara_show left=250 top=60 layer=8 name="kuroda_base"]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さん、こんにちは」[p]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう、黒田様」[p]
（笑顔はいつも通りだわ。[r]
[sp]お疲れが気のせいだと良いのだけれど）[p]

[主人公通常]
[wait time=10]
;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「寒くなってきましたね」[p]
[黒田目パチ1回]
[wait time=10]

「公園の木々も、冬支度をはじめていますよ」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;==========================================================================================
;【背景】冬の木々
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_winter_forest.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Eddy BERTHIER　https://www.flickr.com/photos/didy_b/16022666269/'"]
;==========================================================================================
;【立ち絵】主人公：通常
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「葉の落ちた樹が多くなりましたね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene3==undefined"]
	[skipstop]
[endif]
*scene3

#
枝ばかりの樹々に寒さを感じつつ、歩く。[p]
[主人公目パチ1回]
[wait time=10]

[黒田目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]

[whosay name="黒田 将貴" color="#7a65b2"]
「葉を落とした樹の姿も、好きなのですよ」
[autosave改]
[p]

;【立ち絵】主人公：驚
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ。私は寂しく感じていたところです」[p]
[主人公目パチ1回]
[wait time=10]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
「どんなところがお好きなのですか？」[p]

[黒田目パチ1回]
[wait time=10]

[whosay name="黒田 将貴" color="#7a65b2"]
「葉は樹が生きるために大切なものですが[r]
[sp]厳しい時期に備えてそれをあえて落とす」[p]
[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
「その姿に強さを感じます」[p]

;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]

;【立ち絵】主人公：驚
[主人公目パチ1回]
[wait time=10]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「樹の姿に生き方を見ていらっしゃるのですか」[p]
[主人公通常]
[wait time=10]

;【立ち絵】黒田：通常（頬染め）
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[黒田目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「そんなに大層なものではありませんが……[r]
[sp]つい自分だったらどうか、など考えてしまいます」[p]
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene4==undefined"]
	[skipstop]
[endif]
*scene4

;【立ち絵】主人公：通常
[主人公目パチ1回]
[wait time=10]

;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]

「植物に教えられることも多いのですよ」
[autosave改]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様は、本当に植物がお好きなのですね」[p]

;【立ち絵】黒田：伏目（頬染め）
;[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
;[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yokofusi_kangae.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「いやぁ。好きといいますか、自然の中で育ったもので……」[p]

[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：通常
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田通常]
[wait time=10]
「日々眺めているうちに色々と考えるようになったのかもしれません」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene5==undefined"]
	[skipstop]
[endif]
*scene5

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[黒田目パチ1回]
[wait time=10]
#
寒さを感じる光景のなか、道沿いに緑の葉を茂らせた樹が見えてくる。[p]

[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ビワですね。花芽が上がっていますよ。[r]
;【立ち絵】黒田：ほほえみ
[sp]近くに寄ってみましょう」
[autosave改]
[p]
;==========================================================================================
;【背景】（あれば）ビワの樹フェードイン。無ければ変更なし
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_biwa_tree.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Mike Petrucci　https://www.flickr.com/photos/scrappapervlog/17598158185/'"]
;==========================================================================================
;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ビワの樹は見かけたことがあるのですが……花は初めてです」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「いまごろから咲くのですね」[p]

[黒田目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ええ。冬咲く花は少ないですから、貴重ですね。[r]
[sp]メジロなどが蜜を吸っているのを見ますよ」[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「鳥にとっては貴重なごちそうなのですね」[p]

;【立ち絵】黒田：笑顔
[黒田笑顔]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「でしょうね！　花を見つけたメジロも、活き活きして見えますよ」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
[黒田退場]
[wait time=10]
;【背景】（あれば）びわの花フェードイン。無ければ変更なし
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_biwa_flower.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit=''"]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene6==undefined"]
	[skipstop]
[endif]
*scene6

#
黒田様が花をつけた枝を引きよせてくださる。[p]
[whosay name="黒田 将貴" color="#7a65b2"]
「ごらんください。暖かそうでしょう」
[autosave改]
[p]

;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あら、お花がもこもこした毛に包まれていますね」[p]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
「暖かそうで、可愛らしいですね。それに、甘い香り……」[p]

;【SE】茂み（ガサガサ）
[playse storage=shigemi_gasagasa.ogg loop=false ]
#
香りに気をとられていると、近くで物音がした。[p]

;【背景】ビワの樹フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_biwa_tree.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Mike Petrucci　https://www.flickr.com/photos/scrappapervlog/17598158185/'"]
;【立ち絵】黒田：驚
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田驚]
[wait time=10]
;【立ち絵】主人公：驚
[主人公驚]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene7==undefined"]
	[skipstop]
[endif]
*scene7

;【SE】茂み（ガサガサ）
[playse storage=shigemi_gasagasa.ogg loop=false ]
#
籠を背負った男が、あわてたようにきのこを拾い上げている。[r]
ひげを生やした山男の風貌だ。[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：驚（頬染め）
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「あっ……田中！」[p]

;【立ち絵】主人公：とまどい（赤面）
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お知り合い……ですか？」
[autosave改]
[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「いやぁ、すまんね。大事な晩ごはんがころがり落ちちまったもんで」[p]
;【立ち絵】黒田：苦笑（頬染め）
[黒田困りほほえみ]
;【立ち絵】主人公：とまどい
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公横目パチ1回]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
「おじゃましちゃ悪いかなって。[r]
[sp]そ～っと通り過ぎようとも思ったんだけど、失敗しちゃった」[p]

;【立ち絵】黒田：苦笑
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
;【立ち絵】主人公：苦笑
[主人公困りほほえみ]
[wait time=10]

[主人公閉目パチ1回]
[wait time=10]
;【立ち絵】黒田：困（頬染め）
[黒田困り]
[wait time=10]
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「いや……研究室の皆は調査に出ていると思っていたから、あせったよ」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;【立ち絵】黒田：目閉じ（頬染め）
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_mu.png" time=0]
[wait time=10]
「……コホン」[p]
[黒田閉目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene8==undefined"]
	[skipstop]
[endif]
*scene8

[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田通常]
[wait time=10]
「気を取り直して」
[autosave改]
[p]
;【立ち絵】黒田：通常
;【立ち絵】主人公：通常
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
「[名前]さんに紹介しましょう、こちらは田中という研究室の友人です」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「はじめまして。田中 岩男です。[r]
[sp]『山に魚を求める男』と覚えていただけると幸いですよ」[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はじめまして。[名字] [名前]と申します」[p]
;【立ち絵】主人公：通常
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
「『山に魚……』ですか？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

;このあたりの会話は、手紙（春夏）を書き終えてから再考予定。田中の淡水魚のことも手紙で先に触れている設定です

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene9==undefined"]
	[skipstop]
[endif]
*scene9

[黒田目パチ1回]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「田中は山上湖や池で淡水魚の調査をしているのです」
[autosave改]
[p]
[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：真剣
[黒田真剣]
[wait time=10]
「採集の達人でもありますが……そりゃ採り過ぎだろう！[r]
[sp]いくら採集が許されているからって」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
#
田中の籠には、きのこがあふれんばかりに盛られている。[p]
[黒田通常]
[wait time=10]
[黒田目パチ1回]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「いいじゃねぇか。彼女がきのこ料理を作りたいって[r]
[sp]手紙で知らせてくれたから、張り切っちまったんだ」[p]
[主人公目パチ1回]
[wait time=10]

;【立ち絵】黒田：通常
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ああ、贈り物にするのか。喜んでもらえるといいな」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene10==undefined"]
	[skipstop]
[endif]
*scene10

「田中には古くからの文通相手がいるのですよ」
[autosave改]
[p]
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「おっと、その話は置いといて[r]
[sp]……黒田の『手紙の君』にお会いできて、光栄ですよ」[p]

;【立ち絵】黒田：驚（頬染め）
[黒田驚]
[wait time=10]
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「……！」[p]
;【立ち絵】主人公：目閉じ困（頬染め）
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そのおっしゃり方は、恥ずかしゅうございます」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「もっと普通にお呼びくださいませ」[p]
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田通常]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene11==undefined"]
	[skipstop]
[endif]
*scene11

[whosay name="田中　岩男" color="#775545"]
「いやぁ、すみません。では[名字]さん。[r]
[sp]貴女と文通するようになって、黒田は明るくなりましてね」
[autosave改]
[p]

[黒田目パチ1回]
[wait time=10]
;【立ち絵】主人公：驚（頬染め）
[主人公驚]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ。そうなのですか」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[黒田目パチ1回]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「ただ、黒田はちょいと変わったところがあるから心配もするんですよ」[p]

[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：横ジト目
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_mu.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「……どういうこと？」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene12==undefined"]
	[skipstop]
[endif]
*scene12

[whosay name="田中　岩男" color="#775545"]
「いやぁ、生き物が好きすぎるというか……気になるところはありません？」
[autosave改]
[p]

;【立ち絵】黒田：困（汗）
[黒田困り]
[wait time=10]
[chara_mod name="kuroda_emo" storage="kuroda/emo_ase.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「えっ…………」[p]
[主人公目パチ1回]
[wait time=10]

*kuroda_11_2_sentaku01
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示選択肢用]
[wait time=10]
[eval exp="f.select_scene='kuroda_11_2_sentaku01'"]

[glink storage="kuroda_11_2_2.ks" target=*kuroda_11_2_sentaku01_a text="イグチを採りに走って行かれたことを言う" font_color=black size=23 width="450" x=200 y=50 graphic="select_waku_x300.png"]
[glink storage="kuroda_11_2_2.ks" target=*kuroda_11_2_sentaku01_b text="虫を届けましょうかと聞かれたことを言う" font_color=black size=23 width="450" x=200 y=150 graphic="select_waku_x300.png"]
[glink storage="kuroda_11_2_2.ks" target=*kuroda_11_2_sentaku01_c text="特に何も気にならないと言う" font_color=black size=23 width="450" x=200 y=250 graphic="select_waku_x300.png"]

;メッセージレイヤサイズを会話窓用に設定変更
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（何と答えましょう？）
[autosave改]
[s]

@jump target=*kuroda_11_2_sentaku01
[s]
;選択肢jump時に複数回、読込不良のラベルエラーが発生したため、分岐処理後を分割しました◆jsYiJcqRkk