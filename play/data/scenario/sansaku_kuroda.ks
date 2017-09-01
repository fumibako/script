;=============================================
;【散策】黒田イベント
;=============================================
;◆町_黒田イベント02「麦」
;イベント発生条件：6月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
*sansaku_machi_kuroda_02
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_02==undefined"]
	[skipstop]
[endif]
*machi_kuroda_02
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸_庭
[背景_庭]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
;【SE】鳥のさえずり
[playse storage=tori_yatyou.ogg loop=false ]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「久々に、気持ちの良いお天気ね。[r]
[sp]お出かけしてみましょう」
[autosave]
[p]

[stopbgm]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
町へ出た。[r]
お茶屋の表から声がする。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「何かあったのかしら」[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「ああ困った！　うまく生けられないわ」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
娘さんが花と器とを前に、行ったり来たり[r]
色々な角度から眺めつつ困り切っている。[r]
通りがかりにふと目が合った。
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]

[whosay name=お茶屋の娘 color="#5b7e23"]
「お嬢さん。力をお貸しいただけませんか？[r]
[sp]お店に飾る生け花がうまくいかなくて[r]
[sp]困っているのです」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「生け花ですか。私でお役に立てるかしら」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「いつも生けてくださるおかみさんが[r]
[sp]今日はお休みで、私が代わりを言いつかったのです」[p]
[主人公目パチ1回]
[wait time=10]
;[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
;[wait time=10]
「でも難しくて、あちこち切っているうちに[r]
[sp]お花が短くなってしまって」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「……もうどうすればよいのか……」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
#
そう言うと、娘さんはワッと泣きだしてしまった。[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうだったのですか」[p]

;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
花材を見る。花や麦など季節の植物が目に鮮やかだ。[r]
たしかに短くなってしまった花もあるものの[r]
傷みは目立たず生け方によっては活きそうだった。
[autosave]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫。なんとかなりそうですよ。[r]
[sp]お手伝いしましょうか？」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「……！[r]
[sp]ありがとうございます」[p]
#
;【立ち絵】消去
[主人公退場]
;【背景】暗転後、町並みに戻る
[bg storage="toumei.gif" time=500]
[wait time=500]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
#
……[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「できました！[r]
[sp]お嬢さんのおかげです。ありがとうございます。[r]
[sp]短いお花もこんなふうに活かせるなんて、さすがですね」
[autosave]
[p]

;主人公復帰表情　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
;【立ち絵】主人公：ほほえみ
[主人公ポーズ通常]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえいえ、私はお手伝いしただけです」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「お茶をどうぞお召し上がりください。[r]
[sp]よかったら、余った花材でお好きなものを[r]
[sp]お持ちくださいね」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
「この麦の穂なんて、いかがでしょう？　町では珍しいでしょう」[p]

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「麦にはなかなかお目にかかれないですね。[l][r]
;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
[sp]まっすぐ伸びて綺麗だわ……ありがとう、いただきます」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
生け花の技術が深まった。
;【淑女度上昇】+2（↓可能なら文字色変更表示）淑女度の数値は仮のもので、今後調整予定です
[eval exp="f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo + 2"]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt1='『淑女度』が2上昇しました'"]
[eval exp="f.sansaku_machi_seika_txt2='『麦の穂』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt1 layer=26 size=21 x=310 y=75 color=darkslateblue bold=bold]
[ptext text=&f.sansaku_machi_seika_txt2 layer=26 size=21 x=310 y=105 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[p]
[freeimage layer = 26]
[eval exp="f.event_machi_kuroda[2]=1"]
@jump storage="sansaku.ks" target=*sansaku_owari

;=============================================
;◆町_黒田イベント03「黒田家のうわさ１」
;イベント発生条件：7月1週～4週、期間中に町へ行くと黒田好感度一定値以上で1度だけ発生
*sansaku_machi_kuroda_03
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_03==undefined"]
	[skipstop]
[endif]
*machi_kuroda_03
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行き交う人々の声が聞こえる。[p]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[主人公目パチ1回]
[wait time=10]
[whosay name="町の人甲" color="#807070"]
「もうすぐ大きなお店ができるそうね」
[autosave]
[p]

[stopbgm]
;【BGM】乱の舞
[playbgm storage="midareru_kokoro_rannomai.ogg" loop=true]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="町の人乙" color="#807070"]
「何屋さんかしら、楽しみね。[r]
[sp]でもあそこ、たしか黒田さまの土地だったわね」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]

[whosay name="町の人甲" color="#807070"]
「……そうね。年々黒田さまの土地は狭くおなりだとか」[p]
#
町の人々は周囲を伺うと、声をひそめて話を止めた。[p]
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
[名前欄]
「そろそろ家に戻りましょう」[p]

;「黒田家のうわさ１」読了のフラグON
[eval exp="f.event_machi_kuroda[3]=1"]
@jump storage="sansaku.ks" target=*sansaku_owari

;=============================================
;◆町_黒田イベント04「黒田家のうわさ２」
;イベント発生条件：7月2週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
*sansaku_machi_kuroda_04
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_04==undefined"]
	[skipstop]
[endif]
*machi_kuroda_04
;[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行き交う人々の声が聞こえる。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[主人公目パチ1回]
[wait time=10]

[whosay name="町の人甲" color="#807070"]
「ご覧になった？　古道具屋さんの前に人が集まっていたわ」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[stopbgm]
;【BGM】乱の舞
[playbgm storage="midareru_kokoro_rannomai.ogg" loop=true]

[whosay name="町の人乙" color="#807070"]
「黒田さまが骨董や反物をいくつも手放されたとかで……[r]
[sp]見物人も出るぐらい珍しい品が並んでいたそうね」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name="町の人甲" color="#807070"]
「あそこの先代は、趣味人でしたからねぇ。[r]
[sp]それにしても、そんなに良い品を手放すなんて……」[p]
#
町の人々は周囲を伺うと、声をひそめて話を止めた。[p]
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
[名前欄]
「そろそろ家に戻りましょう」[p]

;「黒田家のうわさ２」読了のフラグON
[eval exp="f.event_machi_kuroda[4]=1"]
@jump storage="sansaku.ks" target=*sansaku_owari

;=============================================
;◆町_黒田イベント05「友人に忠告される」
;イベント発生条件：8月1週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
*sansaku_machi_kuroda_05
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_05==undefined"]
	[skipstop]
[endif]
*machi_kuroda_05
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[p]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
蝉しぐれ降るなか乗合馬車の土ぼこりが舞い上がり[r]
暑さで道が湯気を立てているようだ。[p]
馬の首では汗が白い泡となり真夏の陽射しに輝いている。[p]

[whosay name="三宮　時子" color="#c25232"]
「ごきげんよう、[名前｣さん。[r]
[sp]今日も大変な暑さね」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
#
そう言った友人は髪を涼しげに結い上げている。
[autosave]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう。[r]
[sp]ほんとうに、暑い日が続くわね」[p]

[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「[名前]さんに会いたかったのよ。[r]
[sp]ちょっと心配なことを聞いたものだから……[r]
[sp]あちらの日陰に参りましょう」
[autosave]
[p]
[stopbgm]
;【BGM】乱の舞
[playbgm storage="midareru_kokoro_rannomai.ogg" loop=true]
#
;一瞬暗転後、同じ背景に戻る
[bg storage="toumei.gif" time=500]
[wait time=500]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「心配なことって？」[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「この暑さだから、手短に言うわね。[r]
[sp][名前]さんのお相手……お家が色々とお困りだと聞いたの」[p]
「ご本人が魅力的な方でも、お家に何かあるようでは[r]
[sp]この先に苦労するかもしれないわ」
[autosave]
[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「噂は私も聞いたわ……」[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さんにはあまり苦労してほしくないの。[r]
[sp]でも、本当に素晴らしい方なら……苦労を選ぶ道もあるのかしら。[r]
[sp]そうは思っても心配で、言わずにいられなかったの」
[autosave]
[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうね……よく考えてみるわ。[r]
[sp]ありがとう」[p]

[fadeoutbgm time=3000]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「耳に痛いことを聞かせてしまって、ごめんなさい。[r]
[sp]では、ごきげんよう」[p]

;【立ち絵】主人公：ほほえみ(弱気眉)
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう」[p]
[主人公通常]
[wait time=10]
#
[名前欄]
「そろそろ家に戻りましょう」[p]
[eval exp="f.event_machi_kuroda[5]=1"]
@jump storage="sansaku.ks" target=*sansaku_owari

;=============================================
;◆町_黒田イベント06「友人と会う（落ち込み時）」
;イベント発生条件：12月1週～2週、期間中に町へ行くと1度だけ発生
*sansaku_machi_kuroda_06
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_06==undefined"]
	[skipstop]
[endif]
*machi_kuroda_06
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
;【立ち絵】主人公：伏目
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
景色が色あせて見え、師走のざわめきもどこか遠くに感じられる。[p]
;【BGM】冬支度（悲しげ・筝曲）
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]

[whosay name="三宮　時子" color="#c25232"]
「ごきげんよう、[名前｣さん。[r]
[sp]寒くなってきたわね」[p]
[主人公伏目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
温かい声が響き、ふと我にかえった。[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう……」[p]

[主人公伏目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「[名前]さん……お疲れに見えますわ。[r]
[sp]すこし休んでいきませんか」
[autosave]
[p]

#
友人は私をお茶屋へ誘った。[p]

[主人公伏目パチ1回]
[wait time=10]

[whosay name=お茶屋の娘 color="#5b7e23"]
「あらあら、お嬢様方ようこそ。[r]
[sp]寒いですから、中にお入りくださいまし」[p]

;背景暗転後町へ戻る
[bg storage="toumei.gif" time=500]
[wait time=500]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
;【立ち絵】主人公：通常
[主人公伏目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
#
友人の他愛ない話を聞きながら[r]
温かいお茶をいただき、心が少し軽くなった。[p]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そろそろ家に戻りましょう」[p]
[eval exp="f.event_machi_kuroda[6]=1"]
@jump storage="sansaku.ks" target=*sansaku_owari

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
[bg storage="toumei.gif" time=1]
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
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]

[freeimage layer = 27]
[wait time=10]

[return]
