;goodエンドエピローグ
=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=3_4epilogue_goodED storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】玄関
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公憂い]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[whosay name=磯野 color="dimgray"]
「お嬢様お元気で！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「体には気を付けて。[r]
[sp]殿下によくお仕えしなさい」[p]


[sp]今まで育った家を離れる。[r]
[sp]……寂しいという気持ちがあふれる。[r]
[sp]またお妃教育が終わったら結婚の儀までは帰るけれど[p]
;けれど、今まで通りに気ままに帰ることはできなくなる。

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
「お父様、お母様、お兄様、お義姉様、磯野、[r]
[sp]今までありがとうございました」[p]

「皆、私の誇りです！　[r]
[sp]皆、悲しそうにそうにしないで下さい」[p]

;【立ち絵】主人公 微笑み
[主人公憂い]
[主人公口開]
[主人公涙]
「私の新しい門出なのです。[r]
[sp]また会えることもあります。[r]
[sp]お妃教育が終わったら結婚の儀までは戻ってきます」[p]

「沢山手紙を書きます。 だから皆、祝福してください」[p]

#
そう言いながら私の目から涙がこぼれる。[p]

……もうここは私の家でなくなる。[p]

[whosay name="文矢" color="#538a8a"] 
「[名前]、お前こそ私たちの誇りだ」[p]

;【立ち絵】主人公 困り微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公効果消]
[主人公目閉じ]
[主人公涙流_目閉用]
[主人公眉下げ下]
「お兄様、何よりの言葉です。[r]
[sp]宮中の皆様方と折り合えるように
[主人公効果消]
[主人公涙]
[主人公目伏柔]
[主人公口ほほえみ]
頑張りますわ！」[p]

「では行ってまいります！」[p]

#
私は精一杯の笑顔でそう言って、迎えの車に乗り込んだ。[p]
;===============================================================
[主人公退場]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/ekken.jpg" time=1300]
[eval exp="f.haikei_credit='photo　by　明治村画像庫'"]
[表示準備 storage="bg/I9IhvvVdPo/ekken.jpg"]
;主人公復帰表情目閉じ　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[主人公通常]
;主人公復帰表情消去"
[iscript]
$('.junbi_girl').remove();
[endscript]
;====================
[葛城宮ベース軍服]
[葛城宮微笑み]
[表示開始 time=300]
;===============================================================

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
「お久しぶりにございます陛下。　婚約の報告に参りました。[r]
[sp]こちらの女性が未来の我が[ruby text=きさき]妃、[名前]にございます」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ]
[主人公目伏柔]
[主人公口ほほえみ]
「お初にお目にかかります。 [ruby text=きん]今[ruby text=じょう]上陛下」[p]

;この間動いてないので設定する。後で

[whosay name="今上帝"]
「女性を避けていた、晴仁親王が結婚するから[r]
[sp]どんな女性かと楽しみにしていたが[r]
[sp]なるほど、納得した。 これほどの[ruby text=か]佳[ruby text=じん]人と思わなかった」[p]

[whosay name="皇后"]
「見かけによらず、芯の強いところもおありで、[r]
[sp]お茶事の時も、堂々として、いらっしゃいました」[p]

[whosay name="今上帝"]
「それならば安心だ、宮中は女官たちも含め、[r]
[sp]皇族出身者や華族でも上流出身者が多く家柄や血統を[r]
[sp]誇るものが多い」[p]

[whosay name="今上帝"]
「身分の事で口さがない事を言う者もいるだろうが、[r]
[sp]晴仁親王に良く[ruby text=つか]仕えて欲しい」[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、[r]
[sp]勿論そのつもりでございます！」[p]

[whosay name="今上帝"]
「晴仁親王妃、お印はミルトニアと決まった。[r]
[sp]英国に留学経験もあり、新しい風を吹かせようとしている[r]
[sp]晴仁親王の妃にふさわしいだろう」[p]

[whosay name="皇后"]
「西欧では花言葉が流行り、ミルトニアの花言葉は、[r]
[sp]"淑女の物思い、家庭的な愛、愛の訪れ" なのですって。[r]
[sp]その身に恥じぬように受け取めなさいませ」[p]

;【立ち絵】主人公　通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公眉下げ下]
[主人公頬染め]
「心に留め、精進いたします」[p]

[whosay name="今上帝"]
「晴仁親王、君の今後の活躍に期待している。[r]
[sp]君は先帝である父に似ている。[r]
[sp]強靭な精神も民を想う心も」[p]

;【立ち絵】葛城宮　驚き
[葛城宮驚き]
[whosay name="葛城宮　晴仁" color=%mp.color]
「先帝に！……身に余る光栄です！」[p]
[葛城宮真剣]

「先帝は、諸外国から一目置かれる、[ruby text=いち]一[ruby text=だい]大国家に成した我が国の要であり[r]
[sp]その象徴ともいえる存在でした」[p]

;【立ち絵】葛城宮　真剣
「陛下の御心に添い、生涯を陛下の御代と国民の為に[r]
[sp]尽くすつもりであります！」[p]

[whosay name="今上帝"]
「ああ、よろしく頼む」[p]
#
;===============================================================
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image name="anten" layer=29 storage="bg/anten.jpg" time=1500]
[葛城宮退場]
;指定　暗転
[chara_mod name="bg" storage="toumei.gif" time=100]
[iscript]
$('.anten').remove();
[endscript]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
;【立ち絵】主人公目閉じ
[主人公ポーズ通常]
[主人公目閉じ]
;主人公復帰表情消去"
[iscript]
$('.junbi_girl').remove();
[endscript]
;====================

;===============================================================
;【立ち絵】主人公目閉じ
#
それから月日は流れた。[p]
私たちは無事に結婚し、殿下は衆議院や貴族院議員に[r]
働きかけ制度を改革していく ――[p]

;【テキスト全画面】黒茶・和紙風背景に白文字
 [テキスト全画面白文字]
―― 10年後[p]
;===============================================================
;【背景】青空に桜
;[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[chara_mod name="bg" storage="bg/bg_EDsakura.jpg"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;[font color="0x663300"]
[font color=white size=27]
#
国民の生活は豊かになった。[r]
世界でもトップクラスの技術を開発し、[r]
発展した国となり、辞退しようとしたものの、[r]
殿下はその指導力と国民からの人気と[r]
期待を買われ内閣総理大臣となった[p]
[resetfont]
;===============================================================
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situmu.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[表示準備 storage="bg/I9IhvvVdPo/situmu.jpg" time=1500]
[イベントシーン構築]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
;【立ち絵】主人公目閉じ
[主人公ポーズ通常]
[主人公通常]
[主人公目閉じ]
;主人公復帰表情消去"
[iscript]
$('.junbi_girl').remove();
[endscript]
;===============================================================
;【立ち絵】主人公 困り顔
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
[主人公眉下げ下]
「お茶をお持ちしました。[r]
[葛城宮ベース私服]
[葛城宮通常]
[表示開始 time=300]

[sp]忙しくされているのは分りますが、体をいたわりませんと」[p]

;【立ち絵】葛城宮 通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああ、お茶を飲もう」[p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

;【立ち絵】主人公
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
「あなたと沢山歳を重ねましたね[r]
[sp]……この国も随分と変わりました」[p]

;【立ち絵】葛城宮 通常
[葛城宮通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「だがまだ課題は多い。[r]
[sp]次から次へと問題というのは起こるものだ」[p]

;【立ち絵】主人公 怒り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「でもあなたは、克服してきましたし[r]
[sp]きっとこれからも大丈夫ですわ」[p]

;【立ち絵】葛城宮 ため息
[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ありがとう」[p]

[主人公憂い]
#
この十年間も激動の十年だった。[r]
大地震は起こり、首都は壊滅的になった。[r]
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
でも、[ruby text=ひと]人は、前に進む力を持ち、諦めなければきっと未来は開ける。[p]

;【立ち絵】葛城宮 
[葛城宮目閉じ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああ、そうだな。[r]
[sp]君がいてくれて良かった。[r]
[sp]どれだけ君に救われただろうか」[p]

#
夫はしみじみと語る。[r]
―― 十年沢山の事を一緒に乗り越えてきた。[r]
だから、これからも乗り越えられる。[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「私も貴方に支えられてきました。[r]
[sp]これからも支え合って生きていきましょう」[p]

「―― 私たちは幸せになる為に生まれてきたのです」[p]

[fadeoutbgm time=3000]

[主人公目閉じ]
#
―― きっとこれからも,
[r]
あなたとともに時を紡いでいく紡いでいく[p]
;===============================================================
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image name="anten" layer=29 storage="bg/bg_sakura.jpg" time=1500]
[葛城宮退場]
[主人公退場]
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[freeimage layer=29 time=100]
;===============================================================


;===============================================================
;@jump storage="event.ks" target=*event_owari

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
