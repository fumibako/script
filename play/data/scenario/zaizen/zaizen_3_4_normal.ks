;normal/good回想機能から再生用タグです。ひとまず並べて書いていますが、テスト結果次第で調整予定です(回想未テスト
[setreplay name="replay_zaizen_3_4_normal_scene" storage="zaizen/zaizen_3_4_normal.ks" target="start"]
[setreplay name="replay_zaizen_3_4_good_scene" storage="zaizen/zaizen_3_4_good.ks" target="start"]
*start
;=============================================
;イベント10回目【財前母の誕生日パーティ】3月4週、
;=======================お芝居の準備中です==========================================
*replay_zaizen_3_4_normal
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[freeimage layer = 1]
[if exp="f.flag_replay == true"]
;[bg wait=true storage="toumei.gif" time=1]
[endif]
[stopbgm]
[call target=*3_4_normal storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true storage="../fgimage/bg/room_niwa.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]

#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
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
[財前ベース燕尾服]
[財前驚き]
移動します。[p]
[cm]
@jump target=*seen_nomal
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
[主人公ほほえみ]
;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様のお手紙の描き方が柔らかくなったわ）[p]
;【SE】紙に触れる（カサ）

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[if exp="tf.test_zaizen == true"]
@jump target=*fumi_zaizen
[endif]

*fumi_toutyaku_zaizen_32
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「母の誕生日パーティご招待」　財前 美彬";//←仮タイトルです(お好みで変更してください)
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「母の誕生日パーティご招待」";//←仮タイトルです(お好みで変更してください)
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi31");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(31);
f.fumi_list_zaizen_location_fumi.push(31);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi31");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[32]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_zaizen_number=f.fumi_zaizen_number + 1;
f.hensin_list_hairetsu[1][31]=1;
f.para_zaizen_koukando = f.para_zaizen_koukando + f.zaizen_koukando_up_event_fumi;
[endscript]
[endif]
*fumi_zaizen
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]拝啓　春草萌えいづる季節を迎え[r]
貴方におかれましては、いかがお過ごしですか？[r]
[r]
[sp]さて、暫く手紙を書けなかったことをまずは[r]
お詫びしましょうか。[r]
[sp]手紙を出せずにいる間も貴方から手紙を頂き[r]
貴方温かく感じられるようになりました。[r]
[sp]自分でも不思議な気分です。
[autosave]
[wait time=10]
[p]

;自動改ページされるので区切ります
[sp][r]
[sp]ところで三月二十五日ですが母から誕生日パーティの[r]
招待を受けました。[r]
[sp]仕事もひと段落つきましたし出席しようかと思います。[r]
そして母から貴方も連れて出席して欲しいと書かれてありました。[r]
いかがしましょうか？[r]
[r]
[sp]それでは返信をお待ちしております。[r]
[sp]浅春の折、穏やかにお過ごし下さい。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
[resetfont]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[1][31] = 0"]
[endif]
[手紙財前読了 fumi_number=]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[whosay name="磯野" color="dimgray"]
「お嬢様、入ってもよろしいでしょうか？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、準備は出来ています」[p]

;【SE】襖を開ける（ゆっくり）

[whosay name="磯野" color="dimgray"]
「お嬢様は、すっかり麗しい淑女となられて、私も鼻が高いです」[p]

#
磯野は感嘆したようにため息をつく。
[autosave]
[wait time=10]
[p]

自分自身でも立ち振る舞いが変わり、淑やかで流麗な動作が自然に出来る[r]
ようになったと感じる。[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。 これからも精進します。[r]
[sp]ところで、財前様は、まだかしら？」[p]

;急に真顔なのでゆっくりと変えます
[主人公目通常]

[whosay name="磯野" color="dimgray"]
「はい。　今、お着きになられましたので、お知らせにまいりました」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：微笑み
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ……ではいってまいります」[p]

;====================================================================================
;再構築に時間がかかるで退場しない
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２ storage="bg/bg_genkan.jpg" clegit=true]
;背景玄関
[bg wait=true storage="../fgimage/bg/bg_genkan.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=100]
;既に待っていた状態なので先に出しておくパーティ会場なので燕尾服
[財前ベース燕尾服]
[財前通常]
[暗転２終了]
[wait time=100]
;====================================================================================

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様。 お待たせしました」
[autosave]
[wait time=10]
[p]
#
そういって、私は、お辞儀をした。[p]

（親しき中にも礼儀ありだわ）[p]

;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(親しき中にも礼儀ありだわ)[p]心情ではない?

;【立ち絵】財前：通常
[財前驚き]
[whosay name="財前美彬" color="#7a65b2"]
「いや、そんなに待っていない。[r]
[sp]それにしても女性というのは、瞬く間に変わっていくものですね」
[autosave]
[wait time=10]
[p]

#
財前様は、ほう。と、感嘆するように私を見つめた。[r]
その途端、心に嬉しさが込み上げる。[p]

[財前口通常]
;【立ち絵】主人公：目伏せ微笑み頬染
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公頬染め]
[主人公眉下げ下]  
[主人公目伏]
「お恥ずかしゅうございます」[p]

[whosay name="財前美彬" color="#7a65b2"]
[財前目閉じ]
[財前頬染め]
「恥じらうこともないでしょう」[p]

[財前効果消]
;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
[財前微笑み]
「さあ、車にのって下さい」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：微笑み ひとまずコメントアウトのままに
;[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

;====================================================================================
;再構築に時間がかかるで退場しない
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　名無しさん１＠'"]
;[暗転２ storage="bg/test_zaizen_paty1.jpg" clegit=true]
[暗転２ storage="bg/zaizen_doitutaisikan.jpg" clegit=true]
;【背景】洋館パーティ会場
;[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg" time=50]
;【背景】独逸大使館パーティ会場
[bg wait=true storage="../fgimage/bg/zaizen_doitutaisikan.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
[暗転２終了]
[wait time=100]
;====================================================================================

;[主人公ポーズ通常]
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name="財前母"]
「まあ！[r]
[sp]アルベルト、[名前]さん、よく来てくれたわ」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「招待を感謝します独逸大使夫人。[r]
[sp]いえ、意地になるのは止めます……母上」
[財前微笑み]
[p]
[whosay name="財前母"]
「……ありがとうアルベルト。[r]
[sp]今日は内輪だけのパーティにしてあるので、[r]
[sp][名前]さんも、ゆっくり楽しんでいって下さいね」[p]

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、私もお招き頂いて光栄です」
[autosave]
[wait time=10]
[p]
[主人公目閉じ]
（財前様のお母様なら恋愛についてご相談にのって下さるかしら）[p]
#
私は財前様のお母様に尋ねた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公憂い]
「あの……少し相談したい事がありますが、よろしいでしょうか？」
[autosave]
[wait time=10]
[p]

[whosay name="財前母"]
「ええ、構いません。 どんなことですか？」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「後で、二人で話してもよろしいでしょうか？」[p]

[whosay name="財前母"]
「よろしいですよ」[p]

;【立ち絵】財前： 通常
[whosay name="財前美彬" color="#7a65b2"]
[財前目大]
「一体何の話ですか？」[p]

;【立ち絵】主人公：目伏せ頬染
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公頬染め]
「秘密です」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
「そうですか……まあ構いません。[r]
[sp]母上は今お手すきのようだし、話してくるといい」
[autosave]
[wait time=10]
[p]

;[財前退場] 案内される前に消えていくパターン１

;[主人公通常]
[whosay name="財前母"]
「ええ、　こちらに[名前]さん」[p]
[fadeoutbgm time=3000]
;====================================================================================
;再構築に時間がかかるで退場しない　財前さんだけ退場
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[暗転２ storage="bg/I9IhvvVdPo/zaizen_paty_ousetu.jpg" clegit=true]
[財前退場] 
;案内される姿を見守ったパターン２　こちらにします。
[bg wait=true storage="../fgimage/bg/I9IhvvVdPo/zaizen_paty_ousetu.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/I9IhvvVdPo/zaizen_paty_ousetu.jpg"]
[暗転２終了]
;====================================================================================
#
私はパーティ会場から少し離れた、応接室に通された。
[autosave]
[wait time=10]
[p]

[whosay name="財前母"]
「[名前]さん が私に相談なんて嬉しいわ！[r]
[sp]どんな相談なのかしら？」[p]

;【立ち絵】主人公：真剣
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……恋とはどんなものですか？[r]
[sp]私、財前様に鬱陶しがられるのは嫌なのですが[r]
[sp]嫉妬したり苦しくなったり、自分が分らないんです！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[whosay name="財前母"]
「貴方はアルベルトに恋している[r]
[sp]……恋は気づいたら落ちているものよ」
[autosave]
[wait time=10]
[p]

[主人公目伏]
「アルベルトは、恋愛を望まなかったと聞くわ。[r]
[sp]……私の所為ね」[p]

[whosay name="財前母"]
「でもね。今は、貴方には優しい一面を見せるように[r]
[sp]なったのではなくて？[r]
[sp]貴方にだけ、優しい目をしているわ」[p]

;【立ち絵】主人公：真剣 
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それはただ単に[r]
[sp]心を許してくれただけではないのですか？」
[autosave]
[wait time=10]
[p]

[whosay name="財前母"]
「それだけではないと思うわ」[p]

;【立ち絵】主人公：真剣 
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、[r]
[sp]財前様は最初に"恋愛を期待しないでほしい"と[ruby text=おっしゃ]仰っていました」
[autosave]
[wait time=10]
[p]

[主人公目伏]
「でも、私は財前様に 私だけを見て欲しい と[r]
[sp]思ってしまうのです」[p]

;【立ち絵】主人公：目伏せ悲しみ
[主人公憂い]
「胸が苦しいぐらいに……」[p]

[whosay name="財前母"]
「それなら伝えてみたらどうかしら？[r]
[sp]アルベルトも貴方に心を許している。[r]
[sp]それは、貴方も分っている」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目伏せ悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも拒絶されるのが怖いのです。[r]
[sp]苦しくて、もうどうしていいか分りません」[p]

[whosay name="財前母"]
「でも、その気持ちから逃げないで。[r]
[sp]怖くても自分に正直になって」[p]

;四行なので分けます

「[名前]さん勇気をだしていってごらんなさい。[r]
[sp]今のままでは貴方も苦しいでしょう？」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目閉じ
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ええ」[p]

（拒絶されるのが怖いけれど、このままでいるのが[r]
[sp]苦しくて辛い）[p]

[主人公目伏]
「……告白いたしますわ」[p]

[whosay name="財前母"]
「頑張ってね」
[autosave]
[wait time=10]
[p]

[暗転１]
#
私は、不安と期待が入りまじった気持ちでパーティ会場に戻った。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（胸が高鳴って仕方がないわ）[p]
;====================================================================================
;再構築に時間がかかるで退場しない
;明るいシーンになっていくので暗転ではなく背景で
[eval exp="f.haikei_credit='photo　by　名無しさん１＠'"]
;[暗転２ storage="bg/test_zaizen_paty1.jpg" clegit=true]
[暗転２ storage="bg/zaizen_doitutaisikan.jpg" clegit=true]
;【背景】洋館パーティ会場
;[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg" time=50]
;【背景】独逸大使館パーティ会場
[bg wait=true storage="../fgimage/bg/zaizen_doitutaisikan.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
;[主人公通常]
;心情の表情設定↑　その後驚きで
[暗転２終了]
[wait time=100]
;====================================================================================

;【立ち絵】主人公：驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公効果消]
[主人公驚]
「あれは！」[p]
#
目を向けた先には、財前様と美しい女性が優雅にダンスを踊っていた。
[autosave]
[wait time=10]
[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……胸が痛くて苦しいわ）[p]

#
私が茫然としていると、周囲の人たちから噂話が聞こえてきた。
[autosave]
[wait time=10]
[p]

[whosay name="パーティ客男性"]
「ほう……お似合いですなあ。[r]
[sp]外務大臣の御令嬢、[ruby text=すみ]澄 玲子様と、[ruby text=こ]此[ruby text=たび]度の恐慌で活躍した、[r]
[sp]財前美彬殿か」[p]

[whosay name="パーティ客女性"]
「本当にお似合いですわね。 お[ruby text=ふた]二[ruby text=り]人ともまだ独身じゃなかったかしら。[r]
[sp]これは……もしかしたら」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様は私の婚約者なのに……）
[autosave]
[wait time=10]
[p]

#
醜く、どす黒い感情がわき上がる。[p]
;====================================================================================
;再構築に時間がかかるで退場しない　　
;一時的に暗いシーンなので暗転から
[暗転２]
;【背景】雪柳
[eval exp="f.haikei_credit='　'"]
[bg wait=true storage="../fgimage/bg/zaizen_yukiyanagi.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
[表示準備 storage="bg/zaizen_yukiyanagi.jpg"]
[主人公涙]
[暗転２終了]
[wait time=100]
;====================================================================================
#
私は思わず逃げだしていた。[p]
広い庭でこっそり、白い花の咲く雪柳の下に私はうずくまると[r]
涙をこらえるように口を押えた。
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：片手を口にやり目伏せ悲しみ
[主人公憂い]
[主人公涙]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ああ、なんて胸が苦しいの。[r]
[sp]ただ、財前様が女性と踊っていただけなのに）[p]
#
;====================
;【立ち絵】財前：驚
[財前ベース燕尾服]
[財前驚き]
[表示開始 time=300]
[wait time=300]
;====================

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「やっと見つけましたよ。[sp]一体どうしたというのです」
[autosave]
[wait time=10]
[p]
;====================================================================================　
;一瞬、裏背景（黒）がみえるのがいやですが。スクリプト担当２
;【背景】パーティ会場庭
[bg wait=true storage="../fgimage/bg/zaizen_paty_niwa.jpg" time=1000]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg" time=1000]
;====================================================================================　
;【立ち絵】主人公：目伏せ悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公効果消]
[主人公目閉じ]
[主人公涙_目閉用]
[主人公眉困り]
「近づかないで下さい！ 今、私はひどい顔をしています、[r]
[sp]もう少ししたら落ち着きますから、そっとしてください！」[p]

#
自分でもわかるほど、みっともないほど声が震えて、[r]
今にも泣きそうなほどだ。
[autosave]
[wait time=10]
[p]

いえ、涙は[ruby text=にじ]滲んでいた。[p]

;【立ち絵】財前：驚
[whosay name="財前美彬" color="#7a65b2"]
「……どうしたというのですか？」[p]
[財前口通常]
[fadeoutbgm time=3000]
[主人公効果消]
[主人公ポーズ通常]
#
財前様のお母様の声が、胸をよぎる。
[autosave]
[wait time=10]
[p]

――勇気をだしてごらんなさい。[p]
[主人公憂い]
私は、意を決して立ち上がって言った。[p]

*seen_nomal
;====================================================================================
;【背景】雪柳
[bg wait=true storage="../fgimage/bg/zaizen_yukiyanagi.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_yukiyanagi.jpg"]
;====================================================================================
;【立ち絵】主人公：悲しみ
[主人公頬染め]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「貴方が他の誰かと踊ってるだけで、胸がこんなにも痛くなりますの。[r]
[主人公口通常]
[sp]私、貴方に恋をしてしまったようです」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]


;【立ち絵】主人公：目閉じ
[主人公目閉]
「私は、財前様が好きです。[r]
[sp]財前様は……私の気持ちを受け止めてくれますか？」[p]
[主人公口通常]
#
私は、精一杯の勇気を振り絞って言った。[r]
けれど、その声は霞むように震えてしまっていた。
[autosave]
[wait time=10]
[p]
[財前目伏]
[財前頬染め]
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん……」[p]
#
財前様は私に近づく。[p]
[財前目閉じ]
;====================================================================================
;メッセージウィンドウ消去から復帰時の顔グラをoffにします
[eval exp="f.kaogura = 'off'"]
[eval exp="f.haikei_credit=''"]
[暗転２ storage="bg/zaizen_CGnomal.jpg" clegit=true]
[財前退場]
[主人公退場]
;【背景】ノーマルエンドCG
[bg wait=true storage="../fgimage/bg/zaizen_CGnomal.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_CGnomal.jpg"]
;◆CGモード用に画像を登録
[cg storage="zaizen_CGnomal.jpg"]

;[主人公驚]
[p]
[暗転２終了]
;額にキスCG（財前目閉じ主人公驚き）
;====================================================================================

#
私は驚いて目を見開いた。[r]
一瞬だったかもしれないけれど、長く感じられた。
[autosave]
[wait time=10]
[p]

言葉のでない私に財前様は言った。[p]

;[主人公口通常]
;[主人公眉下げ下]
;[主人公目伏]
;[主人公頬染め]
#
本当に貴方はかわいらしい方ですね。[r]
いや、それだけではない。　私を惑わす悪い方です。[p]

;【背景】ノーマルエンドCG
[bg wait=true storage="../fgimage/bg/zaizen_CGnomal_2.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_CGnomal_2.jpg" time=0]
そう、耳に囁かれて私は真っ赤になった。[p]
;CG終わり
;メッセージウィンドウ消去から復帰時の顔グラをonに戻します
[eval exp="f.kaogura = 'on'"]
;normalここまで
*bunki_to_good_or_other
;◆goodED条件を満たす場合、goodへ
[if exp="f.okeiko_gamen == true && (f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_c'])) && ( f.para_shujinkou_j_reihou >= f.zaizen_reihou_good) && f.para_shujinkou_shukujodo >= 80"]
[暗転２ storage=bg/zaizen_paty_niwa.jpg]
;【背景】パーティ会場庭
[bg wait=true storage="../fgimage/bg/zaizen_paty_niwa.jpg" time=1000]
[wait time=10]
;[chara_mod name="bg" storage="bg/zaizen_paty_niwa.jpg" time=1000]
[財前ベース燕尾服]
[財前通常]
[主人公ポーズ通常]
[主人公通常]
[主人公伏目]
[主人公眉下げ下]
[主人公頬染め]
[暗転２終了]
@jump storage="zaizen/zaizen_3_4_good.ks" target="*seen_1"
[endif]
;====================================================================================
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image name=end layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
;一瞬裏がみえるの防止背景
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=50]
;===============================================================
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
[主人公退場]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]

[イベントシーン終了]

[if exp="f.flag_replay == true"]
@layopt layer=29 visible=true
[iscript]
$('.1_fore').empty();
[endscript]
@layopt layer=1 visible=true
[endif]

;↓ifからだしておいてください↓
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

;◆normalED終了処理へ
[if exp="f.okeiko_gamen == true"]
;財前ルートをクリアした
[eval exp="tf.ED_zaizen = 1"]
;tweet表示
[call storage="sijyou/01_tweet.ks"]

[財前ルート終了 end="normal"]

@jump storage="event.ks" target=*event_ED
[endif]


@jump storage="test_zaizen.ks"
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
