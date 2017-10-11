*replay_sijyou_10_1
*start
;¥¥¥¥¥¥¥¥イベント☆障害のはじまり 心の暗闇 手紙が帰ってこなくなる¥¥¥¥¥¥¥
[stopbgm]
;暗転プリロードサブルーチン
[call target=*10_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;使用背景:[背景_庭]　[四条玄関][chara_mod name="bg" storage="bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
;/////////////////////////////////////////////////////
;【背景】ヒロインの部屋
[freeimage layer = 1]
[wait time=10]
[背景_庭]
[イベントシーン構築ボタン無し版]
;まだ深刻ではない
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;信じようと悩み無理をしている表情
*seen0
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=======================================================================
[主人公伏目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（最近、お手紙の内容の繋がりが、おかしいと思っていたら）[p]
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
;------------------------------------------------------

[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ついにお手紙が、来なくなってしまいました）[p]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、今日のお手紙に四条家からの手紙はありまして？」[p]
[whosay name="磯野" color="dimgray"]
「ございませんよ」[p]
[whosay name="磯野" color="dimgray"]
「本日のお手紙は、デパートからのお知らせが届いているくらいです」[p]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、お父様から何かきいているかしら？」[p]
[whosay name="磯野" color="dimgray"]
「とくには」[p]
[主人公目閉じ]
;目を閉じて悩み考える表情へ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[whosay name="磯野" color="dimgray"]
「お嬢様、」[p]
;はじめの表情へ
[whosay name="磯野" color="dimgray"]
「四条家とは旧知の仲」[p]
[whosay name="磯野" color="dimgray"]
「御連絡も無しに御婚約を破棄されることは、ないと思います」[p]
;存じます　との指摘　ですが分かりにくいので、そのままに
*seen1
#
;一旦主人公を表示なしにする
[主人公退場]
[eval exp="f.kaogura!='off'"]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[bg storage="toumei.gif" time=1000]

[テキスト全画面白文字]
一方、そのころ四条邸では――。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
[背景_四条玄関]
;[chara_mod name="bg" storage="bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
;[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]

[イベントシーン構築枠茶色]
[call target=*start storage="macro_tati_sijyou.ks"]
;○四条の苦悩シーン
[whosay name="四条母" color="#9B608B"]
「[華衣]！ 勝手に手紙を捨てるのはやめて頂戴！」[p]
[autosave]
[whosay name="四条 華衣" color=%mp.color]
「うるさい！ 華織のせいであの人が死んだんだ！」[p]
[whosay name="四条祖父" color="#888898"]
「お前さんには、もっと良い相手を見繕ってくる！」[p]
[whosay name="四条祖父" color="#888898"]
「だから[名字]家の手紙を返すんだ！」[p]
[whosay name="四条 華衣" color=%mp.color]
「いやだっ！」[p]
[whosay name="四条祖父" color="#888898"]
「この分からず屋が！！」[p]
;【SE】ビンタ（バチン）
[playse storage=binta.ogg loop=false ]
[wait time=100]
;わずかに揺れるくらいでいい
[quake count=1 time=100 hmax=5 vmax=5]
[wait time=10]
@layopt layer=13 visible=true
[image layer=13 name="jyunbi" storage="bg/B4nFWraU42/bg_sijyou_genkan_hole.jpg" time=10]
[whosay name="四条祖父" color="#888898"]
「！？」[p]
*seen3
;【登場】四条
[四条ベース着物]
[四条通常]
;[四条口ムッ]
[四条ビンタ]
;ビンタエモありがとうございます。疲れてるとマゾのコメントにみえる！
[freeimage layer=13 time=1000]
[wait time=1000]
@layopt layer=13 visible=true
[whosay name="四条祖父" color="#888898"]
「華織……なんで」[p]
[autosave]
;【音楽フェード停止】
[fadeoutbgm time=3000]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「[華衣]を、叱らないであげて下さい、[r]
;【SE】衣擦れ（スッ）体勢を立て直している？
[playse storage=kinuzure.ogg loop=false ]
[sp]僕が悪いのですから」[p]
;【SE】足音(小走り
[playse storage=girl_out_run.ogg loop=false ]
[whosay name="四条母" color="#9B608B"]
「[華衣]！ どこ行くの？！」[p]
#
;=========================================================
[暗転２]
[eval exp="f.kaogura!='off'"]
;【退場】四条
[四条退場]
;☆障害の解決案、 第二ターニング・ポイント（主人公が解決策を見出す）
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]
;【背景】主人公部屋　夕方はないので昼
[背景_庭]
[四条イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[主人公困り]
[eval exp="f.kaogura!='on'"]
[暗転２終了]
[四条ボタン表示]
;===============================================================
*seen4

[whosay name=&sf.girl_namae color="#cf5a7f"]
[wait time=10]

[主人公目閉じ]
（どうしましょう）[p]
[autosave]
[whosay name="磯野" color="dimgray"]
「お嬢様。 文矢様にお手紙を書かれてはいかがでしょうか？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]


[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ」[p]
[whosay name="磯野" color="dimgray"]
「文矢様から、四条様のことで何かございましたら[r]
[sp]相談するようにと言いつかっておりまして」
[p]
[主人公伏目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お兄様に恋の相談なんて、気恥ずかしいですが……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今はそんなことを考えている場合では、ないですよね）[p]
;○四条家の日常をみてプレイヤーが同調する形
[主人公通常]
*seen5
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、ありがとう。さっそくお手紙を書いてみます」[p]
[autosave]
*seen_end
#
[eval exp="sf.event_sijyou_10_1=1"]
;ここでイベントは区切り バッドが必要であれば、文矢から「話をしてみたけどダメだったよ」という返事に。イベントバッドへ追記
;¥¥¥¥¥¥¥¥イベント5おわり¥¥¥¥¥¥¥¥
[fadeoutbgm time=3000]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

[イベントシーン終了]
@jump storage="test_sijyou.ks"
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
