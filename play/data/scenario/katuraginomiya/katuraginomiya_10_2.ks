;６回目イベント　
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_10_2
[stopbgm]
[call target=*10_2 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公部屋昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen0
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「お嬢様……この記事をお読みください」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

#
磯野は、ゆっくりと[ruby text=ちん]沈[ruby text=うつ]鬱に新聞を差し出した。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
;【立ち絵】主人公 驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「これは！」[p]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=1000]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更　文章によっては調整した方がいいようですsc_2
[position left=150 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen1
[sp]内閣総辞職か！？[sp]過去最大の海軍の汚職事件 [r]
[r]
[sp]海軍高官が川氏物産を経由して[r]
[ruby text=ド]独[ruby text=イツ]逸兵器会社から兵器を[r]
購入する見返りとして川氏物産から[r]
多額の資金を受け取ったと海外で報道された。[r]
[r]
[sp]この件には次期首相とされる現海軍大臣今原中将が[r]
関与した。[r]
[sp]現首相も海軍出身である。[r]
[r]
[sp]現内閣への国民の反発は大きくなるだろう。[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
;復帰を別にすればいのよ!ひらめき
[playse storage=paper_open.ogg loop=false ]
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
[cm]
[イベント中テスト数値表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen2
#
[主人公憂い]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「葛城宮殿下も海軍大佐です。　少なからず影響があるやもしれません」[p]
[fadeoutbgm time=3000]

;【立ち絵】主人公　困り 
;[主人公憂い]同じ表情なので表示高速化のためにコメントへ（スクリプト担当_2
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、それに殿下は、現内閣の与党である党の一員よ。[r]
[sp]巻き込まれないといいのだけれど…… 心配だわ」[p]
[主人公退場]


;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字[テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】会議室（裏で画面構成）
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/kaigisitu.jpg" wait=true]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen3
同時刻[r]
[r]
 与党会議室[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更　ボタンなしで
[イベントシーン構築ボタン無し版枠茶色]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;!!!幕間に設定!!!!
;【立ち絵】葛城宮　怒り
[葛城宮ベース軍服]
[葛城宮怒り]
[wait time=10]
;表示
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen4
[whosay name="葛城宮　晴仁" color=%mp.color]
;【立ち絵】葛城宮　怒り　幕間に設定済
「今原中将、戦争をするつもりですか？[sp]貴方は首相の意思に背いている」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】一閃（緊迫シーンに
[playbgm storage="kinpaku_issen.ogg" loop=true]
[eval exp="f.bgm_storage='kinpaku_issen.ogg'"]
[endif]

[whosay name="今原中将" color=%mp.color]
「貴殿には関係のないことだ。[r]
[sp]高貴な血がながれているとはいえ、貴殿は若い。[r]
[sp]黙っておられるとよい」[p]

;【立ち絵】葛城宮　眉強気目閉じ
[葛城宮目伏]
[葛城宮口ムッ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「関係はあります！　内閣も巻き添えになり総辞職になるでしょう。[r]
;【立ち絵】葛城宮　怒り
[葛城宮怒り]
[sp]柏木元大将にそそのかされ、甘い汁を吸うために薄汚い真似を……。[r]
[sp]貴方は今すぐ全てを明らかにした上で辞職すべきだ！」[p]

[whosay name="今原中将" color=%mp.color]
「苦労知らずの青二才が！」[p]
;【SE】机（ドン）
[playse storage=tukue_don.ogg loop=false ]
「私は貴殿と違い、苦労してこの地位を手に入れた！[r]
[sp]国を守るためにも金や裏の繋がりが必要なんだ！[r]
[sp]そんなことも分らないのか！」[p]

;【立ち絵】葛城宮　怒り

;キャラが止まってるので目パチ（目大）
[葛城宮目パチ1回]

[whosay name="葛城宮　晴仁" color=%mp.color]
「それが本音か！[sp]軍の拡張はこれ以上は必要ない。[r]
[葛城宮口ムッ]
[葛城宮目伏]
[sp]軍は自国を守るためにあればいい。[r]
[sp]他国を侵略して得る豊かさは、後で痛い爪痕を残す！」[p]

[whosay name="今原中将" color=%mp.color]
「欧羅巴諸国は産業革命と植民地支配で豊かになった。[r]
[sp]我が国も見習うべきなのだよ！」[p]
[fadeoutbgm time=3000]
;【立ち絵】葛城宮　怒り
[葛城宮怒り]
[葛城宮眉怒り皺]
[whosay name="葛城宮　晴仁" color=%mp.color]
「開き直るな！[r]
[sp]植民地を手に入れずとも、豊かになることはできる。[r]
[sp]戦争など愚の骨頂だ」[p]
[葛城宮口ムッ]
[whosay name="今原中将" color=%mp.color]
「で？　なんだ？[sp]貴殿は国を豊かにできるのか？」[p]

;【立ち絵】葛城宮　憂い
[葛城宮憂い]
[whosay name="葛城宮　晴仁" color=%mp.color]
「っ……」[p]
#
侮蔑するような視線に言葉が詰まる。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
(私がこの党での存在意義は、国の制度に保守的な叔父宮の[r]
[sp]一派に対抗する為だ）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
*seen5
;【立ち絵】葛城宮　目閉じ眉困り
[葛城宮困り]
[whosay name="葛城宮　晴仁" color=%mp.color]
（また、皇族は国民からの人気を集めやすく、[r]
[sp]党の支持率は上がりやすいという理由もある。[r]
[葛城宮目閉じ]
[sp]私にまだ実績がなく皇族である事以外私に存在意義はない）[p]
[葛城宮目伏]

[whosay name="首相" color=%mp.color]
「二人ともその辺で……。[r]
[sp]だが明らかになった以上、対策を立てねばならない。[r]
[sp]今後は……」[p]
*seen6
#
[layopt layer=fix visible=false]
[image layer=29 x=0 y=0 storage="bg/anten.jpg" time=2000 visible=true]
[wait time=2000]
[葛城宮退場]
[wait time=10]
;メッセージ消去
[暗転]
[イベントシーン終了]
[stopbgm]
;暗く全体消えていく演出
[freeimage layer=29]
[wait time=10]
[layopt layer=fix visible=true]
[eval exp="sf.event_katuragi_10_2 = 1"]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]

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
