;goodエンドエピローグ
;［背景玄関］
[chara_mod name="bg" storage="bg/bg_genkan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

[whosay name=磯野 color="dimgray"]
「お嬢様お元気で！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

#浩文
「体には気を付けて[r]
[sp]殿下によくお仕えしなさい」[p]

#
今日お妃教育の為に宮中に入る事になった[r]
[sp]今まで育った家を離れる[r]
[sp]……寂しいという気持ちがあふれる[r]
[sp]またお妃教育が終わったら結婚の儀までは帰るけれど[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「お父様、お母様、お兄様、お義姉様、磯野[r]
[sp]今までありがとうございました[r]
[sp]皆、私の誇りです！　[r]
[sp]皆、悲しそうにそうにしないで下さい」[p]

;【立ち絵】主人公 微笑み
[主人公憂い]
[主人公口開]
「私の新しい門出なのです[r]
[sp]また会えることもあります[r]
[sp]お妃教育が終わったら結婚の儀までは戻ってきます[r]
[sp]沢山手紙を書きますだから皆祝福してください」[p]

#
そういいながら私の目から涙がこぼれる[r]
・・・・もうここは私の家でなくなる[p]

#文矢
「[名前]、お前こそ私たちの誇りだ」[p]

;【立ち絵】主人公 困り微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困りほほえみ]
「お兄様、何よりの言葉です[r]
[sp]宮中の皆様方と折り合えるように[r]
[sp]頑張りますわ！[r]
では行ってまいります！」[p]

#
私は精一杯の笑顔でそう言って迎えの車に乗り込んだ[p]


[chara_mod name="bg" storage="bg / I9IhvvVdPo / ekken.jpg "]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

;【立ち絵】葛城宮 微笑み
「お久しぶりにございます陛下[r]
[sp]婚約の報告に参りました[r]
[sp]こちらの女性が未来の我が妃[r]
[sp][名前]にございます」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「お初にお目にかかります今上陛下」[p]

#今上帝
「女性を避けていた[r]
[sp]晴仁親王が結婚するから[r]
[sp]どんな女性かと楽しみにしていたが[r]
[sp]なるほど納得したこれほどの佳人と思わなかった」[p]

#皇后
「見かけによらず[r]
[sp]芯の強いところもおありでお茶事の時も[r]
[sp]堂々としてらっしゃいました」[p]

#今上帝
「それならば安心だ、宮中は女官たちも含め[r]
[sp]皇族出身者や華族でも上流出身者が多く家柄や血統を[r]
[sp]誇るものが多い、身分の事で口さがない事を言う者も[r]
[sp]いるだろうが晴仁親王に良く仕えて欲しい」[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、[r]
勿論そのつもりでございます！」[p]

#今上帝
「晴仁親王妃、
[sp]お印はミルトニアと決まった[r]
[sp]英国に留学経験もあり、新しい風を吹かせようとしている[r]
[sp]晴仁親王の妃にふさわしいだろう」[p]

#皇后
「西欧では花言葉が流行り[r]
[sp]ミルトニアの花言葉は[r]
[sp]淑女の物思い、家庭的な愛、愛の訪れ、[r]
[sp]なのですってその身に恥じぬように受け取めなさいませ」[p]

;【立ち絵】主人公　通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「心に留め、精進いたします」[p]

#今上帝
「晴仁親王、君の今後の[r]
[sp]活躍に期待している[r]
[sp]君は先帝である父に似ている[r]
[sp]強靭な精神も民を想う心も」[p]

;【立ち絵】葛城宮　驚き
「先帝に！……身に余る光栄です！　[r]
[sp]先帝は諸外国から一目置かれる[r]
[sp]一大国家に成した我が国の要であり[r]
[sp]その象徴ともいえる存在でした」[p]
;【立ち絵】葛城宮　真剣
「陛下の御心に添い、生涯を[r]
[sp]陛下の御代と国民の為に[r]
[sp]尽くすつもりであります！」[p]

#今上帝
「ああ、[r]
[sp]よろしく頼む」[p]

暗幕
;【立ち絵】主人公目閉じ
#
それから月日は流れた[r]
私たちは無事に結婚し[r]
殿下は衆議院や貴族院議員に[r]
働きかけ制度を改革していくー[p]

;【テキスト全画面】黒茶・和紙風背景に白文字
 [テキスト全画面白文字]
ー10年後[p]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

#
国民の生活は豊かになった世界でもトップクラスの技術を[r]
開発し発展した国となり[r]
辞退しようとしたものの、殿下はその指導力と[r]
国民からの人気と期待を買われ内閣総理大臣となった[p]



[chara_mod name="bg" storage="bg / I9IhvvVdPo / situmusitu.jpg "]
;【立ち絵】主人公 困り顔
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「まだ書類に[r]
[sp]お茶をお持ちしました。[r]
[sp]忙しくされているのは分りますが[r]
[sp]体をいといませんと」[p]

;【立ち絵】葛城宮 通常
「ああ、[r]
[sp]お茶を飲もう」[p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

;【立ち絵】主人公 怒り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「あなたと沢山歳を[r]
[sp]重ねましたね[r]
[sp]……この国も随分変わりました」[p]

;【立ち絵】葛城宮 通常
「だがまだ課題は多い[r]
[sp]次から次へと問題というのは起こるものだ」[p]

;【立ち絵】主人公 怒り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「でもあなたは[r]
[sp]克服してきましたし[r]
きっとこれからも大丈夫ですわ」[p]

;【立ち絵】葛城宮 ため息
「ありがとう」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、[r]
[sp]私たちはよりより明日を迎える[r]
ために努力しているのです」[p]

#
この十年間も激動の十年で大地震は[r]
起こり、首都は壊滅的だった[r]
でもひとは前に進む力を持ち、[r]
諦めなければきっと未来は開ける[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ー私たちは幸せになる為に生まれてきたのです」[p]

;【立ち絵】葛城宮 
「ああ、そうだな[r]
君がいてくれて良かった[r]
どれだけ君に救われただろうか」[p]

#
夫はしみじみと語る[r]
ー十年沢山の事を一緒に乗り越えてきた[r]
きっとこれからも乗り越えられる[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「私も貴方に支えられてきました
これからも支え合って生きていきましょう」[p]

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
