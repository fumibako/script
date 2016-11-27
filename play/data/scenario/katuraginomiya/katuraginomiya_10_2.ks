;６回目イベント
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_2 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】主人公部屋昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「お嬢様……この記事をお読みください」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

#
磯野はゆっくりと沈鬱に新聞を差し出した。[p]

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
[image layer=29 x=1 y=1 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp]内閣総辞職か！？[sp]過去最大の海軍の汚職事件 [r]
[r]
[sp]海軍高官が川氏物産を経由して[r]
ドイツ兵器会社から兵器を[r]
発注する見返りとして川氏物産から[r]
多額の資金を受け取ったと[r]
海外メディアで報道された。[r]
[r]
[sp] 資金を受け取った海軍高官の中には[r]
次期首相とされる現海軍大臣今原中将が[r]
関与したとも書かれ[r]
現首相も海軍出身である。[r]
[r]
現内閣への国民の反発は大きくなるだろう。[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
;復帰を別にすればいのよ!ひらめき
[playse storage=paper_open.ogg loop=false ]
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
#
[主人公憂い]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「葛城宮殿下も海軍大佐です。[r]
[sp]少なからず影響があるやもしれません」[p]
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
[image layer=29 x=1 y=1 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】会議室（裏で画面構成）
[chara_mod name="bg" storage="bg/I9IhvvVdPo/kaigisitu.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
同時刻[r]
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
;表示
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name="葛城宮　晴仁" color=%mp.color]
;【立ち絵】葛城宮　怒り　幕間に設定済
「どういうことですか今原中将！」[p]
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
「関係は大いにあります、各報道メディアも全て明らかにするだろう」[p]
;【立ち絵】葛城宮　怒り
[葛城宮怒り]
「内閣総辞職になるのは目に見えている。[r]
[sp]その前にあなたが責任を取って、全てを明らかにした上、[r]
[sp]辞職して責任を取るべきだ」[p]

[whosay name="今原中将" color=%mp.color]
「苦労知らずの青二才が！」[p]
「私は貴殿と違い、苦労してこの地位を手に入れた！[r]
[sp]国を守るためにもにも金や裏の繋がりが必要なんだ[r]
[sp]そんなことも分らないのか！」[p]

;【立ち絵】葛城宮　怒り
;==========
;キャラが止まってるので目パチ（目大）
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
;==========
[whosay name="葛城宮　晴仁" color=%mp.color]
「それが本音か！[r]
[sp]軍の拡張はこれ以上は必要ない」[p]
[葛城宮口ムッ]
[葛城宮目伏]
「軍は自国を守るためにあればいい[r]
[sp]他国を侵略して得る豊かさは、後で痛い爪痕を残す！」[p]

[whosay name="今原中将" color=%mp.color]
「欧羅巴は諸国は産業革命と植民地を手に入れることで[r]
[sp]豊かになったのだよ！　違うか？」[p]
[fadeoutbgm time=3000]
;【立ち絵】葛城宮　怒り
[葛城宮怒り]
[whosay name="葛城宮　晴仁" color=%mp.color]
「開き直るな！[r]
[sp]植民地を手に入れずとも、物質的に豊かになることはできる」[p]
[葛城宮口ムッ]
[whosay name="今原中将" color=%mp.color]
「で？　なんだ？[r]
[sp]お前は何にもなしに国を豊かにできるのか？」[p]

;【立ち絵】葛城宮　怒り
[葛城宮憂い]
[whosay name="葛城宮　晴仁" color=%mp.color]
「っ……」[p]
#
侮蔑するような視線に言葉が詰まる。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
(私がこの党に入れたのは、国の制度に保守的な叔父宮の[r]
[sp]一派に対抗する為だ）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]

;【立ち絵】葛城宮　目閉じ眉困り
[葛城宮困り]
[whosay name="葛城宮　晴仁" color=%mp.color]
（また、皇族は国民からの人気を集めやすく、[r]
[sp]党の支持率は上がりやすいという理由もある)[p]
[葛城宮目閉じ]
(ある程度の発言か許されているもの私が皇族であるからだ。[r]
[sp]私にまだ実績がなく皇族である事以外私に存在意義はない）[p]
[葛城宮目伏]

[whosay name="首相" color=%mp.color]
「２人ともその辺で[r]
[sp]だが明らかになった以上、対策を立てねばならない。[r]
[sp]今後は……」[p]
#
[layopt layer=fix visible=false]
[image layer=29 x=1 y=1 storage="bg/anten.jpg" time=2000 visible=true]
[葛城宮退場]
[wait time=10]
;メッセージ消去
[暗転]
[イベントシーン終了]
[stopbgm]
;暗く全体消えていく演出
[freeimage layer=29]

;@jump storage="event.ks" target=*event_owari

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
