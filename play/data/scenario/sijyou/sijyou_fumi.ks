;////////////表示準備/////////
;表示遅れ防止　タイトル文字がみえるように背景変更
;[preload storage="data/fgimage/bg/bg_prologue_dark.jpg"]
[preload storage="data/fgimage/bg/bg_prologue.jpg"]
[bg storage="../fgimage/bg/bg_prologue.jpg" time=100]
[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
;////////////表示準備/////////
;////////////四条 華織 季節の手紙////////////
;概要
;＠名無しさん１
;△基本一回きりでいいです。
;◎コンセプト お見合い前は、素っ気ない。女慣れの部分ははじめから入っている最初の手紙でok
;◎お見合い後でフレンドリーなものに変化
;お見合い後は短いながらも手紙の内容は豊富など 届かない時期の分は飛ばして下さい。
;判定お見合い前後があります。
;判定イベント6前後があります。家族について
;////////////判定スクリプトの案////////////
;【１】出したときを判定する？
;【２】出したときは判定しない、もらったときを判定する？
;【３】2パターンある手紙は1パターンをみたら、その1パターンのイベントが終わります。
;しかし、2パターン目については終わらない。両方見た場合は終わり。
;詳細案
;お見合い前に返事をもらう→そっけない手紙の提示→お見合い前その話題手紙フラグ終わり。(お見合い後の手紙は生きている)
;もしも、お見合い後に手紙を出した→お見合い後に返事をもらう→いい感じの手紙を提示→お見合い後その話題手紙フラグ終わり。(お見合い前の手紙は生きているが特に意味がないのでフラグを閉じておく？)
;//////特殊手紙挨拶テンプレ/////
;(お見合い前)
;手紙ありがとう。(話題)についてだね。それなら
;(お見合い後)
;いつも手紙をありがとう。(話題)についてだね。それなら

[stopbgm]
[eval exp="sf.FButton='OFF'"]
;テスト以外はコメはずす
;@jump target=*fumi_cmmon
*test
[if exp=tf.test_sijyou == true]
*test_page1
[glink target="*sijyou_syumi_1" text="趣味について(お見合い前)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="*sijyou_syumi_2" text="趣味について(お見合い後)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="*sijyou_kazoku_1" text="家族について(お見合い前)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="sijyou_kazoku_2" text="家族(お見合い後)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="sijyou_kazoku_2_1" text="家族・祖父母両親(お見合い後・事件解決後)" graphic="select_waku_x500.png" size=10 width="250" x=100 y=300 color=white]
[glink target="sijyou_kazoku_2_2" text="家族兄次男(お見合い後・事件解決後2)" graphic="select_waku_x500.png" size=10 width="250" x=100 y=350 color=white]
[glink target="sijyou_kazoku_2_3" text="家族(お見合い後・事件解決後2)" graphic="select_waku_x500.png" size=10 width="250" x=100 y=400 color=white]
[glink target="sijyou_kazoku_3" text="家族・主人公と(イベント6後)" graphic="select_waku_x500.png" size=10 width="250" x=100 y=450 color=white]
[glink target="sijyou_yujin_1" text="友人(お見合い前)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=w

[glink target="sijyou_yujin_2" text="友人(お見合い後)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="1" text="春(1)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="2" text="春(2)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="3" text="春3" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="4" text="春4" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="5" text="夏5" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="6" text="夏6" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="test_page2" text="次のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
;ページ停止に地点にジャンプ
@jump target="*common"
[s]
*test_page2
[glink target="7" text="夏7" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="8" text="夏8_0" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="8_1" text="夏8_1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="8_2" text="夏8_2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="8_3" text="夏8_3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="9" text="秋9" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="10" text="秋10" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="11" text="秋11" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="12" text="冬12" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]

[glink target="13" text="冬1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="14" text="冬2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="15" text="冬(3)" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="*16_end" text="結納前" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target=";*17_ex" text="夏8_3" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="*18_ex" text="華織の道" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="*19_ex" text="兄から" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
[glink target="test_page3" text="次のページへ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=pink]
;ページ停止に地点にジャンプ
@jump target="*common"
[s]
*test_page3
;新規追加分　位置変更する気がまだ起きてこない
[glink target=*aburidasi text="あぶりだし" graphic="select_waku_x500.png" size=20 width="300" x=100 y=100 color=white]
[glink target=*aburidasi2 text="あぶりだし2" graphic="select_waku_x500.png" size=20 width="300" x=100 y=150 color=white]
[glink target="1_2" text="春(1_2)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="1_3" text="春(1_3)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="5_1" text="夏(5_1)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="5_2" text="夏(5_2)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]

[glink target="sijyou_sigoto" text="仕事について" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="sijyou_sigoto2" text="仕事について2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="sijyou_sigoto3" text="仕事について3" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="sijyou_sigoto4" text="仕事について4" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]


*common
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
[glink target="test_page1" text="始めのページ" graphic="select_waku_x500.png" size=20 width="250" x=500 y=600 color=pink]
[s]
[endif]

*fumi_cmmon
;//////////////////////////☆特殊手紙のやりとり/////////////////////////////////
;==============================================================================================================
;;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇趣味について;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
*sijyou_syumi_1|(お見合い前)
;◆↓お稽古パート経由で手紙を読みに来た場合は全画面表示のタイトルはカット(手紙組み込みテスト用)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『趣味について』(お見合い前)[p]
;#
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ。[r]
[r]
手紙ありがとう。　趣味についてだね。　それなら[r]
庭で花を愛でることだよ。　家も華道をやっているからね。[r]
;[名前]の最近の趣味は何かな[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列中にて、その手紙の状態を未読→既読に変更。f.midoku_list_hairetsu[2(四条を示すNumber)][1(手紙固有Number)]。
;ちなみに[eval exp="f.midoku_list_hairetsu[2][0]だとオープニングで届く最初の手紙の未読or既読データを示す

[eval exp="f.midoku_list_hairetsu[2][1] = 0;"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]

[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_syumi_2|(お見合い後)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『趣味について』(お見合い後・事件前後共通)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
へ。[r]
[r]
いつも手紙をありがとう。　趣味について
[if exp="f.sijyou_event6==1"]
ですね
[else]
だね
[endif]
。[r]
それなら、自分で花を植えて育てること
[if exp="f.sijyou_event6==1"]
ですね
[else]
だよ
[endif]
。[r]
庭師と家族にはいつも困った顔され
[if exp="f.sijyou_event6==1"]
ます
[else]
るよ
[endif]
。[r]
[if exp="f.sijyou_event6==1"]
ですが、
[else]
けど、
[endif]
祖母が、こっそり華道の材料に使ってるところを[r]
僕は
[if exp="f.sijyou_event6==1"]
何度か、目撃したことがあるのですよね……。
[else]
見てるんだよね。
[endif]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;↓右側の[2]の部分は01_sijyou_fumi_toutyaku_shori_list.ksのラベル数値-1となります(スクリプト担
[eval exp="f.midoku_list_hairetsu[2][2] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇家族について◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;これについて手紙を出すとイベント6クリアまでは好感度が下がる。
;==============================================================================================================
*sijyou_kazoku_1|(お見合い前)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『家族について』(お見合い前)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ。[r]
[r]
手紙ありがとう。　家族についてだね。　それなら[r]
両親と他兄妹が多いよ。[r]
僕のことは気にしなくていいよ。[名前]のことを知りたいね。[r]
;文矢は元気にしてるかな？
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][3] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_kazoku_2
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『家族について』(お見合い後)
[p]
[endif]

[手紙四条 fumi_number=]
[r][r][r]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
へ。[r]
[r]
[if exp="f.sijyou_event6==1"]
いつも手紙をありがとうございます。[r]
家族についてですね。[r]
僕の家族構成は、祖父母、両親、兄と妹と弟([華衣])です。[r]
兄は海外に行ってることが多くて最近では顔も忘れそうですね……。[r]
兄弟が、沢山いると賑やかなのですが、難しいことも多くありますね。[r]
ですが、身近な人を大切にしたいです。[r]
[else]
いつも手紙をありがとう。[r]
家族についてだね。それなら[r]
両親と兄と妹と弟がいるよ。[r]
兄は海外に行ってることが多くて最近では顔も忘れそうだよ。[r]
両親は君のことを気に入っていたよ。[r]
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][4] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
;==============================================================================================================
*sijyou_kazoku_2_1
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『家族について 祖父母両親』(お見合い後・事件解決後)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]さんへ[r]
いつも手紙をありがとうございます。[r]
そうだね。家族について紹介しないとね。[r]
[r]
祖父の名前は『四条源次郎』[r]
祖母の名前は『四条綾花』[r]
二人は従妹で、もともとの華道業は祖母の家業なんだ。[r]
祖父は、厳格な人柄だけど、何故か祖母には頭が[r]
[sp]  上がらないんだ。[p]
父の名前は『四条悠次郎』。[r]
母の名前は『四条夏子』[r]
[r]
[r]
父は、新聞と珈琲が好きなおっとりした人かな。 [r]
実は祖父が英語が苦手みたいで、さりげなくサポートを[r]
しているようなんだ。[r]
君のお父さんとも仲がいいね。[p]
母の趣味は三味線。[r]
嫁いでくる前は、華道家元の後藤家の四姉妹の長女で、[r]
長女故に末っ子には厳しくも甘いかも。[r]
けど、仕事以外の家の事も的確にしてくれて[r]
面倒見がいい人ではあると思う。[p]
[r]
こんな個性的な祖父母と両親だけど、[r]
良縁を結んでくれた事には感謝しているよ。[p]
[sp][r][r][r]
次の手紙では、兄弟のことも書こうか[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][5] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
;==============================================================================================================
*sijyou_kazoku_2_2|(お見合い後・事件解決後2)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『家族について 兄弟』(お見合い後)
[p]
[endif]

[手紙四条 fumi_number=]
[r][r][r]
[名前]さんへ。[r]
[r]
いつも手紙をありがとう。約束の兄弟について紹介しないとね。[r]
[r]
兄の名前『四条一華』。四条鉱山の元経営主任だったけど[r]
今は、外交官を務めている忙しい人だね。[r]
[r]
四条家の長男として仕事に打ち込みすぎて、[r]
一度目の婚約に失敗してしまったみたいなんだ。[p]
[r]
女性不信になってるかな……とは思うけど、[r]
僕の弟としてからの率直な意見だと……[r]
女性に対しても社交界的な態度をとっているからだと思うな。[r]
[r]
とはいえ、僕は兄の立ち振る舞いや才能には尊敬しているし、[r]
頭が上がらないかな。[p]
最近、兄から写真が送られてきたけど、随分と静観な顔つきに[r]
なっていたよ。[r]
[r]
君が、惚れていまわないか心配と余計な事を考えてしまったよ。[p]

次男は僕。 『四条華織』。君の手紙の相手って、そんなことは[r]
知ってるってね？ [r]
[r]
実は、君がまだまだ知らないところもあるんだよ。[r]
……なんてね。君が知っている以上に想っていることくらいだよ。[r]
とはいえ、これからもお互いを深く知っていけたらいいですね。[p]
[r]
最近は、君のお父さんとも交流させてもらっています。[r]
文矢もそうだけど、君のお父さんと話していると楽しくなるね。[r]
[r]
君が素敵な女性になるのも納得だと思う。[p]
[sp][r][r]
長くなってしまったね。[r]
次の手紙では、弟と妹のことも書くよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][6] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
;==============================================================================================================
*sijyou_kazoku_2_3|(お見合い後・事件解決後2)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『家族について 弟と妹』(お見合い後)
[p]
[endif]

[手紙四条 fumi_number=]
[名前]さんへ。[r]
[r]
いつも手紙をありがとう。約束の弟と妹について紹介しないとね。[r]
弟の名前は『四条華衣(かい)』[r]
妹の名前は、『四条美華(みか)』[r]
[r]
華衣は……色々あったけれど、今は元気にしてるし、[r]
君には、感謝と尊敬の意を持っているみたいだ。[r]
[r]
つかず離れず、本来の兄として見守っていきたい。[p]
妹の美華は、ひとつ上の兄の華衣に怯える気弱な[r]
子なんだ。 [r]
昔から、華衣と折り合いが悪くって、寄宿舎に入れられている。[r]
[r]
華衣と一緒に留学までしたけれど、やっぱり苦手みたいだ。[r]
今後は、仲良くなってくれると嬉しいのだけど……時間が[r]
かかりそうだ。[p]
妹の歳は十四歳になったばかりで、まだまだ幼いね。[r]
この前、[名前]さんとの結納の件で、手紙のやり取りをしたら[r]
『女の子ばかりの寄宿舎にいると、お兄様みたいな素敵な出会[r]
いに憧れているけれど、[r]
同時に見知らぬ男の人との手紙のやりとりの時期が来るのが[r]
億劫』って書いてあったよ[r]
[r]
それから、『出来たら[名前]さんとの出会いについてと話を聞き[r]
たい』とも。[p]
けど、色々あったし、照れてしまうから、しばらくは、秘密といって、[r]
かわしておく……。[p]
家族の紹介はこれで全部かな。[r]
[r]
今後とも宜しくお願い致します。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][7] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_kazoku_3|(イベント6後)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『家族について』(イベント6後)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]さんへ[r]
[r]
いつも手紙をありがとう。家族について話すとするなら[r]
[名前]さんは、四条[名前]になるのでしょうか。[r]
駆け足の如く、色々とありましたね。[r]
[名前]さんに苦労はかけないよう努力します。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][8] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇将来について;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
*sijyou_syourai1|(お見合い前)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『将来について』(お見合い前)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]へ。[r]
[r]
;手紙ありがとう。将来についてだね。それなら[r]
家は華道の家系。別途、鉱山稼業をしているので、[r]
存続させるように努力したいな。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][09] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_syourai1_2|(お見合い前)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『将来について』(お見合い前2)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]へ。。[r]
[r]
;手紙ありがとう。将来についてだね。[r]
この前、話を書いたから、なんて書こうか[r]
迷ってしまうよ。[r]
[名前]は、将来の夢は何だったかな？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][10] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_syourai2|(お見合い後)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『将来について』(お見合い後)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[if exp="f.sijyou_event6==1"]
[名前]さんへ。[r]
手紙をありがとうございます。[r]
将来、これからの事について考えると、色々と思うことが[r]
ありますね。[r]
僕は、[名前]さんと共に将来を歩むために為すべきことを[r]
しなくてはいけません。[r]
悩むことはありますが、これは幸せな未来に向かうための[r]
始まりなのでしょうね。[r]
[名前]さんの将来の夢はありますか？[r]
[else]
[名前]へ[r]
[r]
;いつも手紙をありがとう。将来についてだね。それなら[r]
将来は四条家で誇れるものを見つけたいな。[r]
祖父に『お前は、平均的に何でもこなすが特出したものがない』[r]
って言われるからね……。
[endif]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][11] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_syourai2_1|(お見合い後　事件解決前)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『将来について』(お見合い後,その後)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]さんへ[r]
[r]
いつも手紙をありがとう。[r]
子供のころの夢は、お祖母様にも、引けを取らない[r]
華道家になることだったね。[r]
[名前]さんの昔の夢は、なんでしたか？[r]
文矢のお嫁さんだった記憶があるのだけど……[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][12] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇仕事について;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
*sijyou_sigoto1|(お見合い前)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『仕事について』(お見合い前)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]へ[r]
[r]
四条家では、資本は基礎で[r]
名誉は国の為に第一に古式由来の思想を持っているんだ。[r]
鉱山業を基礎とし、[r]
家の名誉の為に代々、華道を行っているよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][13] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_sigoto2|(お見合い後・事件解決後)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『仕事について』(お見合い後/事件解決後)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]さんへ[r]
[if exp="f.fumi_toutyaku_sijyou[14] == 1"]
おかげさまで、順調に進んでおります。[r]
祖父も、作風が変わった、と仰っていました。[r]
これも[名前]さんのおかげですね。[r]
これからも、さらなる高みを目指していきたいです。
[else]
[r]
四条家では、資本は基礎で[r]
名誉は国の為に第一に考える古式由来の思想を持っています。[r]
鉱山業を基礎とし、[r]
家の名誉の為に代々、華道を行っています。[r]
[endif]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][14] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_sigoto2_1|(お見合い後2)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『仕事について』(お見合い後2)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]さんへ。[r]
[r]
四条家では鉱山業を基礎とし、[r]
家の名誉の為に代々、華道を行っています。[r]
その中で、僕は四条家の名誉の為に祖母について[r]
華道の修行に取り組んでいます。[r]
未だに賞はとれていないので、もっと精進したいですね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][15] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_sigoto3|(お見合い後3)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『仕事について』(お見合い後3)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]
[if exp="f.sijyou_event6==1"]
さん
[endif]
へ。[r][r]
四条家では家の名誉の為に代々、華道を行っています。[r]
僕は四条家の名誉の為にも、これからの未来の為にも[r]
華道の道を見極めていきたいです。[r]
[if exp="f.sijyou_event6==1"]
[名前]さんには、そういったものがありますか？[r]
もし、[名前]さんがしたいことがありましたら、僕もできる限り[r]
お力添えをしたいです。
[endif]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][16] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_sigoto4|(お見合い後4)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『仕事について』(お見合い後4)
[p]
[endif]
[手紙四条 fumi_number=]
[r]
[名前]さんへ。[r]
[r]
実をいうと、[r]
僕は四条家の名誉の為にも、華道の極めなければ、[r]
って思っていたけれど、[華衣]とのことが気になって[r]
まったく前に進めなかったのです。[r]
でも、何かのせいにして、ずっと逃げていたいたこと[r]
には、変わらない。[r]
どんな時でも、芸というものは、見る人に感動を与える[r]
崇高な行いですからね。[r]
心に強さを持って前に進んでいきます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][17] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇△友人について;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
*sijyou_yujin_1|(お見合い前)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『友人について』(お見合い前)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ。[r]
[r]
手紙ありがとう。友人についてだね。それなら[r]
君も知ってるだろうけど文矢が友人だよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][18] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*sijyou_yujin_2|(お見合い後)
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『友人について』(お見合い後)
[p]
[endif]
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ。[r]
[r]
手紙ありがとう。友人についてだね。それなら[r]
文矢が一番の親友だよ。[r]
文矢は手紙に合う心葉についてよく訊かれたよ、[r]
彼の朗らかなところが好きなんだよね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][19] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~特殊話題について終わり;~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;==============================================================================================================
;☆///////////////////////////季節の話//////////////////////////////////////
;お見合い後を想定。それ以外は何も無し
;日付調整で入らないものはスルーしてください
;/////季節の手紙の挨拶テンプレ//////
;[名前]、元気にしてるかい？[r]
;[名前]へ。今日思ったことを手紙にして送るよ[r]
;[名前]へ。いつも手紙をありがとう。[r]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇春の手紙のやりとり１　1_2 1_3;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
;ゲームプレイしてみると初回４月　平均３回のやりとり
*1
*sijyou_fumi21
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
[r]
『ヒヨドリ』[p]
[endif]
[手紙四条 fumi_number=1]
[r][r]
[名前]へ。[r]
[r]
[名前]、元気にしてるかい？[r]
木の上で甲高く鳴く鳥をみてヒヨドリと教えてもらました。[r]
聞いたところ、外敵に襲われないように冬の海の上を[r]
スレスレに飛んで渡ってくるそうです。[r]
[r]
見かけによらず芯の強いところは誰かを彷彿させます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][20] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=1]
;==============================================================================================================
*1_2
*sijyou_fumi22
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
[r]
『アンズ』[p]
[endif]
[手紙四条 fumi_number=1]
[r][r][r]
[名前]へ。[r]
[r]
[名前]、元気にしてるかい？[r]
桜に似た木をみつけました。[r]
美しいので、近づいてみたところ[ruby text=あん]杏[ruby text=ず]子の[r]
木でした。低く腕を伸ばしたように伸びた枝は風格があったよ。[r]
ちなみに花言葉は、[r]
「臆病な愛」「乙女のはにかみ」「疑い」「疑惑」なんだって。[r]
[ruby text=あん]杏[ruby text=ず]子の雰囲気にあっているのかな[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][21] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=1_2]
;==============================================================================================================
*1_3
*sijyou_fumi23
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
[r]
『トキワナズナ』[p]
[endif]
[手紙四条 fumi_number=1]
[r][r][r]
[名前]へ、手紙をありがとう。[r]
先日、華道家の祖母が、珍しい花を持ってきたよ。[r]
『トキワナズナ』という、砂糖菓子のようなかわいい花[r]
なんだ。よくみると白い小さな花が集まって一つの大[r]
きな花房を形成いているんだ。[r]
花言葉は[r]
「心をひきつける」「初恋の思い出」「甘い誘惑」。[r]
たしかに心を引き付ける可愛らしい花だったよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][22] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=1_3]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*3
*sijyou_fumi24
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
[r]
『チューリップ』[p]
[endif]
[手紙四条 fumi_number=3]
[r][r][r]
[名前]へ。[r]
[r]
今日は面白いことを知ったので手紙に書くよ。[r]
チューリップは欧州貴族がこぞって品種改良し、病気で出来た[r]
チューリップを巡ってチューリップバブルが起きたこともあるそう[r]
です。[r]
珍しくもなくてもいいから健やかな花がいいですよね。[r]
いつかは、[名前]と花を育ててみたいです。[r]
;今みたら暗示的なものに見える
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][23] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=3]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*4
*sijyou_fumi25
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
[r]
『筍』[p]
[endif]
[手紙四条 fumi_number=4]
[r][r][r]
[名前]へ[r]
[r]
いつも手紙をありがとう。[r]
庭先に筍が生えてきました。[r]
大きくなる前にとらないといけないです。[r]
ですから、一昨日から食事は筍三昧でそろそろ飽きてきました。[r]
[名前]と食事ができれば、毎日筍ご飯でも楽しいのですがね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][24] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=4]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇夏の手紙のやりとり;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
;見合い前なのでは？
*5
*sijyou_fumi26
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
夏[r]
[r]
『すだれ』[p]
[endif]
[手紙四条 fumi_number=5]
[r][r][r]
[名前]へ。[r]
[r]
すだれを出したら使い物にならないほどに痛んでいました。[r]
この梅雨のせいかな。[r]
[名前]の家では夏の準備は終わりましたか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][25] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=5]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*5_1
*sijyou_fumi27
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
夏[r]
[r]
『すだれ2』[p]
[endif]
[手紙四条 fumi_number=5_1]
[r][r][r]
[名前]へ。[r]
[r]
新しいすだれに取り換えてもいました。[r]
やっぱり夏には、風鈴とすだれの先の青い空だよね。[r]
今日、見える入道雲の形が、大仏に見えるのは、[r]
僕だけかな[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][26] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=5_1]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*5_2
*sijyou_fumi28
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
夏[r]
[r]
『ハマナス』[p]
[endif]
[手紙四条 fumi_number=5_2]
[r][r][r]
[名前]へ[r]
[r]
親戚の家のから手紙を書いてます。[r]
ここは、何もないところではあるけれど、海辺に[r]
咲く桃色のハマナスの花が見事なんだ。[r]
実はローズヒップティーとして使われるらしいよ。[r]
また機会がありましたら皆でお茶をしようか[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][27] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=5_2]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*6
*sijyou_fumi29
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
夏[r]
[r]
『かき氷』[p]
[endif]
[手紙四条 fumi_number=6]
[r][r][r]
[名前]へ。[r]
[r]
かき氷って、抹茶、牛乳以外、味はあまり変わらないのに[r]
色が違うだけで楽しくなりますよね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][28] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=6]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*7
*sijyou_fumi30
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
夏[r]
[r]
『蛙』[p]
[endif]
[手紙四条 fumi_number=7]
[r][r][r]
[名前]へ。[r]
[r]
清流の前で涼んでいると小さな蛙がでてきました。[r]
蛙は涼しそうな顔をして、茹だる僕のことを笑っているように[r]
見えました。[r]
そういえば、昔、文矢と[名前]で川に涼みにいきましたね。[r]
あの時も小岩の影に蛙がいて[名前]は驚いてましたね。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][29] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=7]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*8_1
*sijyou_fumi31
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
夏[r]
[r]
『夏の夜明け』[p]
[endif]
[手紙四条 fumi_number=8_1]
[r][r][r]
[名前]へ。[r]
[r]
古今和歌集に詠まれていたが本当に夏の夜明けは早く[r]
よい夢が覚めてしまいます。[r]
朝霧の中に朝顔の萎れた姿をみると儚い時を感じます。[r]
今ある幸せが、ずっと続くといい。 そんなことを考えてしまいます。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][30] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=8_1]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*8_2
*sijyou_fumi32
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
夏[r]
[r]
『昨晩の星』[p]
[endif]
[手紙四条 fumi_number=8_2]
[r][r][r]
[名前]へ。[r]
[r]
昨晩の星をみられましたか 身勝手の許されない身がくやしいです。[r]
織姫と彦星も文通してるのでしょうか[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][31] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=8_2]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*8_3
*sijyou_fumi33
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
秋[r]
[r]
『ネリネ』[p]
[endif]
[手紙四条 fumi_number=8_3]
[名前]へ。[r]
[r]
暑さも薄まりすっかり秋の涼やかな季節に変わるね。[r]
久しぶりに来た、[ruby text=ウ]四条[ruby text=チ]家はどうだったかな。[r]
[r]
そういえば、ネリネの花言葉について話をしてなかったね。[r]
「華やか」「また会う日を楽しみに」「幸せな思い出」[r]
「輝き」「忍耐」「箱入り娘」[r]
この花を見ていると穏やかな気持ちになるんだ。[p]
美しい見た目に反して香りはないけれど、[r]
花びらに光が当たると、キラキラと輝くから、[r]
本当に不思議な花だよね。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][32] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=8_3]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇秋の手紙のやりとり;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
*9
*sijyou_fumi34
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
秋[r]
[r]
『秋の夕暮れ』[p]
[endif]
[手紙四条 fumi_number=9]
[r][r][r]
[名前]へ。[r]
[r]
雨が残した露もまだ乾ききらないのに、[r]
槇の葉にはもう霧が立ちのぼっていく秋の夕暮れは、[r]
ものがなしいものを感じます。[r]
鮮やかな季節とは違って、静かに季節を感じる時期ですね。[r]
[名前]さんが好きな季節は、いつでしょうか？
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][33] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=9]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*10
*sijyou_fumi35
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
秋[r]
[r]
『秋の空』[p]
[endif]

[手紙四条 fumi_number=10]
[r][r][r]
[名前]さんへ。[r]
[r]
空気が澄んできてどこまでも雲がみえるようになりましたね。[r]
時折、背中を押すような強い風が吹いています。[r]
秋の空は色々な表情を見せてくれると思いませんか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][34] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=10]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*11
*sijyou_fumi36
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
秋[r]
[r]
『読書』[p]
[endif]
[手紙四条 fumi_number=11]
[r][r][r]
[名前]さんへ。[r]
[r]
紅葉が広げた本にも挟まるほど縁側を彩っています。[r]
紅葉の葉が読んだところを教えてくれました。[r]
縁側で[名前]と読書をしてみたいですね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][35] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=11]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇冬の手紙のやりとり;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;旅行中かも？？ およそ、ひと段落してるので愛情的な文面
;==============================================================================================================
*12
*sijyou_fumi37
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
冬[r]
[r]
『冬の夜ふけに』[p]
[endif]
[手紙四条 fumi_number=12]
[r][r][r]
[名前]さんへ。[r]
[r]
冬は夜もふけるのも早く、あけるまでが長いですね。[r]
早く[名前]に会いたいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][36] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=12]

[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*13
*sijyou_fumi38
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
冬[r]
[r]
『別荘にて』[p]
[endif]

[手紙四条 fumi_number=13]
[r][r][r]
[名前]さんへ。[r]
[r]
山里の別荘にいくと寂しいものです。[r]
冬はとりわけ静かに感じます。[r]
[ruby text=ふた]二[ruby text=り]人でいるとまた違って見えるのでしょうか[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][37] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=13]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*14
*sijyou_fumi39
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
冬[r]
[r]
『新年の準備』[p]
[endif]
[手紙四条 fumi_number=14]
[r][r][r]
[名前]さんへ。[r]
[r]
家族は皆、ドレスを着て鏡の前で宮さまの前に出る(礼)の[r]
練習をしています。[r]
新しい年にむけて、慌ただしくなってきましたが、[r]
[名前]さんは、如何お過ごしでしょうか？
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][38] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=14]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*15
*sijyou_fumi40
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
冬[r]
[r]
『白霜』[p]
[endif]
[手紙四条 fumi_number=15]
[r][r][r]
[名前]さんへ。[r]
[r]
今朝はとても冷え込みましたね。[r]
白霜がついた美しい枝をみているでしょうか、[r]
熱い指では手渡すこともできません。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][39] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=15]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;*16_end
*sijyou_fumi41
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
冬[r]
『結納』[p]
[endif]

[手紙四条 fumi_number=]
[r][r]
[名前]さんへ。[r]
[r]
_　三月には、いよいよ[名前]との結納ですね。 [r]
[名前]さんは、どんな気持ちでいますか？ [r]
[r]
感謝の言葉と、これから迷惑をかけるお詫びとで[r]
入り混じります。[r]
たくさんの[名前]との思い出を綴っていきたいです。[p]
他にも伝えたいことはありますが、それは結納の時の為に[r]
とっておきます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][40] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*2
*sijyou_fumi42
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
[r]
『お茶の中に』[p]
[endif]
[手紙四条 fumi_number=2]
[r][r][r]
[名前]へ[r]
[r]
いつも手紙をありがとう。[r]
お茶をいただいたら湯飲みの中に桜が舞い込んできました。[r]
ホッとする幸せを届けてくれる[名前]は春の天人ではないか[r]
などと考えてしまいます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][41] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=2]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;//////////////////////////////////季節の手紙内容おわり////////////////////////////////////////////////////////
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇他手紙;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
;///////未来へ///////
;*17_ex
*sijyou_fumi43
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
『未来へ』[p]
[endif]
[手紙四条 fumi_number=]
[名前]さんへ。[r]
[r]
花が咲き乱れ、心弾ませる季節となりましたね。[r]
華道家の祖母の展覧会への手伝いで慌しくなるころ、[r]
慌しく春を感じてしまう僕ですが、[名前]さんは、[r]
その後、お変わりなくお元気でしょうか？[r]
[r]
庭の牡丹の剪定をしていたところ、ふと過去を思い出しました。[r]
庭で文矢と僕が将棋に興じていたところ、その花を見つめていた、[r]
[名前]さんに渡したことを……。[p]
;ｱｲｺﾝにかかる
;今もそうですが、幼い頃の[名前]さんは、[r]
;絵画に描かれる妖精ように可愛らしかったです。[r]
文矢が多忙になり、[名前]さんが淑女として家に入ってからは、[r]
話さなくなってしまいましたが、これからは、[名前]さんと[r]
色々なことを話していきたいです。[p]
追伸。気づいてるかもしれないけど、実をいうと文章を書くのは[r]
苦手で、いつも綺麗な返信を送ってくれる[名前]には、頭が[r]
あがらないよ。[r]
[r]
その代わりといっては、なんですが、ひとつ[名前]さんに[r]
約束します。[r]
僕の中にひとつ極めるものを見つけると。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][42] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
;追伸は、他の手紙の整合あわせなのですよ・・・
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;///////一歩進んでいるよとの手紙///////
;このままだと努力の実体性がない男なので付け足す。
*18_ex
*sijyou_fumi44
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
春[r]
『全力』[p]
[endif]
[手紙四条 fumi_number=]
*18_ex_fumi_in1
[er]
[名前]さんへ[r]
[r]
庭の桜にメジロが蜜をあつめており、その愛らしさに[r]
心穏かになる季節となりました。[r]
[名前]さんは、お変わりなくお元気でしょうか？[r]
[r]
さて、この度、四条華織は、[名前]のお約束とおり、[r]
祖母の開いた華道競合会にて大賞受賞を果たしました。[r]
場所が場所だけに七光りと思われがちですが、[r]
祖父にも、来ていただいた方にも心にくる華だと褒めていただき[r]
ました。[r]
[link target=18_ex_fumi_in2][sp]　　　　　　　　　　　　　　　　　　　　　　　　【壱/弐】[endlink][s]
*18_ex_fumi_in2
[er]
もう、何も迷うこともない。[r]
だから今、全力で自分を使って色々な場所で活躍していきます。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[r][r]
[link target=18_ex_fumi_in1][sp]　　　　　　　　　　　　　　　　　　　　　　【弐/弐】[endlink][r]
[link target=18_ex_fumi_in3][sp]　　　　　　　　　　　　　　　　　　　　　　 　【閉】[endlink][s]
*18_ex_fumi_in3
[er]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][43] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
;///////アイデンティな手紙おわり///////
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇あぶりだしの手紙◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
*avuridasi
*sijyou_fumi45
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『あぶりだしの便せん』[p]
[endif]
;///////あぶり出しの便せん///////
[手紙四条 fumi_number=]
[名前]。 手紙をありがとう。[r]
[r]
えぇと……はじめ見たとき、何が書いてるのか、[r]
わからなかったよ[r]
他に何か入っているのかな？と光にあてたところで[r]
気づきました。[r]
今度からは、普通の便せんでお願いできないかな？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][44] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
*avuridasi_2
*sijyou_fumi46
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
[wait time=10]
『あぶりだしの便せん』[p]
[endif]
;///////あぶり出しの便せん///////
[手紙四条 fumi_number=]
[名前]さん。 手紙をありがとう。[r]
[r]
ごめん……はじめ見たとき、何が書いてるのか、[r]
わからなかったんだ。[r]
他に何か入っているのかと、光にあてたところで[r]
気づきました。[r]
次からは気づくようにしますね……。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][45] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;==============================================================================================================
;;◇◇◇◇◇◇◇◇◇◇◇◇そのほか話題はこちらに追加していく;◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
*sijyou_fumi103
*19_ex
[if exp="f.okeiko_gamen != true"]
;◇◇◇◇◇◇◇◇◇◇◇◇兄からの手紙◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;◎お見合い決定後に文矢から手紙がないとおかしいのでは？
;◎友人のくせに変化を知らない理由がわからない
;もう少し落ち着きましたら 具体的なことは分かっていないので　落ち着いたら　とボカシましたが修正しました
;あまり小うるさくならない程度に書く
[テキスト全画面白文字]
お見合い[r]
『妹へ』[p]
[endif]
[手紙文矢 fumi_number=]
[r]
[名前]へ[r]
拝啓[r]
庭の楓が恋しくなる季節となりました。[r]
お元気にしてますか？[r]
こちらは外交官としての仕事も落ち着きを[r]
取り戻したところです。[r]
[r]
さて、父から話をききました。[r]
[名前]が、華織を選ぶとは、僕としても[r]
嬉しい驚きを感じています。[p]
家を出てから、華織とは、たまに手紙で[r]
やりとりするくらいになってしまいましたが、[r]
華織も変わりないでしょうか？[r]
[r]
何か困ったことが、あったら磯野に相談する[r]
ように。[r]
兄としても、友人としても、ふたりのことを[r]
心から応援しています。[r]
[r]
冷たい風が強くなってきましたが、風邪をひか[r]
ないように気をつけてください。[p]
追伸[r]
次に日本に戻った時は、家族揃って会食に[r]
行きたいですね。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　文矢[p]
[手紙読了]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]
;//////////////////////////////////////////////////////////////////
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[2][102] = 0;"]
[freeimage layer = 29]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]
[endif]
;//////////////////////////////////////////////////////////////////
[手紙四条読了 fumi_number=14]
[if exp=tf.test_sijyou == true]
[clearstack]
@jump target="*test"
[endif]

;実装時に各手紙に読了処理等を追記予定
;fumi_numberがうまく動作していないので実装時に試行錯誤予定。マクロじゃなく各所にベタ打ちした方が早いやも

;/////////////////ここからは戻り処理//////////////////////
*back_test
[イベントシーン終了]
[bg storage="../fgimage/bg/title.jpg" time=0]
[chara_mod name="bg" storage="bg/title.jpg"]
@jump storage="test_sijyou.ks"
[s]
*title
@jump storage="title.ks"
[s]

