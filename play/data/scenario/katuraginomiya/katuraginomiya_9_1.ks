;4回目イベント　葛城宮の好感度が一番高い、一定の淑女度　
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公伏目]
[主人公眉下げ下]
[主人公伏目パチ1回]

[whosay name=磯野 color="dimgray"]
「お嬢様、
文矢様からの手紙が届いております」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ええ、ありがとう」[p]

#
磯野から手紙を受け取り、[r]
お兄様からの手紙を読んだ[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙文矢 fumi_number=]
[名前]へ[l][r]
拝啓[r]
[sp] そちらは風がススキに揺れる涼しい頃でしょうか？[r]
[sp][名前] は穏やかに過ごしていますか？ [r]
[sp] こちらの仕事もひと段落落ち着き、[r]
僕達夫婦も元気に過ごしています。[r]
[r]
[sp] 先日、父からの手紙を読み、[r]
[名前]が、親王様に見初められ、[r]
婚約者候補としてあげられた事を知りました。[r]
[sp] あのお転婆だった[名前] もすっかり一人前の淑女に[r]
なったとも書かれてあり驚きを隠せません。[r]
[r]
[sp] また[名前] が嫁ぐ前に会いたいと思っています。[r]
[r]
[sp] まだ候補だと聞きましたが[名前]が親王妃となる[r]
のでしょうか？[r]
[sp] 恐れ多く、誉れ高いことですがとても苦労すると[r]
思ってしまします。[r]
[sp]父や磯野ともよく相談して決めてるといいでしょう。[r]
皆、[名前]の意思を尊重してくれると思います。[r]
[r]
[sp]それでは皆が健やかに過ごせることを祈っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　鷹司　文矢 [p]
[手紙読了]

[whosay name=磯野 color="dimgray"]
「文也様はお元気にされていますか？」[p]

#
磯野は懐かしそうに微笑んだ[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、元気に過ごしていると書かれているわ[r]
それにしても内容はここ数日悩んでいる事でした」[r]
（皆心配してくれているのね）[p]

#
そして私は文箱にお兄様の手紙仕舞い、[r]
ここ数日読み返した手紙を手に取って再び読んだ[r]
……私の心は決まりつつある[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[r]
[sp]拝呈　初秋の候　[名前]殿にはお変わりなく[r]
元気でいるだろうか？[r]
[r]
[sp]先日のお茶事からそうたってないが[r]
君が正式に皇室で認められたことで周囲の者たちが[r]
色めき立ち正式な婚約者を決めようという事になった[r]
[r]
[sp]私は君と正式に婚約したいと思っている[r]
[sp]だが君はどうだろうか？　[r]
[r]
[sp]勿論私は君に無理意地はしたくない[r]
[sp]重要な事なので君も周囲の者たちと[r]
よく話し合って決めてくれるとよい[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[sp]　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]



;【立ち絵】主人公 通常　
選択肢　葛城宮と　婚約する意思を固める
　　　　　　　　　婚約しない

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「磯野、お父様に[r]
[sp]今日時間がある時にお話しがしたいと伝えて下さい」[p]

[whosay name=磯野 color="dimgray"]
「かしこまりました[r]
[sp]お話しとはやはり葛城宮殿下の事で[r]
[sp]ございますか？」[p]

;【立ち絵】主人公 主人公照れ目普通
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
[主人公頬染め]
「ええ、心が決まりました、[r]
[sp]皆、そして私の意思を尊重[r]
[sp]してくれる事も感謝しています[r]
[sp]殿下と婚約いたしますわ」[p]

[whosay name=磯野 color="dimgray"]
「！お嬢様がお決めになったことは[r]
[sp]私は反対いたしませんが、[r]
[sp]苦労されることをご承知の上ですね？」[p]

;【立ち絵】主人公 目閉じ
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、身分が高くなるのは[r]
[sp]それだけ自由がなくなる事も承知の上です」[p]
[主人公通常]
[主人公口開]
「ましてや殿下は周囲の反対を押し切って[r]
[sp]新しいことをされようとしているわ[r]
[sp]うまくいかないときのほうが多いでしょう[r]
[sp]けれど殿下をお支えしたいのです」[p]
[主人公口通常]

[whosay name=磯野 color="dimgray"]
「念のためお聞きしますが、[r]
ここ数日悩んでいらっしゃいましたが[r]
もう迷いはないのですか？」[p]

[主人公伏目]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「勿論、色々な事を考えましたわ[r]
お父様にもご迷惑がかかったりしないかとか、[r]
私が宮中でうまくやっていけるかとか、[r]
けれど強くて優しい殿下と一緒になりたいと想ったのです」[p]

[whosay name=磯野 color="dimgray"]
「いつのまにか[r]
[sp]お嬢様も一人前になりましたね。[r]
[sp]それでは旦那様にお伝えしに参ります」[p]

;【テキスト全画面】黒茶・和紙風背景に白文字
 [テキスト全画面白文字]
 
数刻後[p]
[resetfont]


;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jp" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「話があると聞いた[r]
[sp]話してごらんなさい。」[p]

;【立ち絵】主人公 真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、私は葛城宮殿下と[r]
[sp]正式に婚約したく思っていますお許し頂けますか？」[r]
（きっと許してもらえるけれど[r]
[sp]反対されるかも知れない）[p]

#
期待と不安が入り混じった[r]
私の眼差しを受けて[r]
お父様は思案するように目を閉じた[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「お前は我が家の誉だ[r]
[sp]恐れ多くも親王様の婚約者候補に[r]
[sp]なれるとは思っていなかった」[p]

#
お父様の言葉に期待に胸が膨らむ[p]

;【立ち絵】主人公 驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
[主人公目パチ1回]
「お父さまそれでは！」[p]

#
お父様は寂しそうで不安な表情になった[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「だが葛城宮殿下の身分は高く、身分の違いは[r]
[sp]お前を不幸にするかもしれない[r]
[sp]我が家にも気軽に帰れることはないだろう[r]
[sp][名前]はそれでもいいのかね？」[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、けれど自由がなくなることも生まれ育ったこの家に[r]
[sp]帰れなくなることも承知の上です。[r]
[sp]私は殿下の事をお慕いしております！[r]
[sp]殿下のもとに嫁ぐともう心に決めました」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか……それでは反対すまい[r]
[sp]葛城宮殿下は同じく貴族院に入っている[r]
[sp]叔父宮と度々衝突していると聞く[r]
[sp]心しておきなさい」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公眉下げ下]
[主人公頬染め]
[主人公口ほほえみ]
「お父さま！　[r]
[sp]ありがとうございます[r]
[sp]忠告も心に留めておきます」[p]

#
そしてお父様は優しく笑ってくれた[p]
[stopbgm]
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
