;６回目イベント
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]

[whosay name=磯野 color="dimgray"]
「お嬢様……この記事をお読みください」[p]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
＃
磯野はゆっくりと沈鬱に新聞を差し出した[p]

;【立ち絵】主人公 驚き
「これは！」
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[新聞]

[font color=navy size=21]

[sp] 内閣解散か！？過去最大の海軍の汚職事件 [r]
[r]
[sp] 海軍高官が川氏物産を経由してドイツ兵器会社から兵器を[r]
発注する見返りとして川氏物産から多額の資金を受け取ったと[r]
海外メディアで報道された。[r]
[r]
[sp]  資金を受け取った海軍高官の中には[r]
次期首相とされる現海軍大臣今原中将が[r]
関与したとも書かれ現首相も海軍出身である。[r]
[r]
現内閣への国民の反発は大きくなるだろう。[p]
[r]
[r]
[resetfont]

[whosay name=磯野 color="dimgray"]
「葛城宮殿下も海軍大佐です[r]
少なからず影響があるやもしれません。」[p]

;【立ち絵】主人公　困り
「ええ、それに殿下は[r]
[sp]現内閣の与党である党の一員よ[r]
[sp]巻き込まれないといいのだけれど[r]
[sp]…… 心配だわ。」[p]


背景会議室
;【立ち絵】葛城宮　怒り
「どういうことですか今原中将！」[p]

＃今原中将
「貴殿には関係のないことだ[r]
[sp] 高貴な血がながれているとはいえ[r]
[sp] 貴殿は若い黙っておられるとよい」[p]

;【立ち絵】葛城宮　怒り
「関係は大いにあります、[r]
[sp] 海外の報道メディアも我が国の報道メディアも[r]
[sp] 全て明らかにするだろう[r]
[sp] 内閣総辞職になるのは目に見えている[r]
[sp] その前にあなたが責任を取って[r]
[sp] 全てを明らかにした上辞職して責任を取るべきだ」[p]

＃今原中将
「苦労知らずの青二才が！[r]
[sp] 私が今の地位に上りつめるのに[r]
[sp] どれほど苦労したと思っている[r]
[sp] 国を守るためにもにも[r]
[sp] 金や裏の繋がりが必要なんだ[r]
[sp] そんなことも分らないのか！」[p]

;【立ち絵】葛城宮　怒り
「それが本音か！　[r]
[sp] 軍の拡張はこれ以上は必要ない[r]
[sp] 軍は自国を守るためにあればいい[r]
[sp] 他国を侵略して得る豊かさは後で痛い爪痕を残す！　」[p]

＃今原中将
「ヨーロッパ諸国は産業革命と[r]
[sp] 植民地を手に入れることで[r]
[sp] 豊かになったのだよ！ 　違うか？　」[p]

;【立ち絵】葛城宮　怒り
「開き直るな！　[r]
[sp] 植民地を手に入れずとも[r]
[sp] 物質的に豊かになることはできる」[p]

＃今原中将
「で？　なんだ？　[r]
[sp] お前は何にもなしに国を豊かにできるのか？　」[p]

;【立ち絵】葛城宮　怒り
「っ……」[p]

#
[sp] (まるで侮蔑するような視線に言葉が詰まる[r]
私がこの党にすんなり入れたのは[r]
国の制度に保守的な叔父宮の一派に対抗する為だ[r]
また皇族は国民からの人気を集めやすく
党の支持率は上がりやすいという理由で
あることは気づいていた[r]
ある程度の発言か許されているもの[r]
私が皇族であるからというところが大きい[r]
私にはまださしたる実績がない[r]
首相は私の意見を聞いているが[r]
他からは軽んじられていることを改めて痛感する)[p]

＃首相
「２人ともその辺で[r]
[sp] だが明らかになった以上[r]
[sp] 対策を立てねばならない[r]
[sp] 今後は……」[p]
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
