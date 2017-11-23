;=============================================
;イベント【主人公奮闘する】１２月2週
;=======================お芝居の準備中です==========================================
*replay_zaizen_12_2
[stopbgm]
[call target=*12_2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公真剣]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
;【立ち絵】主人公：真剣
#
私は、金融関係の本や新聞を沢山集めて読んだ。
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]

これで読んだ本は[ruby text=はっ]八[ruby text=さつ]冊目。[r]
専門用語もあり、読み解くのには時間がかかった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]

[whosay name="磯野"]
「お嬢様、お疲れ様です。[r]
[sp]失礼ながら、現状を知っても、どうにもならないことも[r]
[sp]ございますよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「それでも財前様が立ち向かっているのです。[r]
[sp]何か私にもできる事があるかもしれません……」
[autosave]
[wait time=10]
[p]

[whosay name="磯野"]
「財前様にお手紙を書かれるだけで十分です」[p]
[主人公眉通常]
[主人公目伏]
「銀行は今、国民から敵視されています。[r]
[sp]この状態が続くなら、当家は少し距離を置くことに[r]
[sp]なるかもしれません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「それはどういう意味ですか？」
[autosave]
[wait time=10]
[p]
[whosay name="磯野"]
「婚約を考え直すことになるかもしれない、という意味です」[p]

[主人公憂い]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野！[r]
[sp]こんな大変な時に悪い冗談は止めて下さい！」[p]

[whosay name="磯野"]
「冗談ではありません。　お嬢様の為です。[r]
[sp]もし好転しなければ当家にまで害が及ぶこともあります」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
[主人公眉強気]
[主人公目閉]
「そんなことをしたら私、磯野を許せませんわ」[p]

[whosay name="磯野"]
「正論ですが、[r]
[sp]庶民の生活というのはお嬢様が思っているより悪いものでございます。[r]
[sp]加えて、教養がある者も少ないのです」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
「では磯野の知っている事を教えてください」[p]

「磯野は家令として沢山の知識を知っています。[r]
[sp]磯野は現状をどう見ているのですか？」[p]

#
磯野は驚いた顔をしたけれど、すぐに暖かな微笑みを浮かべた。[p]

[whosay name="磯野"]
「分りました、[r]
[sp]少し長い話になりますがよろしいでしょうか」
[autosave]
[wait time=10]
[p]

「お嬢様がこれだけ努力されているのです……私も考えてみましょう」[p]

[fadeoutbgm time=3000]
;時間経過
#
[暗転１]
[主人公目閉]
私は、磯野に庶民の暮らしと、国の銀行の成り立ち、[r]
その営業の仕組みについて意見を聞き、話し合った。[p]

[if exp="f.okeiko_gamen != true"]
;テストモード
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]

@jump storage="zaizen/zaizen_12_2_2.ks" target=*seen1
[endif]

[if exp="f.okeiko_gamen == true && f.para_zaizen_koukando > 70"]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]

@jump storage="zaizen/zaizen_12_2_2.ks" target=*seen1
[endif]

[イベントシーン終了]
;=================================================================================================
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
@jump storage="test_zaizen.ks"
[s]
