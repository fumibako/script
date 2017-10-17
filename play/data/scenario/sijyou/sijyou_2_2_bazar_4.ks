*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン
[call target=*2_2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[暗転]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
テストページから開始します。 ルートを選択してください。[p]
[link target=yes_biteer]幸代と会うver[endlink][r][r]
[link target=no_biteer]幸代と会わないver[endlink][s]
*yes_biteer
[er]
幸代と会うシナリオ回収ルートです[p]
[eval exp="f.bitter_rute = 1"]
@jump target="*scene1"
*no_biteer
[er]
四条とのシーンを楽しむルートです[p]
;====================================================
*scene1
;全画面表示
@layopt layer=fix visible=false
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=1 storage="bg/bg_prologue.jpg" time=300]
[四条_顔up_退場]
[暗転]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
しばらくの間、昼食を頂きながら、話し合った。[p]
;その後も慈善バザー会場の隣室で行われた書画展覧会で華織様と私は書画を楽しみ、日本の美術について話を重ねた。
;------------------------------------------------
[image name="yuugata" layer=29 x=0 y=0 zindex=0 storage="bg/B4nFWraU42/bg_cyarity6_1.jpg" time=900]
[iscript]
var fil ={"filter":"brightness(78%) sepia(42%) hue-rotate(330deg)" , "webkit-filter":"brightness(78%) sepia(42%) hue-rotate(330deg)"};
$(".yuugata").css(fil);
[endscript]
[wait time=50]
夕方に近づく頃――。[r]
華族会館の周りでは、ダンスパーティーの知らせを[r]
聞いてか、[r]
紳士淑女を乗せた馬車や車の音が賑やかになってくる。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=300]
[wait time=50]
私達も、貴賓室で身だしなみを整えた後、[r]
二階のダンスホールへと向かった。[p]
[背景_チャリティ会場ダンスホール]
;------------------------------------------------
[image name="syande" layer=29 x=0 y=0 zindex=0 storage="bg/bg_syanderia.jpg" time=500]
[iscript]
$('.syande').css({'filter':'brightness(0.5)','-webkit-filter':'brightness(0.5)','-moz-filter':'brightness(0.5)','-ms-filter':'brightness(0.5)'});
[endscript]
[wait time=100]
シャンデリアの煌めきを放つホール。[r]
洋城のような大テラス窓が、憧れの世界にいる事を[r]
感じさせる。[p]
流行りのローブデコルテ、[r]
[ruby text=けん]絢[ruby text=らん]爛[ruby text=ごう]豪[ruby text=か]華な
振袖を夜会服として身に[ruby text=まと]纏う淑女達。[r]
紳士達も、美しい装いをし、[r]
寄り添うように彼女達の手を取る。[p]
[ruby text=ホー]広[ruby text=ル]間の脇では音楽隊が優雅な曲を[ruby text=かな]奏ではじめ、[r]
集まった人々は徐々に円を描くように[r]
ダンスに加わっていく。[p]
;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
[current layer="message0"]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;------------------------------------------------

;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]

[iscript]
$(".29_fore").empty();
[endscript]

[表示準備 storage=&f.src]
[四条_隣_ベース羽織]
;[四条_隣_眉下げ]
[chara_mod name="sijyou_tonari_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
;[四条_隣_目伏2]
[chara_mod name="sijyou_tonari_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条_隣_口微笑み]
[chara_mod name="sijyou_tonari_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[表示開始 time=300]

;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「さあ、お手をどうぞ――」[p]
[autosave]
華織様が私の目を見ながら手を差し伸べる。
;(る。→た後、)
[r]
;[四条_隣_目にこ]
[chara_mod name="sijyou_tonari_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
戸惑う私の手を華織様は優しい笑顔で待ってくださった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;眉困り　目大　口微笑み　照れ
（ずっと夢に[ruby text=えが]描いていたことが現実になったの？[r]
[sp]華織様が目の前にいらっしゃるのに[r]
[sp]私、まだ信じられないわ……）[p]
#
目を合わせるのも怖くなるほどに、夢の様な出来事に[r]
私の手は震えてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「はい……」[p]
#
私は、勇気を出して、愛する人の手に自らの手を重ねた。[p]
;------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
（大丈夫。[sp]お稽古通りにステップを踏めばいいの)[p]
;ステップは漢字に変更できない　大正的ではない
;------------------------------------
[暗転２ storage="bg/bg_syanderia.jpg"]
[四条_隣_退場]
;【背景】シャンデリア　実際にダンスで動かせないので想像で補ってもらう　仮背景
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_syanderia.jpg" time=50]
[eval exp="f.haikei_credit=''"]
[暗転２終了]
;------------------------------------
#
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[ruby text=ワル]円[ruby text=ツ]舞の円に加わり、[ruby text=リズ]拍[ruby text=ム]子を取り始める。[p]
回るたびに振袖の[ruby text=たもと]袂が蝶のようにひらめき、[r]
自身が華麗な大人の世界の一員になったのかと思えた。[p]
;のかさえ思えた
;洋装バージョン 回るたびにドレスの裾が花のようにひらめき
[whosay name="華織" color="olivedrab"]
「上手ですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「ありがとうございます。[sp]華織様もお上手です。[r]
[sp]こういった場所に来られたことがあるのでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「一度だけあります。[r]
[sp]ですが僕のような世辞が苦手な者が[r]
[sp]お邪魔したところで、誰かを楽しませることもできませんよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「そんな、私は楽しいですわ。[r]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[sp]華織様といて楽しいと思えない方なんて、[r]
[sp]きっと、おりませんわ」[p]
[whosay name="華織" color="olivedrab"]
「ありがとうございます。[r]
[sp]ですが僕は、これでも芸術家なので、[r]
[sp]美しいものを美しいとしか言えないです」[p]
#
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
華織様は目を伏せた後、自身の細く硬い指で私の指を絡めとる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「華織様……？」[p]
#
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
胸の鼓動がひとつ高鳴った瞬間、[r]
華織様は、真剣な表情をして低いお声で呟かれた。[p]
[whosay name="華織" color="olivedrab"]
「自分に嘘を付くのが、少々苦手なのです」[p]

[whosay name="華織" color="olivedrab"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「ですから今、[r]
[sp]僕は美しい花のような[名前]さんと[ruby text=ワル]円[ruby text=ツ]舞を踊れて、[r]
[sp]夢のような時間だと思います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
「華織様……」[p]
[autosave]
;セリフ思いつかないので名前で
;感想
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
(今日という日を忘れないわ)[p]
#
*scene2
;-----------------------------------
;全画面表示
@layopt layer=fix visible=false
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
[背景_チャリティ会場ダンスホール]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;-----------------------------------
円舞曲が終わった後、しばしの休憩時間に入る。[r]
[r]
周囲は新たな出会いや旧交を温める為、[r]
社交界の慣わしに勤しんだ。[p]
;一方の私達は、？  熱気→ほてった身体を？
私達は、空いた柱に寄り、[r]
熱気を帯びた身体を冷ます為に休憩をとった。[p]
;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
[背景_チャリティ会場ダンスホール]
[四条サイズ通常_羽織]
;[四条眉下げ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[freeimage layer=29]

;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
@layopt layer=fix visible=true
[fadeoutbgm time=3000]
;-------------------------------------------------
*scene3
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なんて楽しい時間なのかしら！ [r]
[sp]大人達がダンスに興じるのも少し分かったかもしれないわ)[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[whosay name="華織" color="olivedrab"]
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「[名前]さん、暑くなってきましたね。[r]
[sp]何か飲み物を頼みましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「ええ、そうですね」[p]
#
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
華織様と話をしていると[r]
華やかな雰囲気をもった妙齢の女性が話しかけてきた。[p]
;華織様！と読んだ方がいいのか
[autosave]
[whosay name="？？？"]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
「あら、四条様！」[p]
[whosay name="華織" color="olivedrab"]
[四条目パチ1回]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_ake.png" time=0]
[wait time=10]
「森永夫人。 お元気でしたか？」[p]
[whosay name="森永夫人"]
;[四条眉下げ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
「ええ。[sp]お兄様から御内約されたとお聞きしておりましたが[r]
[sp]本当でしたのね！[r]
[sp]おめでとうございます。[sp]とても嬉しいことですわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どなたかしら？)
[主人公目パチ1回]
[p]
#
私が森永夫人と呼ばれた女性について気になっていると、[r]
すかさず華織様が互いの紹介を始めた。[p]
;知人=四条兄の元手紙の相手。 婚約しようとしたしたが上手くいかず。華織より二歳年上
[whosay name="華織" color="olivedrab"]
;[四条目伏2]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
「[名前]さん、こちらは兄の知人の森永様です。[r]
[sp]森永夫人、お聞きされていると思いますが、[r]
[sp]僕の婚約者の[名字]家の[名前]さんです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「[名前]と申します」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name="森永夫人"]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「私は森永と申します。[r]
[sp]華織様のお兄様の知人といった所ですわ。[r]
[sp][名字]様は、お可愛い方だこと。[sp]華織様はお幸せね！」[p]
[whosay name="華織" color="olivedrab"]
「ありがとうございます」[p]
#
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
私も華織様に寄り添って、小さくお辞儀をした。[p]
[whosay name="森永夫人"]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「前見た時もよりも華織様は、お兄様のような華やかさが[r]
[sp]増した気がいたしますわ。[r]
[主人公目パチ1回]
[sp]ところで、華織様。[sp]今日は、お兄様と御一緒かしら？」[p]
[whosay name="華織" color="olivedrab"]
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
「いえ。　今日は、兄は来ておりません……」[p]
[whosay name="森永夫人"]
[主人公目パチ1回]
「もう、あの方ってば海外に行ってからは……」[p]
#
森永夫人は、何やら華織様のお兄様とは、やや[ruby text=ひと]一[ruby text=もん]悶[ruby text=ちゃく]着あったかの様子で、[r]
昔話をし始めだす。[p]
;因縁があった様子で？
何かを感じ取った華織様は私を気遣い、小さな声で謝った。[p]
[whosay name="華織" color="olivedrab"]
「申し訳ございませんが[名前]さん。[r]
;[四条目伏2]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
[sp]混み入った話になりそうなので、少しお待ち頂いても[r]
[sp]よろしいでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
（少しお待ちしましょう。[r]
[sp]これも夫人となったらお勤めの[ruby text=ひと]一つになるでしょう)[p]
#
[四条退場準備 storage=&f.src time=100]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：おちょぼ口 [主人公口ふぅ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
（それにしても踊った後だからか、喉が[ruby text=かわ]渇いてきたわ)[p]
[autosave]
#
私の様子に気付いたのか、[r]
[主人公通常]
気の良さそうな[ruby text=ボー]給[ruby text=イ]仕が飲料を乗せた[ruby text=トレイ]盆を手にして側に立った。[p]
;注文を尋ねに来た…？ 注文を取りに来た？ 近づいた？ 近くに寄った？
[fadeoutbgm time=3000]
[whosay name="給仕"]
「奥様、お飲物はいかがでしょうか？」[p]
*scene4
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢 セーブできるように それほど重要ではない感を 親戚のことを話している場合のみ表示　
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[if exp="f.bitter_rute != 1"]
@jump target=sweet_rute
[endif]
#
私は
;背景変更:和紙風 桜色
[bg name="bg1" storage="../fgimage/bg/plane_sakura.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;マクロが読み込まれていないときにクリックするとマクロの中身に飛んだりするwaitする
[wait time=50]
[link target=*sweet_rute_0]頂く[endlink][r]
[r][r][r]
[link storage="sijyou/sijyou_2_2_bazar_5a.ks" target=*bitter_rute]遠慮しておいた[endlink][r]
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_rute_0
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_チャリティ会場ダンスホール]
頂くことにした。
[autosave]
[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_rute
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「頂きましょう」[p]
[whosay name="給仕"]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「どうぞ。[sp]では失礼します」[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;給仕が立ち去るのを横目で見ながら？
甘い[ruby text=フ]果[ruby text=ルー]物[ruby text=テ]のよ[ruby text=ィー]うな香りが漂う飲み物を手にし、喉を[ruby text=うるお]潤す。[p]
身体の熱気は、落ち着かなかったが、一気に不思議な爽快感が増してきた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】めでたく候（お正月などめでたいシーンに
[playbgm storage="oshougatsu_medetaku.ogg" loop=true]
[eval exp="f.bgm_storage='oshougatsu_medetaku.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（ふう。[sp]なんだか、とてもフワフワしてきたわ）[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
間も無くして、音楽隊が演奏を再開しはじめる。[r]
落ち着かない高揚感が湧き上がり、[r]
もう一度ダンスで味わった華やぐ焦燥を求めてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
（もう一度、華織様と踊りたい気分……。[r]
[wait time=1000]
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[sp]でも、はしゃぎ過ぎると失敗しそうだわ）[p]

[表示準備 storage=&f.src]
[四条_隣_ベース羽織]
;[四条_隣_眉下げ]
[chara_mod name="sijyou_tonari_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
;[四条_隣_目伏2]
[chara_mod name="sijyou_tonari_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条_隣_口微笑み]
[chara_mod name="sijyou_tonari_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[表示開始 time=300]

[whosay name="華織" color="olivedrab"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「[名前]さん、お待たせしました。[r]
[wait time=10]
;[四条_隣_眉困り]
[chara_mod name="sijyou_tonari_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[sp]？[sp]顔が少し赤いようですが……休憩室に行きましょうか？」
[autosave]
[p]
#
私は
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢 セーブできるように それほど重要ではない感を
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
;四条のみ隠す　退場はしない
[表示準備 storage="bg/plane_sakura.jpg"]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=sweet_1]もう一度、踊る[endlink][r]
[r][r][r]
[link target=sweet_2]休憩室に行く[endlink][r]
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_2
[er]
[fadeoutbgm time=3000]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[四条_隣_退場]
[四条サイズ通常_羽織]
[四条憂い]
;[四条目伏2]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[表示開始 time=300]
休憩室に行くことにした。
[autosave]
[p]
@jump storage="sijyou/sijyou_2_2_bazar_5.ks" target="scene1"
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_1
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[表示開始 time=300]

もう一度、踊ることにした。
[autosave]
[p]
;------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「大丈夫ですわ。[sp]ねえ、華織様。[r]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[sp]宜しければ、もう一曲、お相手して下さりませんか？」[p]
[whosay name="華織" color="olivedrab"]
「僕は勿論、嬉しいのですが……。[r]
[sp][名前]さん、本当にお体の調子は、大丈夫なのでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「大丈夫ですわ。[sp]今は華織様と、もっと踊りたい気分です」[p]
[whosay name="華織" color="olivedrab"]
「そうですか？ [r]
[sp]……では、いきましょうか」[p]
[四条_隣_退場]
#
曲の合間をみて、私達は[ruby text=ホー]広[ruby text=ル]場の円舞に滑り込んだ。[p]
;------------------------------------
*scene5
;【背景】シャンデリア　実際にダンスで動かせないので想像で補ってもらう　仮背景
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_syanderia.jpg" time=50]

;キツイ内容でしょうか
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「ダンスって、とても楽しいのですね」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん？」[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
華織様の手を軽やかに取り、ターンステップを踏む。[p]
#
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
すると、[r]
目に飛び込んだ隣のローブデコルテを着た女性が、[r]
男性に抱かれて華やかに大胆にターンを繰り出していた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
（私も、もっと大胆にターンをしてみたいわ)[p]
[whosay name="華織" color="olivedrab"]
「！」[p]
;【SE】ザッ(衣擦れ)
[playse storage=za_kinuzure.ogg loop=false ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[quake count=3 time=250 hmax=10 vmax=10]
#
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
しかし、[r]
同じようにターンをしてしまったところ、[r]
後ろの男性客に着物の[ruby text=たもと]袂がぶつかってしまった。[p]
;洋装バージョン  [ruby text=ひるがえ]翻ったドレスの裾がぶっかってしまった。
[whosay name="男性"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「おっと……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;↓効果：汗 [主人公汗]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
「ごめんなさい、きゃっ」[p]
[quake count=3 time=250 hmax=10 vmax=10]
[whosay name="女性"]
「きゃぁっ」[p]
[fadeoutbgm time=3000]
#
一人の男性を主軸にして、[ruby text=ホー]広[ruby text=ル]間の円舞がパタパタと乱れ、[r]
静まり返っていく。[p]
#
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
観客は、その原因は誰かと視線を泳がせ始めた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
（ど、どうしましょう！？)[p]
#
ふいに、何故だかお稽古の先生の声が脳裏に響く。[p]
 
[whosay name="お稽古の先生"]
――[名前]さん、振袖でのターンは小降りに。[sp]足の動きを計算しつくして。 [r]
[sp]そうでないの、違うわ。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;洋装バージョン
;――[名前]さん、華麗にターンは回るのはいいけれど、周りもよく注意しなさい。
;そうでないの、そこは違うわ。

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓口：小さく開けた状態。発言時などに… [主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「あ……」[p]
#
辺りの呆然とした雰囲気に[r]
今までの努力が水の泡に消えていくような気がした。[p]

[whosay name="華織" color="olivedrab"]
「[名前]さん、こちらに行きましょう」[p]
#
華織様が守るように私を庇おうとする。[r]
それが、とても居たたまれない。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓効果：涙にじむ(目閉用[主人公涙_目閉用]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_toji.png" time=0]
[wait time=10]
「ごめんなさい！」[p]
#
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
私は、恥ずかしさと悔しさのあまり、[ruby text=ホー]広[ruby text=ル]間を抜け出した。[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*scene6
[背景_チャリティ会場回廊]
#
回廊の柱にもたれると、私は顔を[ruby text=おお]覆い隠した。[p]
[autosave]
[主人公ポーズ両手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(はしゃぎすぎてしまったわ……どうしてこんな事を？)[p]
#
恥ずかしさで涙を[ruby text=こぼ]零すと、[r]
隣の[ruby text=ホー]広[ruby text=ル]間から、楽しげな楽曲が流れ始める。[p]
#
自身の悲しみと周囲の楽しさの落差があまりにも違いすぎて、[r]
場違いな気持ちが、より一層、高まってしまった。[p]

[whosay name="華織" color="olivedrab"]
「[名前]さん、ここにいらしたのですね」[p]
[fadeoutbgm time=3000]
#
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓効果：涙ポロリ[主人公涙流]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_nagare.png" time=0]
[wait time=10]
涙を抑え、顔を見せる。[r]
[主人公ポーズ通常]

[表示準備 storage=&f.src]
[四条_隣_ベース羽織]
;[四条_隣_眉困り]
[chara_mod name="sijyou_tonari_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条_隣_目伏2]
[chara_mod name="sijyou_tonari_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条_隣_口微笑み]
[chara_mod name="sijyou_tonari_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[表示開始 time=300]


そこには華織様が、私を心配そうに見つめ立っていた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓効果：涙にじむ(目閉用[主人公涙_目閉用]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_toji.png" time=0]
[wait time=10]
「ごめんなさい。[sp]私、今日の日をとても楽しみしていたのに」[p]
[whosay name="華織" color="olivedrab"]
「お気になさらずとも、こういったことはよくある事です」[p]
[whosay name="華織" color="olivedrab"] 
「ですが僕も少し浮かれてました。[r]
[sp]もっと上手く[名前]さんをリードすべきでした」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
;目閉じ泣き 恥ずかし悔しい
[whosay name="華織" color="olivedrab"] 
 「今は、ここでゆっくり休んで下さい」[p]
#
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓効果：涙にじむ[主人公涙]
[chara_mod name="girl_emo" storage="girl/S/emo_namida.png" time=0]
[wait time=10]
華織様は、私の肩を抱くと優しく包み込んだ。[p]
;驚き泣き→柔和泣き
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「今度はもっと上手くできるでしょうか……？」[p]
[whosay name="華織" color="olivedrab"] 
「ええ、上手くできるでしょう。[sp]実際、僕も驚きました」[p]

[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_tonari_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
「ですが、当分は僕の前だけで踊ってほしいです」
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：大きく開けた状態 [主人公口大]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]
「私が上手く踊れないからですか？」
[chara_mod name="sijyou_tonari_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[p]
;【SE】花火(打ち上げ：中)
[playse storage=hanabi_utiage_m.ogg loop=false ]
#
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
恥ずかしさに打ち震えていると、光とともに大きな音が鳴り響いた。
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[p]
;-------------------------------------------------------
[暗転２ storage="bg/sijyou_hanabi2_1.jpg"]
@layopt layer=fix visible=false
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
驚いて見上げれば、大輪の花火が陰った空を[r]
煌びやかに照らしていた。[p]
;【SE】花火(打ち上げ：小)
[playse storage=hanabi_utiage_s.ogg loop=false ]

[四条_隣_退場]
【華織】[r]
「違いますよ。[r]
[sp]今日の[名前]さんはとても美しくて、[r]
[sp]あの花火のように、[r]
[sp]他の方の視線を引いてしまったようなのです」[r]
[r]
【[emb exp="sf.girl_namae"]】[r]
「華織様……？」[p]
;驚き照れ
どうしてか騒がしいはずの花火の音が聞こえず、[r]
華織様の胸の鼓動だけが鳴り響く――。[p]
;------------------------------------------------
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]

[四条_顔up_ベース羽織]
;[四条_顔up_眉困り]
[chara_mod name="sijyou_up_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条_顔up_目伏2]
[chara_mod name="sijyou_up_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条_顔up_口微笑み]
[chara_mod name="sijyou_up_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
;[四条_顔up_頬染め]
[chara_mod name="sijyou_up_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]

;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
@layopt layer=message0 visible=true
[暗転２終了]
;------------------------------------------------
;目閉じ照れ
[whosay name="華織" color="olivedrab"] 
「迎えにいった時の[名前]さんの表情も、[r]
[sp]頂いた贈り物も、花のように舞う貴女も[r]
[sp]僕は今日という日を忘れられないでしょう」[p]
[autosave]
[whosay name="華織" color="olivedrab"] 
「もし宜しければ、休まれた後に[r]
[sp]もう一度、ここで踊って頂けませんか？」[p]
#
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
華織様の少し緊張した声に包まれ、[r]
私は少し意地悪ながら安心してしまった。[p]
;なんだったんだと終わるので主人公の締め
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
（華織様も私のことを想って下さっているのですね……）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだわ。[sp]まだ、華織様とのお付き合いは[r]
[sp]これからですもの……もう少し、頑張ってみようかしら）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
（でも、今は、もう少しだけこのままで……）[p]
[暗転２ storage="bg/sijyou_hanabi2_1.jpg"]
;一瞬見えるの防止
[bg wait=true method='crossfade' storage="../fgimage/bg/sijyou_hanabi2_1.jpg" time=50]
*seen_end
;クリアフラグ
[eval exp="sf.event_sijyou_2_2_bazar = 1"]
[イベントシーン終了]


[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
@jump storage="test_sijyou.ks"
[endif]
[s]

;------------------------------------------------
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
