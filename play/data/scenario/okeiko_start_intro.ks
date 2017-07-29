*intro
;【背景】黒背景（和紙風の黒っぽい背景）全画面テキスト
[bg wait=true storage="../fgimage/bg/bg_prologue_dark.jpg" time=100]
[wait time=10]
@layopt layer=message0 page=fore visible = true
[wait time=10]
[current layer="message0"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=10]
[font color=white size=27]
[wait time=30]
【磯野】[r]
「お嬢様。本日よりお稽古には[r]
[sp]こちらのお部屋をお使いいただきます。[l]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】夕涼み（お稽古）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[wait time=10]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
;↓初回のBGMをスマホ対応位置(クリック後)で鳴らしお稽古本編のBGMタグをスルーする目的でf.skip_sentaku変数を使用します
[eval exp="f.skip_sentaku = 1"]
[endif]

[r]
[r]
[sp]より集中してお稽古に取り組めるよう[r]
[sp]旦那様からのお計らいでございます」[p]
[r]
[r]
【[emb exp="sf.girl_namae"]】[r]
「お部屋をいただけるなんて」[p]
[r]
[sp]　　　　　　気持ちも新たに[r]
[r]
[r]
[sp]　　　　　　お稽古に励もう――。[p]
[resetfont]
;背景変更:主人公邸_お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko_main.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]
@jump storage="okeiko.ks" target=*okeiko_main
