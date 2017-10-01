;=============================================
;葛城宮ルート9月4週
*replay_katuraginomiya_9_4
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*9_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
磯野が、思いあぐねるように一通の手紙を眺めている。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
;【立ち絵】主人公疑問
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
[主人公口開]
「磯野、その手紙は、どなたからのお手紙ですか？」[p]

[whosay name=磯野 color="dimgray"]
「宮家の女王様からでして[r]
[sp]……その、この方は以前、葛城宮殿下の婚約者候補で……」[p]

#
磯野は言いにくそうに言葉を濁す。[p]

;【立ち絵】主人公目伏
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公憂い]
「私宛てのお手紙なのですね。　読みますわ」[p]

#
磯野は浮かない顔で、私に手紙を手渡した。[p]

[whosay name=磯野 color="dimgray"]
「何かありましたら、ご相談して下さい」[p]

;【立ち絵】主人公目伏
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_itokomiya
[if exp="f.okeiko_gamen == true"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「忠告」 久佐賀宮 志津子";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*fumi_itokomiya");
f.fumi_list_all_location_taishou.push(11);
f.fumi_list_all_location_fumi.push(1);
f.fumi_all_number=f.fumi_all_number + 1;
[endscript]
[endif]

[手紙従妹宮]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]さて、私がこうして筆を取り、お手紙差し上げている理由は[r]
お察し頂けるでしょうか。[r]
[r]
[sp]私も貴方などに長々とお手紙を書きたくございません。[r]
[sp]晴仁親王殿下の婚約を辞退なさい。[r]
[r]
[sp]殿下と貴方は、身分も何もかも違います。[r]
[sp]貴方程度の卑しい身分の方が、殿下の婚約者になったことを[r]
平民たちが喜んでいることも浅ましいと思いますわ。[p]
[r]
[sp]貴方は、これがどれほど異例な事であるか分っているのですか。[r]
[sp]皇族は、皇族同士と結婚するのが常であり、私の父宮や[r]
皇族の方々は、晴仁殿下のみならず、葛城宮王殿下を[r]
何故、貴方と晴仁殿下の婚約を許したか と非難しておいで[r]
ですわ。[r]
[r]
[sp]晴仁殿下は、今上帝の信頼厚く親王の号を持つ方です。[r]
[sp]貴方のような方が殿下の婚約者など我慢なりません。[r]
[sp]貴方はご自分の身の程をわきまえるべきです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　久佐賀宮　志津子[p]
;自動改ページされてしまいますのでｐで止めます(スクリプト担当_2
[sp][r]
追伸　これは忠告ですわ。　有り難く思いなさい。[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[手紙読了]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公憂い
[主人公憂い]
（……異例な事）[p]
;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;------------------------------------------------

[whosay name=磯野 color="dimgray"]
「お嬢様、何と書かれてありましたか？」[p]

;【立ち絵】主人公目伏
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公目閉じ]
「殿下との婚約を辞退を促すように書かれてありました。[r]
[sp]お父様やお兄様や家に迷惑が掛からないかしら……」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様。 家の事は、私や旦那様にお任せください」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公憂い
[主人公憂い]
[主人公口ほほえみ]
「……誠意をもってお返事を書きます。[r][sp]伝わるといいのだけれど」[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字  [テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
[主人公憂い]
[主人公ポーズ通常]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=1000 wait=true] 
[eval exp="f.haikei_credit='photo　by　ゆうあかり'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

五日後、[r]

私は、お稽古の先生からの勧めで[r]直に茶器を確かめて購入することとなり、[r]町に出る事にした。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
[wait time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;==========================スクリプト・全画面表示からの復帰準備完了========================================

;[主人公憂い]幕間に設定してあります
[whosay name=&sf.girl_namae color="#cf5a7f"]
「出かけて参ります」[p]

[whosay name=磯野 color="dimgray"]
「あの手紙から浮かない顔をしていらっしゃいますね」[p]

[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。 まだ志津子女王様からお返事が返ってきません」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様。 このぐらいで落ち込まれては身が持ちませんよ[r]
[sp]お嬢様はもう親王殿下の婚約者なのですから[r]
[sp]自信と自覚を持っていただかないと困ります」[p]


[主人公眉困り]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。 そうね」[p]

（……今までとは立場が違う）[p]

[fadeoutbgm time=3000]
#
私の傍には常に女中が控え、女中達の態度も親しいものから、[r]
[ruby text=かしこ]畏まった態度へと距離を置かれつつある。[p]

#
私は、憂鬱な心境のまま町にでた。[p]
;=====================================スクリプトシーン切りかえ==========================================================
[主人公退場]
[暗転]
;背景:町並み
[bg method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[表示準備]
[stopbgm]
;主人公復帰表情目閉じ　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=300]
[主人公ポーズ通常]
[主人公憂い]
[iscript]
$('.junbi_girl').remove();
[endscript]
;=====================================スクリプトシーン切りかえ==========================================================

#
町は賑やかで活気に満ちている。[r]
町の雑踏の中では、私付きの女中以外にとって[r]
私は、ただの道行く[ruby text=ひと]一人にすぎない。[p]

;[主人公憂い]幕間に設定済
[whosay name=&sf.girl_namae color="#cf5a7f"]
（わかっていたけど、やんごとなきお方と折り合っていくのは、難しいわ）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
　

;【SE】足音（靴
[playse storage=walk_kutsu.ogg loop=false ]

[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（さっきから私の後ろでずっと同じ足音が聞こえているわ）[p]

[主人公憂い]
（……まさか尾行されているの？　どうして？）[p]

#
私は思わず近くの茶屋に入った。[p]

[whosay name="女中" ]
「お嬢様、どうかされましたか？」[p]

[whosay name="茶屋店員" ]
「いらっしゃいませ。[r]
[sp]……お客様、顔色が悪いですが大丈夫ですか？」[p]

[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、大丈夫ですわ」[p]
[主人公目閉]
（人目もあるし、もう大丈夫だわ）[p]

[主人公憂い]
#
そう思ったのも、[ruby text=つか]束の間だった。[p]
茶屋の入り口から、男性が入ってきたかと思うと、私に近づき、[r]
ニヤニヤしながら言う。[p]

[whosay name="？？？"]
「[名字]様、晴仁殿下がお待ちです。[r]
[sp]私が案内しますから、おひとりでお越しください」[p]

#
男性は身なりこそ良いけれど、どこか下品な印象を受けた。[p]

[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、ここで待たせて頂きますわ」[p]

[whosay name="下品な男" ]
「いえ殿下が貴方だけに話したい事があるとおっしゃいます。[r]
[sp]どうぞ、あちらへ」[p]

[主人公通常]
[主人公眉困り]
「……申し訳ありませんが、お断りしますわ」[p]
[主人公目閉]
（……不安で胸がつぶれそう）[p]
[主人公目通常]
[whosay name="下品な男" ]
「ふん、外見に反して強情だな。[r]
[sp]姫宮様が、ふてぶてしいといっていたが、その通りなようだ」[p]

[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！　姫宮様とはまさか……？」[p]
;おおよその察しはついていたとしても、確証を持てない個人名を第三者(悪人)には言わない方が自然かと思い調整しました(◆jsYiJcqRkk
;原文：「！　姫宮様とはまさか志津子女王様の事ですか？」[p]

[whosay name="下品な男" ]
「さあな……。[r]
[sp]俺は、お前の醜聞を[ruby text=でっ]捏ち[ruby text=あ]上げるように頼まれただけだ」[p]
;平仮名つづきなので一時的にテスト

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どのように[ruby text=でっ]捏ち[ruby text=あ]上げるというのでしょうか？」[p]
;平仮名つづきで読みにくいため漢字に　スクリプト担当さまにお任せします
[主人公目閉]
（大きな悪意を感じてめまいがするわ。 でもここで負けてはいけない）[p]
[主人公目伏]
[whosay name=下品な男" ]
「ネタをあかしたりしないさ」[p]

#
ただ男性は、[ruby text=わら]嗤う。[r]
私を[ruby text=あざけ]嘲るような[ruby text=わら]嗤いに恐怖と不安で胸が張り裂けそうになる。[p]
;あざわらう、あざけわらうが連続するためルビで変更

[主人公ポーズ通常]
[主人公眉困り]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（殿下……！）[p]


;====================
;【立ち絵】葛城宮　真剣
[葛城宮ベース私服]
[葛城宮真剣]
[葛城宮口怒り]
[表示開始 time=300]
;準備は幕間にて済
;====================
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿！」[p]
[葛城宮口通常]
[fadeoutbgm time=3000]

#
[主人公驚]
聞き覚えのある声にハッとすると、店の入り口に殿下の姿を見つけた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下！」[p]
[主人公口通常]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮怒り]
「貴様の顔には見覚えがある。 よくもこんな汚い真似に加担したな！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】一閃（緊迫シーンに
[playbgm storage="kinpaku_issen.ogg" loop=true]
[eval exp="f.bgm_storage='kinpaku_issen.ogg'"]
[endif]

[whosay name="下品な男"]
「殿下これは……」[p]

[葛城宮目伏]

[whosay name="葛城宮　晴仁" color=%mp.color]
「黙って彼女の前から去れ！」[p]

[whosay name=下品な男" ]
「ご、御前を失礼します！」[p]
[葛城宮口ムッ]
[fadeoutbgm time=3000]
#
男が逃げるように店を出て行った。[p]

;【SE】走り去る(屋外)
[playse storage=run_soto.ogg loop=false ]

[葛城宮真剣]
[whosay name="葛城宮　晴仁" color=%mp.color]
「何もされなかったか？」[p]

[主人公目閉じ]
[主人公口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇ……」[p]

#
緊迫した雰囲気がなくなり、[r]
殿下の姿と優しい眼差しにほっとして気が遠くなっていく。[p]
;カタカナに合わせてみましたが表現としては平仮名らしいのでそのまま　ホッとして気が遠くなっていく。

;【SE】倒れて腕に受け止められる（フラ…サッ）
[playse storage=taoreru_udenonakahe.ogg loop=false ]
[bg wait=true storage="toumei.gif" time=1500]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（怖かった。けれど殿下が来てくださったわ[r]
[sp]きっともう大丈夫）[p]
;==========================スクリプト===============================
[暗転２]
[wait time=10]
[主人公退場]
[葛城宮退場]
;背景:庭【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=1000 wait=true] 
[wait time=10]
[暗転２終了]
[wait time=10]
[表示準備 storage="bg/room_niwa.jpg"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=300]
[主人公ポーズ通常]
[主人公眉通常]
[主人公目閉]
[主人公口通常]
;=====主人公復帰表情消去====
[iscript]
$('.junbi_girl').remove();
[endscript]
;====主人公復帰表情消去====
;==========================スクリプト=============================================
;背景:庭【背景】主人公邸 庭の見える部屋：昼 
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]


[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
;表示準備上記で設定済
;====================
;【立ち絵】葛城宮　目伏せ
[葛城宮ベース私服]
[葛城宮憂い]
[表示開始 time=300]
;====================
[whosay name="葛城宮　晴仁" color=%mp.color]
「この度の事件は私の責任だ。　どれだけ詫びても足りない」[p]

#
後悔の念が伝わっててくる声に私は目を開けると、[r]
殿下がひどく悲しそうな顔をしていた。[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「貴方の[ruby text=せ]所[ruby text=い]為ではないです……[r]
[sp]私が[ruby text=いた]至らなかったのですわ」[p]

#
思わず言葉がでたけれど私の声はかすれて弱々しかった。[r]
これでは皆に心配をかけるだけなのに。[p]

[葛城宮驚き]
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿！」[p]

[葛城宮憂い]
「こんな目に合わせてすまなかった」[p]

[主人公目閉じ]
#
私は首を振る。[p]

[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ！　そんなことはありませんわ」
[主人公口ムッ][p]


[葛城宮憂い]
[whosay name="葛城宮　晴仁" color=%mp.color]
「いや……。[r]
[sp]今回は、私の従妹宮が、君の醜聞を作るように仕向けた事だ」[p]
[fadeoutbgm time=3000]

[主人公涙_目閉用]
[主人公ポーズ片手]
#
その言葉に私は、あの時の恐怖を思い出して体が震える。[p]
[暗転２ storage="bg/room_niwa.jpg"]
[葛城宮サイズ隣に並ぶ]
[葛城宮ベース私服]
[葛城宮通常]
[葛城宮憂い]
[暗転２終了]

すると殿下に抱きしめられた。[p]
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
「怖かっただろう……もう大丈夫だ。[r]
[sp]もうこんな事を起こさせない」[p]

#
[主人公涙流_目閉用]
私は殿下に[ruby text=すが]縋り付いて泣いた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（……怖かった）[p]

#
……気持ちが[ruby text=あふ]溢れだし、心の痛みが取れていく。[p]
;胸の痛み？

[主人公ポーズ通常]
[主人公効果消]
そして泣きやむと、磯野が咳払いして私は我に返った。[p]
[主人公眉下げ下]
[主人公目伏]

[whosay name=浩文"]
「殿下、娘との婚約は、もう一度、考えさせて頂きたい。[r]
[sp]やはり身分の差というのは、問題があります」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「私は、なんともなかったのです。　それに殿下は来てくださいました」[p]
[主人公目閉]
「私は殿下の事をお慕いしているのです。　どうかお許しください」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「[名前]殿！」[p]
[whosay name=磯野 color="dimgray"]
「お嬢様……」[p]
[whosay name=浩文"]
「[名前]……」[p]
#
殿下と私は、見つめ合った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公頬染め]
[主人公目閉じ]
（……胸が熱いわ）[p]
#
女中に距離を置かれ、こんな事件まで起こった。[r]
けれど、殿下を慕う気持ちは膨らむばかり。[p]
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮真剣]
「……私といることで、また君は嫌な思いをするかもしれない。[r]
[sp]それでも構わないだろうか？」[p]

[主人公効果消]
[主人公眉下げ下]
[主人公目伏柔]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。　このぐらいの事なんでもありません。[r]
[sp]私も強くなりますわ。[r]
[sp]……殿下を支えられるようになりたいと思います」[p]

[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ありがとう[名前]殿、君を大切にする。[r]
[sp]……私が長居してもあまり良くはない。[r]
[sp]そろそろ失礼する」[p]

#
殿下は、お父様に一礼すると、お帰りになった。[p]
;殿下は、お父様に一礼すると、(心理描写)ながらもお帰りになった。
;描写が足りないとそしてが発生する

;[葛城宮退場] ふわっと退場
[葛城宮退場準備 storage="bg/room_niwa.jpg" time=300]

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

[主人公目閉じ]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、磯野、私は強くなります。[r]
[sp]だから心配しないで下さい」[p]

（例え、もう何があっても、私は殿下の手を放さない）[p]

*seen_end
[eval exp="sf.event_katuragi_9_4 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_katuragi.ks"
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
