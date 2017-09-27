;========================================================
;イベント8回目【散策イベント1】9月4週、
;========================================================
*replay_hujieda_9_4
[stopbgm]
[call target=*9_4 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】:町並み
;背景は、サブルーチンを読んでから(callの後)だと安全
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=30]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;最大全角３１文字×４行
;========================ここからお芝居の幕が開きます================================
#
日曜日である今日は、町は一層、にぎやかだ。[p]
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name="三宮　時子" color="#c25232"]
「まあ[名前]さん、お久しぶりね！　今日も散策されてるの？」[p]


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


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「時子さん！　お久しぶりです！[r]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[sp]行きたい場所があるのです……その、ピアノの演奏が聴ける[r]
[sp]ミルクホールがどこにあるかご存じですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ピアノ？　それでしたら、私の知る限りでは、二か所ですわね……」[p]
;キーワードを目立たせる
「ここから二駅先の駅前にある ミルクホール月ノ光 、[r]
[sp]もう一軒は、 ミルクホールオアシス ですわ！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
[主人公口開]
「二軒のミルクホールのピアニストについて、御存知ですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
[主人公口通常]
「ピアニスト？[sp]なぜそのような事を……？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌てる
[主人公目大]
[主人公汗]
[主人公口開]
「そ……その、[r]
[sp]素敵なピアノを聴きたいと思いまして！」[p]

#
時子さんは不思議そうにしていたけれど、何かを察したように優しく微笑んだ。[p]

[whosay name="三宮　時子" color="#c25232"]
[主人公口通常]
「[名前]さん、お手紙を止められてお稽古を熱心にされているという[r]
[sp]お噂をお聞きして、芸術にでも目覚められたのかと思っていました[r]
[sp]が、まるで恋をされているような表情ですわ」[p]
;ました」[p]一度切った方が　恋をしている　が印象的?
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：困り
[主人公困り]
[主人公口通常]
「恋などと、そんなやましい事は……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（ただお会いしてみたい。[r]
[sp]……この気持ちが憧れが恋なのかはわからないわ）[p]

[whosay name="三宮　時子" color="#c25232"]
「何かあるのですね……[r]
[sp]けれど、いじめる気はありません、[r]
[sp]私もピアニストまでは詳しくは知りませんし」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
[主人公困り]
「そうなのですか」[p]

[whosay name="三宮　時子" color="#c25232"]
「……ああ、でも一人だけ有名ですわね。[r]
[sp]爵位返上した藤枝家の御子息が、ピアノを弾かれている、[r]
[sp]日曜日のミルクホールは、予約を入れないと入れないほどとか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「え！」[p]
（藤枝家！　もしかして）[p]

;【立ち絵】主人公：主人公照れ目普通
[主人公照れ目普通]
[主人公口開]
「そのミルクホールは、どちらなのですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
[主人公口ほほえみ]
「"ミルクホール月ノ光"ですわ。[r]
[sp][名前]さん、藤枝家の御子息をご存じなの？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌てほほ染
[主人公驚]
[主人公頬染め]
「す……少し知り合う機会があっただけです！」[p]

[whosay name="三宮　時子" color="#c25232"]
「そうですの、[r]
[sp]でも深入りは良くないと思いますわ」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ思案
[主人公口通常]
[主人公目閉じ]
[主人公眉下げ下]
「良くないですか。[r]
[sp]……それでも知りたいと思うときがあるのです」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、まさかとは思いますが[r]
[sp]藤枝家の御子息の事を……その、お慕いして[r]
[sp]いらっしゃるの？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せほほ染
[主人公目伏]
「それは、まだわかりませんけれど[r]
[sp]藤枝様にお稽古の事を励まされました。[r]
[sp]藤枝様の事を考えると心が温かくなるのです」[p]

[whosay name="三宮　時子" color="#c25232"]
「……お気持ちは少し分ります。[r]
[sp]何かあれば相談にのりますわ。 私は[名前]さんの親友ですのよ」[p]

[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（時子さん……まさか）[p]

[主人公眉下げ下]
[主人公目伏]
[主人公口通常]
「時子さん、お慕いされる方がいらっしゃるの？」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、ずっとお慕いしている方がいますの。[r]
[sp]ですから[名前]さんの気持ちが本物の恋なら、その成就を[r]
[sp]見てみたいと思いますわ」[p]

#
見た事のないほど切なげな顔をする時子さんの表情から[r]
私は彼女の恋する気持ちの激しさが[ruby text=うかが]窺えた。[p]

;【立ち絵】主人公：微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……そうなのですか。[sp]まだ私の気持ちはわかりませんが、[r]
[sp]私も時子さんの力になりたいと思います」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、また機会があれば……長い話になりますわ。[r]
[sp]そろそろ私は失礼します。[sp]この後、予定がありますの」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「時子さん、ありがとうございます。 とても心強いですわ！」[p]

#
そして私と時子さんは、挨拶を交わして、その場を後にした。[p]


[er]
;==============================================================================
[layopt layer=fix visible=false]
[eval exp="f.haikei_credit='illustration by ◆I9IhvvVdPo editing by＠名無しさん１'"]
[表示準備 storage="bg/I9IhvvVdPo/mirukuho-ru2.jpg" layer=29]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/mirukuho-ru2.jpg" time=50]
[wait time=10]
[主人公通常]
[freeimage layer=29 time=200]
[wait time=200]
;ふわっと表示依頼
[layopt layer=fix visible=true]
;==============================================================================
*seen_miruku
;背景指定
#
[ruby text=ふた]二駅先の駅前に着くとピアノの音がしたので[r]
その音を頼りに歩くと、"ミルクホール月ノ光"の看板が目に入った。[p]

;==============================================================================
;看板
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/mirukuho-ru3.jpg" time=1200]
[wait time=10]
[eval exp="f.haikei_credit='illustration by ◆I9IhvvVdPo editing by＠名無しさん１'"]
;==============================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ
[主人公眉下げ下]
[主人公伏目]
[主人公頬染め]
（良くないけれどあの方が、奏でる音を知りたかったの）[p]
;==============================================================================
;【背景】窓
[eval exp="f.haikei_credit='illustration by ＠名無しさん１'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/mirukuho_ru4.jpg" time=1000]
[wait time=10]
;【アニメイメージ】キラキラ透過素材 layer=1
[image name="oto" storage="bg/B4nFWraU42/bg_hujieda_kirakira.png" layer=1 time=1000 left=-300 visible=true]
[wait time=10]
;==============================================================================
;背景窓　
#
そっと窓に近づくと、繊細で美しい音色が、私の胸を打つ。
[wait time=1000]
[p]
;==============================================================================
;アニメ中にセーブさせない
[layopt layer=fix visible=false]
;【アニメ】音の奔流アニメ 右に移動left　速さtime 消える
[anim name="oto" left="+=800" time=7000 opacity=0]
[wait time=10]
;==============================================================================
;【立ち絵】主人公：驚き
[主人公驚]
（すごいわ！[r]
[sp]ピアノの響きの奔流に圧倒されてしまうわ。[r]
[sp]それになんて綺麗で繊細な音を奏でてるのかしら）
[wait time=3000]
[p]
;==============================================================================
[wa]
;念のためにアニメ消去
[stopanim name=oto]
[iscript]
$('.oto').remove();
[endscript]
;セーブボタン解除
[layopt layer=fix visible=true]
[wait time=10]
;窓から見た白っぽいミルクホール_ピアノ
[eval exp="f.haikei_credit=''"]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_fujieda_piano_0.jpg" time=1000]
[wait time=10]
;jｓYiJｃｑRkkさんのピアノ画像、立ち絵表示あり
[表示準備 storage="bg/bg_fujieda_piano_0.jpg" layer=13]
;==============================================================================
#
[主人公口通常]
一曲が終わると演奏者に送られる盛大な拍手が聞こえてくる。[p]
;[SE拍手]
[playse storage=hakushu.ogg loop=false ]

;========ふわっと表示============
;【立ち絵】藤枝 微笑み
[藤枝ベース私服]
[藤枝微笑み]
[freeimage layer=13 time=300]
[wait time=300]
;================================
#
ガラス越しからは、花束を渡される演奏者が見えた。[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ思案
[主人公眉下げ下]
[主人公伏目]
「私も藤枝様にお花とお手紙を渡せたらいいのに」[p]
#
[藤枝退場準備 storage="bg/bg_fujieda_piano_0.jpg" time=300]
[wait time=10]
;==============================================================================
;窓
[eval exp="f.haikei_credit='illustration by ＠名無しさん１'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/mirukuho_ru4.jpg" time=1000]
[wait time=10]
;==============================================================================
[fadeoutbgm time=3000]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ハッとする
[主人公効果消]
[主人公驚]
（お兄様が来月帰ってこられるわ。[r]
[sp]お兄様にミルクホールへ行きたいと、お願いできないかしら）[p]

#
[主人公憂い]
けれど浮き立った気持ちは、[r]
自制心と時子さんの言葉が胸によみがえり沈んでいく。[p]


[whosay name="三宮　時子" color="#c25232"]
"――深入りは良くないと思いますわ"[r]
"―― 気持ちが本物の恋なら、その成就を見てみたいと思いますわ"[p]

#
本物の恋ではないかもしれない。[p]

――ただ[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
（切なく胸がうずくの、少しでもいい）[p]
[主人公目閉]
（――[ruby text="いち"]一度きりでいい、 お会いしたい）[p]

*seen_end

#
;次のイベントにでてしまう名前残りを消去

[eval exp="sf.event_hujieda_9_4 = 1"]

[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_hujieda.ks"
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
