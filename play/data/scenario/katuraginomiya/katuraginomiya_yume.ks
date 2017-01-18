;葛城宮編
#
ーー夢を見た。[p]
;背景:執務室（葛城宮本編の一番最後の背景で）
[イベントシーン構築枠茶色]


# 
ドアのノックの音かした。[r]
多分母宮だろう。[r]
話についても予想はしている[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

[stopbgm]

[whosay name="???"]
「どうぞ。」[p]

;【SE】ドアが開く
[playse storage=door_open.ogg loop=false ]

# 
予想通り母宮が姿を見せる[p]

[whosay name="母宮"color=%mp.color]
「……お話があります。[r]
[sp] お手紙を書いたそうですわね」[p]


[whosay name="葛城宮"]
「ええ、
ですが母宮に相談する歳でもありません」


[whosay name="母宮"color=%mp.color]
「まあ！　
貴方は どうして勝手に話を進めるんですの？」[p]

[葛城宮汗]
[whosay name=葛城宮"]
「だから母宮に相談する歳でもないと……」[p]

[whosay name="葛城宮妃" color=%mp.color]
「貴方は強引でお相手の方も[r]
[sp] ご迷惑をかけてしまうかも知れませんわ」[p]

[葛城宮通常]
[whosay name=葛城宮"]
「……今は手紙を交わしているだけですので、[r]
[sp] 迷惑かどうかは彼女の返信しだいで判断するつもりです」[p]

[whosay name="葛城宮妃" color=%mp.color]
「それだけではいけません。[r]
[sp] 品行方正で礼儀正しく評判の良い方でないと。[r]
[sp] それに貴方以外の方とお手紙を交わし始めたばかりとか[p]
「ああ……不安ですわ」[p]

[葛城宮眉怒り]
[whosay name=葛城宮"]
「何が言いたいのですか？」[p]

[whosay name="葛城宮妃" color=%mp.color]
「もしお相手の方に貴方より親密になっている殿方がいたり、[r]
[sp] お稽古も真面目に取り組んでいない方だったら[r]
[sp] 黙って貴方から引き下がりなさい。」[p]

[葛城宮横目]
[whosay name=葛城宮"]
「勿論、相手に無理強いをするつもりはありません」[p]

[whosay name="葛城宮妃" color=%mp.color]
「貴方が年頃の女性に好意を持つことだけで進歩だとは、[r]
[sp] 思っていますので完全に反対はしませんが、[r]
[sp] どんな方私も知ってから判断しますわ」[p]

[葛城宮通常]
[whosay name=葛城宮"]
「ええ、そうしてください。[r]
[sp] 母宮も彼女を見れば納得いただけるでしょう。」[p]

[whosay name="葛城宮妃" color=%mp.color]
「そう……お会いするのを楽しみにしています」[p]

[暗転]

; 背景お稽古部屋？
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下の夢だったわ。」[p]

[主人公ポーズ指]
（お手紙の方々、皆と親しくなっては[r]
殿下とは縁が遠くなってしまうのかしら？[r]
それにもっと淑女らしくならないといけないのだわ」[p]

