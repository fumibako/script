;=============================================
;イベント8回目【散策イベント1】9月4週、
;=============================================
;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]

#
日曜日である今日は[r]
町は一層にぎやかだ[p]

[stopbgm]

;【BGM】筍の訪れ(町
[whosay name="三宮　時子" color="#c25232"]
「まあ[名前]さんお久しぶりね！　[r]
[sp] 今日も散策されてるの？　」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
「時子さん！　お久しぶりです！　[r]
[sp] 行きたい場所はあるのですが、[r]
[sp] 時子さんはピアノの演奏が聴ける[r]
[sp] ミルクホールがどこかご存じですか？　」[p]

[whosay name="三宮　時子" color="#c25232"]
「ピアノ？　それでしたら[r]
[sp] 私の知る限りでは２か所です[r]
[sp] ここから２駅先の駅前にあるミルクホール月ノ光、[r]
[sp] もう一軒はミルクホールオアシスですわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
「その２軒のピアニストについて[r]
[sp] 御存じないでしょうか？　」[p]

[whosay name="三宮　時子" color="#c25232"]
「なぜですの？　」[p]

;【立ち絵】主人公：慌てる
「そ……その[r]
[sp] 素敵なピアノを聴きたいと思いまして！　」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前] さん何か隠されてませんか？　[r]
[sp] 秘め事の１つや２つある方が魅力的ですけどね[r]
[sp] お手紙止められてお稽古に熱心にしているという噂を[r]
[sp] お聞きしたけれど芸術にでも目覚められたの？　」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌てる
「秘め事などとそんなやましい事は……」[p]

[whosay name="三宮　時子" color="#c25232"]
「何かあるのですね……[r]
[sp] けれどいじめる気はありません、[r]
[sp] 私もピアニストまでは詳しくは知りませんし」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
「そうなのですか」[p]

[whosay name="三宮　時子" color="#c25232"]
「……ああでも一人だけ有名ですわね[r]
[sp] 爵位返上した藤枝家の御子息が[r]
[sp] ピアノを弾かれている日曜日のミルクホールは[r]
[sp] 予約を入れないと入れないほどとか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
「え！　」[p]
（藤枝家！　もしかして）[p]

;【立ち絵】主人公：真剣
「そのミルクホールはどちらなのですか？　」[p]

[whosay name="三宮　時子" color="#c25232"]
「ミルクホール月ノ光ですわ
[sp] [名前] さん藤枝御子息をご存じなの？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌てほほ染
「す……少し知り合う機会があっただけです！　」[p]

[whosay name="三宮　時子" color="#c25232"]
「そうですの、[r]
[sp] でも深入りは良くないと思いますわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ思案
「良くないですか。[p]
?[sp] ……それでも知りたいと思うときがあるのです」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前] さんまさかとは思いますが[r]
藤枝家の御子息の事を……そのお慕いしてるの？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せほほ染
「それはまだわかりませんけれど[r]
?[sp] 藤枝様にお稽古の事を励まされました[r]
[sp] 藤枝様の事を考えると心が温かくなるのです」[p]

[whosay name="三宮　時子" color="#c25232"]
「何か相談があればのりますわ[r]
[sp] ?私は[名前] さんの親友ですもの！　」[p]

;【立ち絵】主人公：微笑み
「時子さんありがとうございます！　[r]
[sp] それでは時子さんごきげんよう」[p]

[stopbgm]
;背景: [レトロな喫茶店]

＃
２駅先の駅前に着くとピアノの音がしたので
その音を頼りに歩いたら
ミルクホール月ノ光の看板が目に入った

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ
（良くないけれどあの方が奏でる音を知りたかったの）[r]


;【立ち絵】主人公：驚き
（すごいわ！　[r]
[sp] ピアノの音の響きの奔流に圧倒されてしまう。[r]
[sp] それになんて綺麗で繊細な音を奏でてるのかしら）[p]

＃
一曲が終わって盛大な拍手が送られ[r]
遠目のガラス越しに花が渡されるのが見える[p]

;【立ち絵】主人公：目伏せ思案
「私も藤枝様にお花とお手紙を渡せたらいいのに」[p]

;【立ち絵】主人公：ハッとする
「お兄様が来月帰ってこられるわ[r]
[sp] お兄様にミルクホールへ行きたいと[r]
[sp] お願いできないかしら」[p]

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
