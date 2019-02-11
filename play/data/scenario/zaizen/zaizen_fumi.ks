;財前手紙 sigoto yujin kazoku syourai
;季節ラベル_月_週~_月_週指定 4_3_5_2  ,  5_3_6_2  5_2
;季節ラベル月のみ指定 6 , 7  , 8 ,  9 ,  10
;=============================================
;手紙編
;=============================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[eval exp="sf.FButton='OFF'"]
;=============================================
;◆最初の手紙◆
;=============================================
*zaizen_fumi1
;背景変更:手紙
[手紙財前]
*zaizen_fumi1_1
[cm]
[名字] [名前]様[r]
[r]
謹啓　春暖の候、皆様ますますご清栄のこととお喜び申し上げます。[r]
このたび、古式日本の伝統に則り婚約の申し出を行うべく、手紙と釣書を送らせて頂きました。
[glink target=*zaizen_fumi1_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi1_2

[r]
[sp]これからしばらくの間、私の事を知って頂けるよう努力いたしますのでよろしくお願いします。[r]
では、お体にお気をつけてお過ごしください。返事をお待ちしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi1_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi1_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi1_close
[cm]
[clearfix]
[clearstack]

;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][0] = 0"]
	;f.midoku_list_hairetsu[1][0]は共通イベントオープニング中で届く最初の手紙です。script/fumi_zaizen.ks中にあります
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]




;=============================================
;◆話題への返事◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『趣味について』[p]
[endif]
;=============================================
;最大16行pc
*zaizen_fumi01
;#
[手紙財前 fumi_number=]
*zaizen_fumi01_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復　貴方様にはなお一層ご清栄の由と存じます。[r]
[r]
[sp] さて、この度は手紙をありがとうございます。　[r]
[r]
[sp] 営業や接客もする身として一通りの事を習い、[r]
[sp]碁を打ったり、和歌を詠んだり、[r]
[sp]観劇などの行楽についても一通りの知識はありますが、[r]
[sp]やはり一番興味深く、奥が深いと思うのは仕事で、[r]
[sp]色々な事業を取り入れ発展させる事に生きがいを感じています。
[glink target=*zaizen_fumi01_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi01_2
[sp][名前]さんは趣味をどうお考えでなのでしょうか？　[r]
[sp]ご返事をお待ちいたしております。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi01_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi01_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi01_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][1] = 0"]
	;f.midoku_list_hairetsu[1][0]は共通イベントオープニング中で届く最初の手紙です。script/fumi_zaizen.ks中にあります
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『仕事について』[p]
[endif]
;=============================================
*zaizen_fumi02
;#
[手紙財前 fumi_number=]
*zaizen_fumi02_1
[cm]
[名字]　[名前]様へ[l][r]
[sp] 謹復　貴方様にはますますご清祥のことと拝察して[r]
[sp]おります。[r]
[r]
[sp] 先日は手紙をありがとうございます。　[r]
[r]
[sp] 銀行の頭取をし、責任ある役職についている自覚が[r]
[sp]あります。[r]
[sp]銀行のシステムについてはこの国は遅れていますが、[r]
[sp]いずれ近代化が進み、これから一層進化してくだろうと[r]
[sp]思っています。[r]
[r]
[sp] 新しい事をどう取り入れつついかに事業を展開するか、[r]
[sp]その判断は難しいですが成功した時の喜びも、ひとしおです。
[glink target=*zaizen_fumi02_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi02_2

[sp][名前]さんも高貴なご立場の常として、こうして手紙を[r]
[sp]交わしていらっしゃいますが、ご自身の役割について[r]
[sp]どう思っていられるでしょうか？　　[r]
[r]
[sp] ご返答をお待ち申しております。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi02_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi02_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi02_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][2] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『友人について 』[p]
[endif]
;=============================================
*zaizen_fumi03
;#
[手紙財前 fumi_number=]
*zaizen_fumi03_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復　貴方様におかれましては、お変わりなく[r]
[sp]お過ごしのことと拝察しております。[r]
[r]
[sp]先日、 お手紙拝見いたしました。　[r]
[r]
[sp]学友というのはいましたが、付き合いというものは[r]
[sp]やはり利害関係が絡むものだと思っています。[r]
[r]
[sp] 学生だった時は、家柄、財産に惹かれて私に近寄る同級生も[r]
[sp]多くいました。[r]
[sp] 財産や家柄につられていようと、礼節を守ることは大事だと[r]
[sp]思っていますのでそれなりの対応をしています。
[glink target=*zaizen_fumi03_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi03_2
[sp]心の許せる友人というと、ごく数人に限られますね。[r]
[r]
[sp][名前]さんは友人についてどんなお考えをお持ち[r]
[sp]でしょうか？[r]
[sp]折り返しご返答お願い申し上げます。
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi03_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi03_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi03_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][3] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『家族について』[p]
[endif]
;=============================================
*zaizen_fumi04
;#
[手紙財前 fumi_number=]
*zaizen_fumi04_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復　貴方様に一段とご清栄の由と拝察しております。[r]
[r]
[sp] さて、先日のお手紙拝見いたしました。　[r]
[r]
[sp] 家族構成は、父、祖母、祖父のみです。[r]
[sp]母の事は正式に結婚が成ったあとに話すつもりです。[r]
[r]
[sp] 私の妻となる方は器量がよく、貞淑な方が理想です。[r]
[sp]私の立場上配偶者同席の夜会など呼ばれる事が多く、[r]
[sp]話術にも優れていると尚いいでしょう。
[glink target=*zaizen_fumi04_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi04_2
[sp]  [名前]さんはどのような夫が理想でしょうか？[r]
[sp] ご返事をお待ち申しております。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi04_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi04_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi04_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][4] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『将来について 』[p]
[endif]
;=============================================
*zaizen_fumi05
;#
[手紙財前 fumi_number=]
*zaizen_fumi05_1
[cm]
[名字] [名前]様へ[l][r]
[sp]謹復　貴方様には穏やかにお過ごしのことと拝察して[r]
[sp]おります。[r]
[r]
[sp] この度は手紙をありがとうございます。　[r]
[r]
[sp]将来の目標は会社を大きく発展させることです、[r]
[sp]家の為というのもありますが[r]
[sp]私は銀行の社員一人一人の生活や行動にも責任があり、[r]
[sp]真面目に取り組む社員に対して[r]
[sp]色々なものを還元したいと思っています。
[glink target=*zaizen_fumi05_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi05_2
[sp][名前]さんはどのような将来を考えているでしょうか？[r]
[sp] ご返答をお待ち申しております。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi05_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi05_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi05_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][5] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『新茶の話題 』[p]
[endif]
;=============================================
*4_3_5_2

;#
[手紙財前 fumi_number=]
[名字] [名前]様へ[l][r]
[sp]謹復 貴方様にはお変わりなくお過ごしの事と存じます。[r]
[r]
[sp]この度はお手紙をありがとうございました。[r]
[sp]緑茶は仕事でもよく飲みますが、[r]
[sp]新茶というのは爽やかな香りで私も好み、この季節には進んで[r]
[sp]飲む事が多いです。[r]
[r]
[sp]お茶の[ruby text="い"]淹れ方でも味は変わってくることも、御存じですか？[r]
[r]
[sp] [名前]さん も試してみてはどうでしょうか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][6] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]

;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『さつきの話題』[p]
;↑桜の話題→さつきの話題、と手紙の内容に合わせて変更しました(◆jsYiJcqRkk
[endif]
;=============================================
*5_3_6_2
;#
[手紙財前 fumi_number=]
*5_3_6_2_1
[cm]
[名字] [名前]様へ[l][r]
[sp]謹復 貴方様には益々お元気にお過ごしの事とお慶び[r]
[sp]申し上げます。[r]
[r]
[sp]この度はお手紙をありがとうございました 。[r]
[sp]桜が散るとさつきの季節になりますね。[r]
[sp]町の所々で見かけ、我が家にもさつきを植えてあり、[r]
[sp]時に私の目も慰めてくれるものです。[r]
[r]
[sp]花が咲くとやはり華やかで美しいと率直に感じますね。[r]
[sp]散って枯れていくのも惜しいとは思いますが、[r]
[sp]散っていくからこそ花も美しいものだとも思います。
[glink target=*5_3_6_2_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*5_3_6_2_2
[sp][名前]さんはさつきに限らず花をどう思いますか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬 
[glink target=*5_3_6_2_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*5_3_6_2_close" size=5 x=880 y=24 width=50 height=50]
[s]

*5_3_6_2_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][7] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]

;=============================================
;◆話題への返事◆
=============================================
;『 読書について 』
;=============================================
*zaizen_fumi08
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『読書について』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi08_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはお変わりなくお過ごしの事と存じます。[r]
[r]
[sp]読書というと経済紙をよく読みます。[r]
[sp]銀行を健全に運営する為に、新しい情報を知り、[r]
新しい制度、また廃れていく情勢など、[r]  
詳しく分析しつつ、お客様に提案し、[r]  
銀行の方針を変えていくのは私の責任です。[r]
[glink target=*zaizen_fumi08_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi08_2
[sp]例えば資産を守り、増やしていく方法は、[r]
沢山ありますが失敗する人も成功する人もいます。[r]
[sp]よりお客様一人一人に合う方法を見つけ、提供する為に、[r]
知恵や知識はいくらあっても足りません。[r]
[sp]しかし本はそれを補ってくれます。[r]
[r]
[sp]貴方にとって本はどのようなものですか？[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 
[glink target=*zaizen_fumi08_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi08_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi08_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][8] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 スポーツについて 』
;=============================================
*zaizen_fumi09
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『スポーツについて』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはなお一層ご清栄の由と存じます。[r]
[r]
[sp]スポーツでは４年に一度の世界大会に、[r]
我が国も参加するようになりましたね。[r]
[r]
[sp]私も世界に誇れる選手を我が国から輩出するように[r]
協力し、その場を作りたいと思っています。[r]
[sp]政府の教育への働きかけが重要なところですね。[r]
[r]
[sp]貴方のスポーツに関する見識のお返事を待っています。[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][9] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 食事について 』
;=============================================
*zaizen_fumi10
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 食事について 』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはなおその後ご清栄の由と拝察しております。[r]
[r]
[sp]今では食事の栄養についての研究所が設立し、[r]
[ruby text="しち"]七[ruby text="ぶ"]分[ruby text="づき"]搗[ruby text="まい"]米がよいとされ、[r]
[sp]私の家でも[ruby text="しち"]七[ruby text="ぶ"]分[ruby text="づき"]搗[ruby text="まい"]米を食べるようになりました。[r]
[r]
[sp]日本食というのは体にいいそうです。[r]
[r]
[sp]貴方はどのような食習慣をされてますか？[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][10] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 観劇について 』
;=============================================
*zaizen_fumi11
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 観劇について 』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはなお一段とご清祥の由と存じます。[r]
[r]
[sp]お客様の中には観劇を好まれる方も、[r]
いらっしゃいますし、お付き合いで何度か、[r]
演劇の公演にも行きました。[r]
[r]
[sp]感想は劇の時によりますね。[r]
[sp]演出も、演劇も、台本もまだまだ我が国は[r]
未熟な面があると思います。[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][11] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 猫について 』
;=============================================
*zaizen_fumi12
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 猫について 』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはますますご繁栄の由と存じます。[r]
[r]
[sp]私は、犬を飼っていたことがありましたが、[r]
猫はありませんね。[r]
犬の性格は従順、猫は自由奔放だそうです。[r]
[r]
[sp]動物を飼う時はしっかり[ruby text="しつ"]躾けたいので、[r]
私が猫を飼うのはあまり向いてないでしょう。[r]
[r]
[sp][名前]さんは動物を飼ったことはありますか？[r]
[sp]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][12] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『聞き上手と話し上手について 』
;=============================================
*zaizen_fumi13
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『聞き上手と話し上手について 』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはなお一層ご清祥の由と存じます。[r]
[r]
[sp]勿論、接客する身としてはどちらも、[r]
より上手になるように努力しています。[r]
[r]
[sp]相手に合わせるのは気力も消耗する場合もありますが、[r]
成功した時は共に喜びを分かち合えますし、[r]
苦労した方が喜びもひとしおです。[r]
[r]
[sp]貴方も努力してみてはどうですか？[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][13] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『緑の石について』
;=============================================
*zaizen_fumi14
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『緑の石について』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはなお一層ご清栄の由と存じます。[r]
[r]
[sp]調べさせたところ、[ruby text="みどり"]緑[ruby text="め"]瑪[ruby text="のう"]瑙とのことでした。[r]
[r]
[sp][名前]さんのご友人からのものとのことですが、[r]
女性から贈り物を頂くというのは、少々気が引けます。[r]
[r]
[sp]ですが、返すのも失礼ですし、[r]
後日、私からも何か贈り物をしましょう。[r]
[r]
[sp]貴方はどのような宝石を好まれますか？[r]
[sp]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][14] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『緑の石ついて2 』
;=============================================
*zaizen_fumi15
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『緑の石について2』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはなお一層ご清栄の由と存じます。[r]
[r]
[sp]あれから私が[ruby text="みどり"]緑[ruby text="め"]瑪[ruby text="のう"]瑙をどうしているか[r]
貴方は気になるようですね。[r]
[r]
[sp]宝石も持ち主との相性があると、知人から伺いました。[r]
[sp]あいにく私は宝石の意思を感じ取ることは[r]
出来ませんが、一つの巡り合わせです。[r]
[r]
[sp]私なりに大切にしています。[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][15] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『写真について』
;=============================================
*zaizen_fumi16
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『写真について』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi16_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様におかれましては、[r]
お元気のにお過ごしのことと拝察しております。[r]
[r]
[sp]そういえば、父が[ruby text="ド"]独[ruby text="イツ"]逸製の最新式の写真機を[r]
購入し、仕事の休日にはよく写真を撮るようになりました。[r]
[glink target=*zaizen_fumi16_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi16_2
[sp]息子の私が言うのもなんですが、父はセンスが良いと[r]
感じています。[r]
[sp]写真の取り方もよくコツをつかんでぶれたりさせる事が[r]
少なく、後世に残せるような写真だと思います。[r]
[r]
[sp]あれだけの質が優れているのなら、[r]
色々な人に楽しんでいただけるでしょうし、[r]
個展を開いても良いと思うのですが、[r]
[sp]父は個人的な楽しみにしたいようです。[r]
[r]
[sp][名前]さんはどんな感性をお持ちでしょうか？
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 
[glink target=*zaizen_fumi16_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi16_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi16_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][16] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『一日のはじまりについて』
;=============================================
*zaizen_fumi17
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『一日のはじまりについて』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi17_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様はその後ごご活躍のことと存じます。[r]
[r]
[sp]一日のはじまりは珈琲を飲んでいます。[r]
[sp]珈琲は体に悪いといわれていますが、[r]
眠気がなくなるので私はよく飲んでますね。[r]
[glink target=*zaizen_fumi17_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi17_2
[sp]私は、仕事で徹夜することもあり、[r]
不定期な生活になりがちですが、[r]
一日の始まりは気持ちを引き締めています。[r]
[r]
[sp]単調に思える日々でも貴重な、一日を過ごしているのです。[r]
[r]
[sp][名前]さんはどのような朝の習慣をしていますか？[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 
[glink target=*zaizen_fumi17_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi17_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi17_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][17] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『お気に入りの曲について』
;=============================================
*zaizen_fumi18
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『お気に入りの曲について』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様にはなお一層ご清栄の由と拝察しております。[r]
[r]
[sp]私の曲の好みは明るい曲より、[r]
哀愁のこもった曲が好きな傾向があります。[r]
[r]
[sp]たまに感情が高ぶった時は[r]
音楽を聴いて沈めていますね。[r]
[r]
[sp] 聴きたい曲は気分によります。[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][18] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『お気に入りの曲について 2』１１月２週以降
;=============================================
*zaizen_fumi19
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『お気に入りの曲について 2』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi19_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様には一段とご清栄の由と存じます。[r]
[r]
[sp]私の好きな曲の一つに『わが祖国』があります。[r]
[sp]幼い頃、母から別れる時に、この曲の[r]
オルゴールを渡されました。[r]
[glink target=*zaizen_fumi19_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi19_2
[sp]何度も捨てようと思ったのですが、[r]
メロディが好きなので捨てられなかったのです。[r]
[r]
[sp]以前は好きなことも認めたくなかったのですが、[r]
この曲に込められた情景がどんなものか見たいと、[r]
思っています。[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 
[glink target=*zaizen_fumi19_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi19_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi19_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][19] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 道 』
;=============================================
*zaizen_fumi20
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 道 』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様におかれましてはいよいよご清祥[r]
のことと存じます。[r]
[r]
[sp]知らない道というのは地図があっても、[r]
迷う事がありますね。[r]
[r]
[sp]営業で初めての方の家を訪れる時は[r]
運転手によく調べさせるのですが、[r]
まだ車が通れない道もあります。[r]
[r]
[sp]早く我が国の発展の為にも舗装してほしいものです。[r]
[sp]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][20] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 道２ 』
;=============================================
*zaizen_fumi21
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 道２ 』[p]
[endif]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様におかれましては穏やかにお過ごしでしょうか？[r]
[r]
[sp]道は人の手で作り、通りなど人が名付けたりしますね。[r]
[sp]道には人の歴史があり、私達に繋がっているといいます。[r]
[r]
[sp]そしてこれから私達が作っていくものです。[r]
[r]
[sp]将来に向けて貴方はどんな道を築きますか？[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][21] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆話題への返事 ◆
;=============================================
;『 変化と永遠 』
;=============================================
*zaizen_fumi22
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 変化と永遠 』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi22_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹復 貴方様はなお一層ご活躍の事と拝察しております。[r]
[r]
[sp]私は朽ちるからこそ花が美しいと感じるように、[r]
変化するから美しい、醜い、素晴らしいなどの、[r]
感情が生まれ、また善処しようと気持ちが生まれる[r]
のですよ。[r]
[r]
[sp]ことわりの中で、私たちは生きています。[r]
[glink target=*zaizen_fumi22_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi22_2
[sp]ですが感傷というのも大事ですね。[r]
[sp]永遠はなくとも人がどう生きたかという事は[r]
後世に影響を及ぼします。[r]
[r]
[sp]中国の故事に温故知新という言葉があります。[r]
[sp] 古きを温め新しきを知るという意味です。[r]
[sp]たとえ全てが変わっていくのだとしても[r]
後世に残せるものはあるのでしょう。[r]
[r]
[sp]　 　　　　　　　　　　　　　　　　　　　　敬答[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　財前　美彬 
[glink target=*zaizen_fumi22_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi22_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi22_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][22] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================



;◆季節の便り◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『柏餅 』[p]
[endif]
;=============================================
*5_2

;#
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp] 謹呈　新緑の候　貴方様にはなお一層ご清栄の由と[r]
[sp]存じます。[r]
[r]
[sp] さて、[名前] さんは柏餅は好きでしょうか？[r]
[sp] 先日、取引先で粗茶と柏餅を食べました。[r]
[sp] この季節は柏餅を作るのが盛んですね。 [r]
[r]
[sp] 私は少々甘いのは苦手ですが、[r]
[sp]葉の味もしみ込んだ和菓子と緑茶を飲むのは[r]
[sp]疲れた時はいいと思っています。[p]
[sp] そういえばもう端午の節句を過ぎましたね。 [r]
[sp]早いものです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][23] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆季節の便り◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『梅雨 』[p]
[endif]
;=============================================
*6
;#
[手紙財前 fumi_number=]
*6_1
[cm]
[名字]　[名前]様へ[l][r]
[sp] [sp]謹呈　長雨の候　貴方様にはいよいよご清祥の由と[r]
[sp]存じます。[r]
[r]
[sp] 時に、この季節はよく雨が降りますね。[r]
[r]
[sp] 雨が降るのは時に落ち着き、私は雨が特に好ましいと[r]
[sp] 思いますが、こう毎日降るとじめじめしていては、[r]
[sp] カラッとした天気が待ち遠しいものです。
[glink target=*6_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*6_2
[sp] 銀行のお客様も傘を忘れる方がたまにいらっしゃって[r]
[sp]困る事があります。貴方も傘はお忘れなく。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=6_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*6_close" size=5 x=880 y=24 width=50 height=50]
[s]

*6_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][24] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆季節の便り◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『七夕 』[p]
[endif]
;=============================================
*7
;#
[手紙財前 fumi_number=]
*7_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹呈　[ruby text="ちゅう"]仲[ruby text="か"]夏の[ruby text="こう"]候　貴方様にはいよいよご清祥の由と[r]
[sp]存じます。[r]
[r]
[sp]　さて、[名前] さんも七夕の行事はご存じでしょうか？[r]
[sp]当社の社内に笹を持ち込み折り紙を用意して[r]
[sp]折り紙で飾りを付け、願い事を書く紙を用意する企画が[r]
[sp]出まして実施しています。[r]
[r]
[sp]笹の葉と短冊を一緒に焼いたら願いが叶うといわれているので[r]
[sp]七夕が終わった後は神社に炊き上げるそうです。
[glink target=*7_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*7_2
[sp]私は夢は自分でつかむものと思いますが、お客様にも[r]
[sp]好評な様で粋な計らいもたまには良いものです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*7_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*7_close" size=5 x=880 y=24 width=50 height=50]
[s]

*7_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][25] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆季節の便り◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『お墓参り 』[p]
[endif]
;=============================================
*8

;#
[手紙財前 fumi_number=]
*8_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹呈　晩夏の候　貴方様にはなお一層ご活躍のことと[r]
[sp]お慶び申し上げます。[r]
[r]
[sp]　ところで、[名前] さんはお盆は、いかがお過ごし[r]
[sp]でしたでしょうか？[r]
[r]
[sp]私はお墓参りに行きました。[r]
今の私達がいるのは先祖あってこそだと、祖母の受け売りでは[r]
ないですが先祖を敬うことは、当然の事だと思います。
[glink target=*8_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*8_2
[sp]この国は迎え火、送り火、また神社の境内で盆踊り[r]
[sp]したりいろいろな伝統があるようですが、[r]
[名前]さんの家ではどんなしきたりがあるのでしょうか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*8_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*8_close" size=5 x=880 y=24 width=50 height=50]
[s]

*8_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][26] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆季節の便り◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『彼岸花 』[p]
[endif]
;=============================================
*9

;#
[手紙財前 fumi_number=]
*9_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]謹呈　[ruby text="そう"]爽[ruby text="しゅう"]秋の[ruby text="こう"]候　貴方様にはますますご清祥の趣と[r]
[sp]存じます。[r]
[r]
[sp]時に道端に彼岸花を見るようになりました。[r]
[sp]秋めいてきましたね。
[r]
[sp][名前]さんは彼岸花をどう思っていますか？[r]
[r]
[sp]花が炎の形に見えるという事で、家に持ち帰ると火事が[r]
[sp]起きるという迷信もありますが、私は迷信はあまり好みません。[r]
[r]
[sp]毒にも薬にもなる花ですが私は好きです
[glink target=*9_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*9_2

[sp]貴方は彼岸花をどう思っていますか？
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　 謹言[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*9_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*9_close" size=5 x=880 y=24 width=50 height=50]
[s]

*9_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][27] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;◆季節の便り◆
;=============================================
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『菊花展』[p]
[endif]
;=============================================
*10

;#
[手紙財前 fumi_number=]
*10_1
[cm]
[名字]　[名前]様へ[l][r]
[sp] 謹呈　秋月の候。貴方様には一段と ご清栄の段と[r]
[sp]拝察しております。[r]
[r]
[sp] 先日、取引先の招待で菊花展に行きました。[r]
[r]
[sp]とても見事なものでした。[r]
[sp]一つ一つの菊の花は丹精こめて作られたことがよくわかります。[r]
[sp]花を育てるのも大変な作業ではないかと思います。
[glink target=*10_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*10_2

[sp] [名前]さんにもお稽古事には心を込めて[r]
[sp]取り組んでいらっしゃるのでしょうか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*10_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*10_close" size=5 x=880 y=24 width=50 height=50]
[s]

*10_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[1(財前を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[1][28] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;=============================================
;◆イベント中に届く手紙◆ イベント後に「文箱」から読めるようにするために、以降にまとめます(◆jsYiJcqRkk
;=============================================
;10月3週『薔薇園散策のお誘い』←仮タイトルです
;=============================================
*zaizen_fumi29
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『薔薇園 散策のお誘い』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi29_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]秋麗の候、貴方様には一段とご清栄の由と存じます。[r]
[r]
[sp]さて、この度、[名前]さんと[ruby text="バ"]薔[ruby text="ラ"]薇[ruby text="えん"]園の散策をしたく手紙を[r]
出しました。
[glink target=*zaizen_fumi29_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*zaizen_fumi29_2
[sp]やはり私も形式にのっとって貴方と何度かお会いした後に[r]
成婚という形が望ましいと思います。[r]
[r]
[sp]申し訳ないですが私は忙しく貴方に都合を合わせて頂きたいと[r]
思っています。[r]
[ruby text=じゅう]十月[ruby text=さん]三週の日曜日が、私の予定が空いておりますのですが[r]
どうでしょうか？
[glink target=*zaizen_fumi29_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*zaizen_fumi29_3 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*zaizen_fumi29_3
[sp][r][r]
[sp]返信お待ちしております。[r]
[r]
[sp]それでは用件のみですが失礼いたします。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi29_2 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi29_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi29_close
[cm]
[clearfix]
[clearstack]
[resetfont]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[1][30] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;11月3週『先日のパーティについて』←仮タイトルです
;=============================================
*zaizen_fumi30
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『先日のパーティについて』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi30_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]　初霜の候、貴方にはいよいよご清栄の由と存じます。[r]
[r]
[sp]先日のパーティは思いがけず、醜態をさらし[r]
己の未熟さを覚えました。[r]
[r]
[sp]私は感情的になる事は好みませんが、[r]
たまに吐き出すとすっきりするものですね。[r]
[r]
[sp]母を許そうと思う日が来るとは思っても[r]
みませんでした。
[glink target=*zaizen_fumi30_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi30_2

[sp]貴方のお節介な部分が私に移ったのでしょうか。[r]
だとしても、自分でも悪くない変化だと思います[r]
なにか胸の内のもやもやした黒いものが霧散し[r]
自分の外見も悪いものだと感じなくなりました。[r]
[r]
[sp]貴方に礼を言っておきましょう。
[r]
[sp]それでは取り急ぎ失礼します[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　 財前　美彬
[glink target=*zaizen_fumi30_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*zaizen_fumi30_3 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*zaizen_fumi30_3

[sp][r][r]追伸　これから仕事が忙しくなりそうなので[r]
お手紙のお返事は暫く返せなくなるかもしれません
[glink target=*zaizen_fumi30_2 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi30_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi30_close
[cm]
[clearfix]
[clearstack]
[resetfont]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[1][30] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]

;=============================================
;3月4週『母の誕生日パーティご招待』←仮タイトルです
;エンディングのため、ゲーム中から「文箱」機能で読み返すことはできませんが「おまけ」で手紙を読み返す機能をつけるかもしれません。その際に読めるようにここに置きます(◆jsYiJcqRkk
;=============================================
*zaizen_fumi31
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『母の誕生日パーティご招待』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi31_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]拝啓　春草萌えいづる季節を迎え[r]
貴方におかれましては、いかがお過ごしですか？[r]
;↑イベント中の手紙の表現に合わせて調整させていただきました(◆jsYiJcqRkk
[r]
[sp] さて、暫く手紙を書けなかったことをまずは[r]
お詫びしましょうか。[r]
[sp] 手紙を出せずにいる間も貴方から手紙を頂き[r]
貴方のことを、温かく感じられるようになりました。[r]
;↑貴方温かく→貴方のことを、温かく　と変更させていただきました(◆jsYiJcqRkk
[sp]自分でも不思議な気分です。
[glink target=*zaizen_fumi31_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi31_2

;自動改ページされるので区切ります
[sp][r]
[sp]ところで三月二十五日ですが母から誕生日パーティの[r]
招待を受けました。[r]
[sp]仕事もひと段落つきましたし出席しようかと思います。[r]
そして母から貴方も連れて出席して欲しいと書かれてありました。[r]
いかがしましょうか？[r]
[r]
[sp]それでは返信をお待ちしております。[r]
[sp] 浅春の折、穏やかにお過ごし下さい[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi31_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi31_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi31_close
[cm]
[clearfix]
[clearstack]
[resetfont]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[1][31] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]
;=============================================
;『怪談』
;=============================================
*zaizen_fumi_kaidan
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『怪談』[p]
[endif]
[手紙財前 fumi_number=]
*zaizen_fumi_kaidan_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]拝啓、貴方には穏やかにお過ごしの事とと存じます。[r]
[sp]怖い話を好む方もいますが、[r]
[名前]さんは怪談は苦手なようですね。[r]
[r]
[sp]私も、そういったたぐいの話は好みません。[r]
[sp]ただ怪談は事実を元に作られる事が多いようですし、[r]
軽んじては足元すくわれると考えています。[r]
[glink target=*zaizen_fumi_kaidan_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*zaizen_fumi_kaidan_2
[sp]立場上、起工式に立ち会うこともありましたが、[r]
土地には歴史があり、その土地に息づいているものを、[r]
直感で感じることがありました。[r]
[r]
[sp]怖いと感じられるのでしたら、[r]
専門家を紹介しましょうか？[r]
[sp]ですか、大切なのは自身の受け止め方と、[r]
気持ちの持ちようでしょう。[r]
[glink target=*zaizen_fumi_kaidan_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*zaizen_fumi_kaidan_3 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*zaizen_fumi_kaidan_3
[sp]明るく、物を大切にし、[r]
清潔にしている方には悪霊は寄りにくいと聞きました。[r]
[sp] 貴方もそのように心がけると良いでしょう。[r]

[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　財前　美彬
[glink target=*zaizen_fumi_kaidan_2 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*zaizen_fumi_kaidan_close" size=5 x=880 y=24 width=50 height=50]
[s]

*zaizen_fumi_kaidan_close
[cm]
[clearfix]
[clearstack]
[resetfont]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	[eval exp="f.midoku_list_hairetsu[1][32] = 0"]
	[freeimage layer = 29]
	@jump storage=&f.viewing_storage target=&f.viewing_target
	[s]
[endif]
[手紙財前読了 fumi_number=]



[イベントシーン終了]
@jump storage="test_zaizen.ks"
[s]

