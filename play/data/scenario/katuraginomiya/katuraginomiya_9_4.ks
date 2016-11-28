;=============================================
;葛城宮ルート9月4週
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*9_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

#
磯野が憂い、迷うように一通の手紙を眺めている[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;【立ち絵】主人公疑問
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
「磯野、その手紙は、どなたからの手紙ですか？」[p]

[whosay name=磯野 color="dimgray"]
「宮家の女王様からでして[r]
[sp]……その、この方は以前、葛城宮殿下の婚約者候補で……」[p]

#
磯野は言いにくそうに言葉を濁す。[p]

;【立ち絵】主人公目伏
[主人公ポーズ通常]
[主人公憂い]
「私宛ての手紙なのですね。　読みますわ」[p]

#
磯野は浮かない顔で私に手紙を手渡す。[p]

[whosay name=磯野 color="dimgray"]
「何かありましたら、ご相談して下さい」[p]

;【立ち絵】主人公目伏
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙従妹宮]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp] 初めてお手紙を差し上げます。[r]
[sp] 新涼のみぎり、[名字]様には一段とご清祥の由と存じます。[r]
[r]
[sp]さて、私がこうして筆を取り、お手紙差し上げて理由は[r]
お察し頂けるでしょうか。[r]
[r]
[sp] 私も貴方などに長々とお手紙を書きたくございません。[r]
[sp] 晴仁親王殿下の婚約を辞退なさい。[r]
[r]
[sp] 殿下と貴方は身分も何もかも違います。[r]
[sp]貴方程度の卑しい身分の方が殿下の婚約者になったことを[r]
平民たちが喜んでいることも浅ましいと思いますわ。[p]
[r]
[sp]貴方はこれがどれほど異例な事であるか分っているのですか。[r]
[sp]皇族は皇族同士と結婚するのが常であり、私の父宮や[r]
皇族の方々は、晴仁殿下のみならず、葛城宮王殿下を[r]
何故、貴方と晴仁殿下の婚約を許したかと非難しておいで[r]
ですわ。[r]
[r]
[sp] 晴仁殿下は今上帝の信頼厚く親王の号を頂く方です。[r]
[sp]貴方のような方が殿下の婚約者など我慢なりません。[r]
[sp]貴方はご自分の身の程をわきまえるべきです。[r]
[r]
[sp]用件のみ失礼します[r]
[r]
[sp]                                     かしこ[r]
[sp]　　　　　　　　　　　　　　　　久佐賀宮　志津子[p]
;自動改ページされてしまいますのでｐで止めます(スクリプト担当_2
[sp][r]
追伸　これは忠告ですわ。　有り難く思いなさい。[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[手紙読了]

;【立ち絵】主人公憂い
[主人公憂い]
（……異例な事）[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、何と書かれてありましたか？」[p]

;【立ち絵】主人公目伏
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下との婚約を辞退を促すように書かれてありました。[r]
[sp]お父様やお兄様や家に迷惑が掛からないといいのだけれど」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様。[sp]家の事は、私や旦那様にお任せください」[p]

;【立ち絵】主人公憂い
[主人公憂い]
[主人公口ほほえみ]
「……誠意をもってお返事を書きます。[r]
[sp] 伝わるといいのだけれど」[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字  [テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]
[主人公憂い]
[主人公ポーズ通常]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000] 
[eval exp="f.haikei_credit='photo　by　ゆうあかり'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

一週間後[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
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
「あの手紙から浮かない顔をしていますね」[p]

[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。[sp]まだ志津子女王様からお返事が返ってきません」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様。　このぐらいで落ち込まれては身が持ちませんよ」[p]
[fadeoutbgm time=3000]
[主人公眉困り]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。 そうね」[p]
#
;=====================================スクリプトシーン切りかえ==========================================================
[主人公退場]
[暗転]
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[表示準備]
[stopbgm]
;主人公復帰表情目閉じ　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[主人公憂い]
[iscript]
$('.junbi_girl').remove();
[endscript]
;=====================================スクリプトシーン切りかえ==========================================================

;[主人公憂い]幕間に設定済
[whosay name=&sf.girl_namae color="#cf5a7f"]
（わかっていたけど、[r]
[sp]やんごとなきお方と折り合っていくのは、難しいわ）[p]

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

[whosay name="茶屋店員" ]
「いらっしゃいませ。[r]
[sp]……お客様、顔色が悪いですが大丈夫ですか？」[p]

[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]
[主人公目閉]
（人目もあるし、もう大丈夫だわ）[p]

[主人公憂い]
#
そう思ったのも、つかの間だった。[p]
茶屋の入り口から、男性が入ってきたかと思うと[r]
私に近づき、ニヤニヤしながら言う。[p]

[whosay name="？？？"]
「鷹司様、晴仁殿下があちらでお待ちなので、[r]
[sp]おひとりであちらにお越しください」[p]

#
男性は身なりこそ良いけれど、どこか下品な印象を受けた。[p]

[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、ここで待たせて頂きますわ」[p]

[whosay name="下品な男" ]
「いえ殿下があちらで話したいとおっしゃいますから[r]
[sp]どうぞ、あちらへ」[p]

[主人公通常]
[主人公眉困り]
「……申し訳ありませんが、お断りしますわ」[p]
[主人公目閉]
（……不安で胸がつぶれそう）[p]
[主人公目通常]
[whosay name=下品な男" ]
「ふん、外見に反して強情だな。[r]
[sp]姫宮様が、ぶてぶてしいといっていたが、その通りなようだ」[p]

[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！　姫宮様とはまさか志津子女王様の事ですか？」[p]

[whosay name=下品な男" ]
「さあな……[r]
[sp]俺は、お前の醜聞を[ruby text=でっ]捏ち[ruby text=あ]上げるように頼まれただけだ」[p]
;平仮名つづきなので一時的にテスト

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どのようにでっちあげるのですか？」[p]
[主人公目閉]
（大きな悪意を感じてめまいがするわ。[r]
[sp]でもここで負けてはいけない）[p]
[主人公目伏]
[whosay name=下品な男" ]
「ネタをあかしたりしないさ」[p]

#
ただ男性は嗤う。[r]
私をあざけるような嗤いに恐怖と不安で胸が張り裂けそう[p]

[主人公ポーズ通常]
[主人公眉困り]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（殿下……！）[p]


;====================
;【立ち絵】葛城宮　真剣
[葛城宮ベース私服]
[葛城宮真剣]
[表示開始 time=300]
;準備は幕間にて済
;====================
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿！」[p]

[fadeoutbgm time=3000]

#
見知った声に店の入り口に殿下の姿を見つけた。[p]

[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下！」[p]

[葛城宮怒り]
[whosay name="葛城宮　晴仁" color=%mp.color]
「貴様の顔には見覚えがある。[r]
[sp]よくもこんな汚い真似に加担したな！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】一閃（緊迫シーンに
[playbgm storage="kinpaku_issen.ogg" loop=true]
[eval exp="f.bgm_storage='kinpaku_issen.ogg'"]
[endif]

[whosay name="下品な男"]
「殿下これは……」[p]

[葛城宮目伏]
[whosay name="葛城宮　晴仁" color=%mp.color]
「黙って彼女の前から去れ」[p]

[whosay name=下品な男" ]
「ご、御前を失礼します！」[p]
;[葛城宮口ムッ]
[fadeoutbgm time=3000]
#
男が逃げるように店を出て行った。[r]
殿下は私に向き直って言った[p]

[葛城宮真剣]
[whosay name="葛城宮　晴仁" color=%mp.color]
「何もされなかったか？」[p]

[主人公目閉じ]
[主人公口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇ……」[p]

（緊迫した雰囲気がなくなり、[r]
[sp]殿下の姿と優しい眼差しにほっとして気が遠くなっていく）[p]

[chara_mod name="bg" storage="toumei.gif" time=1500]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（怖かった。けれど殿下が来てくださったわ[r]
[sp]きっともう大丈夫）[p]

;==========================スクリプト===============================
#
[主人公退場]
[葛城宮退場]
;背景:庭【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000] 
[表示準備 storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
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
「この度の事件は私の責任だ。　どれだけお詫びしても足りない」[p]

#
後悔の念が伝わっててくる声に私は目を開けると[r]
殿下がひどく悲しそうな顔をしていた[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「貴方の[ruby text=せ]所[ruby text=い]為ではないです……[r]
[sp]私が[ruby text=あさ]浅はかだったのですわ」[p]

#
思わず言葉がでたけれど私の声はかすれて弱弱しかった。[r]
これでは皆に心配をかけるだけなのに。[p]

[葛城宮驚き]
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿！」[p]

[葛城宮憂い]
「こんな目に合わせてすまなかった」[p]

[主人公目閉じ]
#
私は首を振る[p]

[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ！　そんなことはありませんわ」[主人公口ムッ][p]


[葛城宮憂い]
[whosay name="葛城宮　晴仁" color=%mp.color]
「いや……[r]
[sp]私の従妹宮が君の醜聞を作るように仕向けたのだ」[p]
[fadeoutbgm time=3000]

[主人公涙_目閉用]
[主人公ポーズ片手]
#
その言葉に私は、あの時の恐怖を思い出して体が震える。[r]
;アップしていいですか
すると殿下に抱きしめられた[p]

[葛城宮目閉じ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「怖かっただろう……もう大丈夫だ。[r]
[sp] もうこんな事を起こさせない」[p]

[主人公涙流_目閉用]
#
私は殿下に縋り付いて泣いた。[r]
……怖かった感情があふれだし、その痛みが取れていく。[p]

[主人公ポーズ通常]
[主人公効果消]
そして泣きやむと、磯野が咳払いして私は我に返った。[p]
[主人公眉下げ下]
[主人公目伏]

[whosay name=浩文"]
「殿下、娘との婚約は、もう一度考えさせて頂きたい。[r]
[sp]やはり身分の差というのは問題があります」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]


[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私は、なんともなかったのです。[r]
[sp]それに殿下は来てくださいました。[r]
[sp]私は殿下の事をお慕いしているのですどうかお許しください」[p]

[葛城宮驚き]
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿！」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様……」[p]

[whosay name=浩文"]
「[名前]……」[p]

[主人公頬染め]
[主人公目閉じ]
#
殿下と私は見つめ合った[r]
……胸が熱いわ。[r]
殿下を慕う気持ちは日増しに大きくなっている[p]

[葛城宮真剣]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……私といることでまた君は嫌な想いをするかもしれない[r]
[sp] それでもいいだろうか？」[p]

[主人公効果消]
[主人公眉下げ下]
[主人公目伏柔]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。　このぐらいの事なんでもありません。[r]
[sp] 私も強くなりますわ。[r]
[sp] ……殿下を支えられるようになりたいと思います」[p]

[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ありがとう[名前]殿、君を大切にする。[r]
[sp] ……だが私が長居してもあまり良くはない[r]
[sp] そろそろ失礼する」[p]

#
そして殿下はお父様に一礼し退出した。[p]

;[葛城宮退場] ふわっと退場
[葛城宮退場準備 storage="bg/bg_room_niwa.jpg"time=300]

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

[主人公目閉じ]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、磯野、私は強くなります。[r]
[sp]だから心配しないで下さい」[p]

[イベントシーン終了]
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
