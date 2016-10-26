;=============================================
;葛城宮ルート9月4週
;=============================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000] 
[eval exp="f.haikei_credit='photo　by　ゆうあかり'"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
#
磯野が憂い、迷うように一通の手紙を[r]
眺めている[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;【立ち絵】主人公疑問
[主人公ポーズ指]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、その手紙は[r]
[sp] どなたからの手紙ですか？」[p]


[whosay name=磯野 color="dimgray"]
「宮家の女王様からでして[r]
[sp] ……そのこの方は以前葛城宮殿下の婚約者候補で……」[p]

#
磯野は言いにくそうに言葉を濁す[p]

;【立ち絵】主人公目伏
[主人公ポーズ通常]
[主人公憂い]
「私宛ての手紙なのですね、[r]
[sp] 読みますわ。」[p]

#
磯野は浮かない顔で私に手紙を手渡す[p]

[whosay name=磯野 color="dimgray"]
「何かありましたらご相談して下さい。」[p]

;【立ち絵】主人公目伏
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp] 初めてお手紙を差し上げます。[r]
[sp] 新涼のみぎり[名字] 様には一段とご清祥の由と存じます。[r]
[r]
[sp]さて、私がこうして筆を取り、お手紙差し上げて理由は[r]
お察し頂けるでしょうか？[r]
[r]
[sp] 私も貴方などに長々とお手紙を書きたくございません。[r]
[sp] 晴仁親王殿下の婚約を辞退なさい。[r]
[r]
[sp] 殿下と貴方は身分も何もかも違います。[r]
[sp]貴方程度の卑しい身分の方が殿下の婚約者になったことを[r]
平民たちが喜んでいることも浅ましいと思いますわ[p]
[r]
[sp]貴方はこれがどれほど異例な事であるか分っていなのですか？[r]
[sp]皇族は皇族同士と結婚するのが常であり私の父宮や一部の皇族の方は[r]
晴仁殿下の父宮の尊通(たかみち)王殿下を[r]
何故貴方と晴仁殿下の婚約を許したかと非難しておいでです。[r]
[r]
[sp] 晴仁殿下は今上帝の信頼厚く親王の号を頂く方です。[r]
[sp]貴方のような方が殿下の婚約者など我慢なりません。[r]
[sp]貴方はご自分の身の程をわきまえるべきです。[r]
[r]
[sp]用件のみ失礼します[r]
[r]
[sp]                                             かしこ
[sp]　　　　　　　　　　　　　　　　　　久佐賀宮　志津子[r]
追伸　これは忠告ですわ有り難く思いなさい。[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[手紙読了]

;【立ち絵】主人公憂い
[主人公憂い]
（……異例な事）[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、何と書かれてありましたか？」

;【立ち絵】主人公目伏
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下との婚約を辞退を促すように書かれてありました[r]
[sp] お父様やお兄様や家に[r]
[sp] 迷惑が掛からないといいのだけれど」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、家の事は私や旦那様にお任せください」[p]

;【立ち絵】主人公憂い
[主人公憂い]
「……誠意をもってお返事を書きます[r]
[sp] 伝わるといいのだけれど」[p]

;【テキスト全画面】黒茶・和紙風背景(暗)に白文字
[テキスト全画面白文字暗]
一週間後[p]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[イベントシーン構築]
;背景:庭
[主人公ポーズ通常]
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「出かけて参ります」[p]

[whosay name=磯野 color="dimgray"]
「あの手紙から浮かない顔をしていますね」[p]

[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。まだ志津子女王様からお返事が返ってきません」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、このぐらいで落ち込まれては[r]
[sp]身が持ちませんよ」[p]

[主人公眉困り]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。そうね」[p]

;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="macro_tati_katuraginomiya.ks"]

[イベントシーン構築]
[主人公ポーズ通常]
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（わかっていたけどやんごとなきお方と[r]
[sp]折り合っていくのは難しいわ）[p]
　　
;【SE】足音（靴
[playse storage=walk_kutsu.ogg loop=false ]

[主人公驚き]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（さっきから私の後ろでずっと同じ足音が聞こえているわ）[p]

[主人公憂い]
（……まさか尾行されているの？　どうして？）[p]

#
私は小走りに茶屋に入った。[p]

[whosay name=？？？" ]
「鷹司様ですね……晴仁親王殿下があちらで[r]
[sp] お待ちなのでおひとりであちらにお越しください」[p]

#
男性が近づきニヤニヤしながら言う[r]
男性は身なりこそ良いけれど、[r]
どこか下品な印象を受けた[p]

[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、ここで待たせて頂きますわ」[p]

[whosay name=下品な男" ]
「いえ殿下があちらで話したいとおっしゃいますから[r]
[sp] どうぞあちらへ」[p]

[主人公通常]
[主人公眉困り]
「……申し訳ありませんが、お断りしますわ。」[r]
（……不安で胸がつぶれそう）[p]

[whosay name=下品な男" ]
「ふん、外見に反して強情だな[r]
[sp] 姫宮様がぶてぶてしいといっていたが[r]
[sp] その通りなようだ[p]

[主人公ポーズ片手]
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！　姫宮様とはまさか志津子女王様の事ですか？」[p]

[whosay name=下品な男" ]
「さあな……俺はお前の醜聞を[r]
[sp] でっちあげるように頼まれただけだ」[p]

#
ただ男性は嗤う。
状況を把握し、あまりの恐怖と不安で目の前が暗くなっていく[p]

[主人公ポーズ通常]
[主人公眉困り]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（殿下……！）[p]

[chara_mod name="bg" storage="toumei.gif" time=1500]

[whosay name=葛城宮晴仁]
「[名前]殿！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（最後に殿下の声がしたけれど恐怖がいっぱいで私は気を保てなかった）[p]

;背景:庭
【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000] 
[eval exp="f.haikei_credit='photo　by　ゆうあかり
[call target=*start storage="macro_tati_katuraginomiya.ks"]

[イベントシーン構築]
[主人公ポーズ通常]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]

;【立ち絵】葛城宮　目伏せ
[葛城宮ベース私服]
[葛城宮憂い]
[whosay name=葛城宮晴仁" ]
「この度の事件は私の責任だ。どれだけお詫びしても足りない」[p]

#
後悔の念が伝わっててくる声に私は目を開けると[r]
殿下がひどく悲しそうな顔をしていた[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「貴方の所為ではないです……私が浅はかだったのですわ」[p]

#
声出すけど私の声はかすれて弱弱しかった。[r]
これでは皆に心配をかけるだけなのに。[p]

[葛城宮驚き]
[whosay name=葛城宮晴仁" ]
「[名前]殿！」[p]

[葛城宮目伏せ]
[sp] こんな目に合わせてすまなかった」[p]

#
私は首を振る[p]

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ！　そんなことはありませんわ」[p]

[葛城宮憂い]
[whosay name=葛城宮晴仁" ]
「いや……[r]
[sp]私の従妹宮が君の醜聞を作るように仕向けたのだ」[p]

#
その言葉に私はあの時の恐怖を思い出して体が震える[r]
すると殿下に抱きしめられた[p]

[葛城宮目閉じ]
[whosay name=葛城宮晴仁" ]
「怖かっただろう……もう大丈夫だ[r]
[sp] もうこんな事を起こさせない」[p]

#
私は殿下に縋り付いて泣いた[r]
……怖かった感情があふれだしその痛みが取れていく[r]
そして泣きやむと磯野が咳払いして私は我に返った[p]


[whosay name=浩文"]
「殿下、娘との婚約はもう一度考えさせて頂きたい。[r]
[sp] やはり身分の差というのは問題があります」[p]

[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私はなんともなかったのです。それに殿下は来てくださいました[r]
[sp] 私は殿下の事をお慕いしているのですどうかお許しください」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様……」[p]

[whosay name=浩文"]
「[名前]……」[p]

[葛城宮驚き]
[whosay name=葛城宮晴仁" ]
「[名前]殿！」[p]

#
私達は見つめ合った[r]
殿下といると胸が高鳴る。[r]
私はもう恋に落ちてしまったのだわ[p]

[葛城宮真剣]
[whosay name=葛城宮晴仁" ]
「……私といることでまた君は嫌な想いをするかもしれない[r]
[sp] それでもいいだろうか？」[p]

[主人公眉下げ下]
[主人公目伏柔]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。　このぐらいの事なんでもありません。[r]
[sp] 私も強くなりますわ。[r]
[sp] ……殿下を支えられるようになりたいと思います」[p]

[葛城宮微笑み]
[whosay name=葛城宮晴仁" ]
「ありがとう[名前]殿、君を大切にする[r]
[sp] ……だが私が長居してもあまり良くはない[r]
[sp] そろそろ失礼する」[p]

#
そして殿下はお父様に一礼し退出した。[p]

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、磯野、私は強くなります[r]
[sp] だから心配しないで下さい」[p]

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
