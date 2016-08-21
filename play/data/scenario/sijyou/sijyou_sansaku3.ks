;散策案4
;このままだと能力が低いだけな気がしてモヤっとする
;散策で、四条綾花さんを登場してみては？
;期間は四条家でのデートのあとならいつでも？
;四条祖母と出会い、
;花材を沢山持っていて主人公が手伝う
;理由があれば近所のお兄さんの家の前ならok?
;幼馴染なので、わりと近所設定
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

#
今日も町は、切れ目のない雑踏で賑わっている[p]
[whosay name="？？？"]
よいっしょ……っと[p]
[whosay name="花屋の店主"]
四条さん、今日はひとりで来られたのですか？[p]
#
聞き覚えのある苗字に私は、花屋の前で足を止めた。
[p]
[whosay name="妙齢の女性"]
他の用事に出させているのでね[r]
けど、こればっかりは、私の目でみておきたいですの
[p]
#
花屋の前にいたのは、華道で使うのであろう花材を両手いっぱいに抱えた妙齢の女性。
その女性は、四条家の園遊会で会った華織の祖母であった。[p]
;◎散策2をやってない人もいるので綾花の名前はなくていいかな
#主人公
（あの方は、たしか華織さまのお祖母様だわ）[p]
[whosay name="花屋の店主"]
四条さん、さすがにこれ以上持って帰るのは難しいと思いますよ！[p]
[whosay name="四条祖母" color="#888898"]
なんとかして、持っていきたいわねぇ[p]

;【主人公】
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……)[p]
#
見かねた私は手を貸すことに決めた。[p]
;【主人公】
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
こんにちは[p]
[whosay name="四条祖母" color="#888898"]
あら！ あなたは！[p]

;【主人公】やや遠慮がちに
[主人公照れ目普通]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
あの……四条家前でしたらお手伝いします[p]
#
四条家はここから近い。[r]
さすがに四条家の中に入ることは、淑女として許されないが、[r]
四条家祖母と一緒ならば、家の前まで訪ねることも許されるであろう[p]
;言い回しが硬い
[whosay name="四条祖母" color="#888898"]
「そうね お願いしてよろしくて？」[p]

;【主人公】ほほえみ
[主人公ほほえみ]
[wait time=20]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;[p]

#
[苗字]家を通り過ぎ、四条家に繋がる路地を歩く。[p]
幼い頃は、よく兄に連れられながらも、この道のりに心躍らせたものだった。[p]
#
[whosay name="四条祖母" color="#888898"]
「こんな良い方と出会えて華織は幸せですわね[p]
#
今は、会えずとも、少し違った意味で心弾む道のり。[o]
;【主人公】
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私も華織さまと出会えて幸せです」[p]
#
気を良くした四条祖母は、華織の出生秘話から学生時代のことなどについて道中、数十分ほど語られた。[p]
;【主人公】控えめに笑顔
[主人公笑顔口小]
[wait time=10]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
そんなことがあったんですか[p]
#
時折、華織の自慢を挟まれながらも、兄の学生時代の話も聞けて話は弾む。[p]
[whosay name="四条祖母" color="#888898"]
「えぇ、華織は、何でも卒なくこなす子なんですの」[p]
[whosay name="四条祖母" color="#888898"]
「けどねぇ、あの事があってから、特に華道には本気さが無くなったように思えるの」[p]
;【主人公】
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あのこと？」[p]
[whosay name="四条祖母" color="#888898"]
「ほほ。いえいえ、こちらの話ですわ」[p]
[whosay name="四条祖母" color="#888898"]
「どうか、ウチの華織のことをよろしくお願いします」
[p]
;【主人公】
[主人公笑顔]
[wait time=10]
「はい、こちらこそ」[p]
;【主人公】
[主人公通常]
[wait time=10]
(華織さま、また今度お会いしましょう)[p]
#
四条邸の並んだ窓を少し眺めた後、来た道を引き返した。[p]
;爽やかな感じになると良い
