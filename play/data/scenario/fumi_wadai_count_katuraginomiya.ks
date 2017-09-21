;話題による手紙返事カウントスタート処理：葛城宮
*katuraginomiya_wadai_shori
[iscript]
if (f.fumi_atesaki == 'katuraginomiya'){
	f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + f.para_pre_katuraginomiya_koukando;
	f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi-1;
	f.katuraginomiya_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];

//◆◆話題への返事待ちカウントスタート処理：初期から選べる話題で手紙を送った場合
if(f.wadai_list_hairetsu[f.wadai_number][0] == '趣味について' && f.katuraginomiya_fumi_toutyakumachi_shumi < 0){ //話題「趣味について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){ //sf.katuraginomiya['koukando_a']("01_katuraginomiya_hensuu.ks"にて設定)の数値より好感度が低ければ、↓の週数をカウントにセットします
		f.katuraginomiya_fumi_toutyakumachi_shumi=f.katuraginomiya_fumi_toutyakumachi; //f.katuraginomiya_fumi_toutyakumachi("01_katuraginomiya_hensuu.ks"にて設定)=話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）。
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){//好感度がsf.katuraginomiya['koukando_a']以上なら、初期値より1週少なくセットします
		f.katuraginomiya_fumi_toutyakumachi_shumi=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){//好感度がsf.katuraginomiya['koukando_b']を超えるなら、初期値より2週少なくセットします
		f.katuraginomiya_fumi_toutyakumachi_shumi=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}
}
[endscript]
[iscript]
if(f.okeiko_month != 13){

if(f.wadai_list_hairetsu[f.wadai_number][0] == '仕事について' && f.katuraginomiya_fumi_toutyakumachi_sigoto < 0){ //話題「仕事について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_sigoto=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_sigoto=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '家族について' && f.katuraginomiya_fumi_toutyakumachi_kazoku < 0){ //話題「家族について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){//好感度がsf.katuraginomiya['koukando_a']未満なら、週数カウントに初期値をセットします
		f.katuraginomiya_fumi_toutyakumachi_kazoku=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kazoku=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kazoku=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '季節の話題' && f.katuraginomiya_fumi_toutyakumachi_kisetsu < 0){ //「季節の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート。季節の話題はカウント終了時(四条からの手紙が来る週)に適した季節が選択されるため、下の"季節ものの話題"とは別扱いとなり好感度に応じた週数の返事待ち期間があります
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kisetsu=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kisetsu=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kisetsu=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '将来について' && f.katuraginomiya_fumi_toutyakumachi_shourai < 0){ //「将来について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shourai=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shourai=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_shourai=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}


//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節ものの話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '新茶の話題'){ //「新茶の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.katuraginomiya_fumi_toutyakumachi_sintya=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'さつきの話題'){ //「さつきの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.katuraginomiya_fumi_toutyakumachi_satuki=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}


//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節にこだわりのない話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '読書の話題' && f.katuraginomiya_fumi_toutyakumachi_dokusho < 0){ //「読書の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_dokusho=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_dokusho=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_dokusho=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'スポーツの話題' && f.katuraginomiya_fumi_toutyakumachi_sports < 0){ //「スポーツの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_sports=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_sports=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_sports=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '友人の話題' && f.katuraginomiya_fumi_toutyakumachi_yuujin < 0){ //「友人の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_yuujin=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_yuujin=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_yuujin=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '食事の話題' && f.katuraginomiya_fumi_toutyakumachi_shokuji < 0){ //「食事の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shokuji=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shokuji=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_shokuji=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '観劇の話題' && f.katuraginomiya_fumi_toutyakumachi_kangeki < 0){ //「観劇の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kangeki=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kangeki=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 1; //苦手(-2)だった話題でも少し大丈夫に(+1)
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kangeki=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 2; //苦手(-2)だった話題でも大丈夫に(+2)
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '猫の話題' && f.katuraginomiya_fumi_toutyakumachi_neko < 0){ //「猫の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_neko=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_neko=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_neko=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '聞き上手と話し上手の話題' && f.katuraginomiya_fumi_toutyakumachi_kiki < 0){ //「聞き上手と話し上手の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kiki=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kiki=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kiki=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
	if(f.midoku_list_hairetsu[3][12] = 0){ //'聞き上手と話し上手の話題'1通目が既読なら
		f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 3; //1通目(-1)の設定を(+2)にするために+3
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '緑の石の話題' && f.katuraginomiya_fumi_toutyakumachi_midori < 0){ //「緑の石の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_midori=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_midori=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_midori=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '写真の話題' && f.katuraginomiya_fumi_toutyakumachi_photo < 0){ //「写真の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_photo=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_photo=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_photo=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if((f.wadai_list_hairetsu[f.wadai_number][0] == '1日のはじまりの話題') && (f.katuraginomiya_fumi_toutyakumachi_hajimari < 0)){ //「1日のはじまりの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}
if((f.wadai_list_hairetsu[f.wadai_number][0] == '一日のはじまりの話題') && (f.katuraginomiya_fumi_toutyakumachi_hajimari < 0)){ //「一日のはじまりの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'お気に入りの曲の話題' && f.katuraginomiya_fumi_toutyakumachi_music < 0){ //「お気に入りの曲の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_music=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_music=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_music=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '道の話題' && f.katuraginomiya_fumi_toutyakumachi_michi < 0){ //「道の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_michi=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_michi=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_michi=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '変化と永遠についての話題' && f.katuraginomiya_fumi_toutyakumachi_henka < 0){ //「変化と永遠についての話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_henka=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_henka=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_henka=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '怪談についての話題' && f.katuraginomiya_fumi_toutyakumachi_kaidan < 0){ //「怪談についての話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kaidan=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kaidan=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kaidan=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}
//テスト用設定：tf.test_katuraginomiya_fumi_hensin_speed==0の場合、全手紙が翌週届く
if(tf.test_katuraginomiya_fumi_hensin_speed==0){
if(f.katuraginomiya_fumi_toutyakumachi_shumi>0)f.katuraginomiya_fumi_toutyakumachi_shumi=0;
if(f.katuraginomiya_fumi_toutyakumachi_sigoto>0)f.katuraginomiya_fumi_toutyakumachi_sigoto=0;
if(f.katuraginomiya_fumi_toutyakumachi_kazoku>0)f.katuraginomiya_fumi_toutyakumachi_kazoku=0;
if(f.katuraginomiya_fumi_toutyakumachi_kisetsu>0)f.katuraginomiya_fumi_toutyakumachi_kisetsu=0;
if(f.katuraginomiya_fumi_toutyakumachi_shourai>0)f.katuraginomiya_fumi_toutyakumachi_shourai=0;
if(f.katuraginomiya_fumi_toutyakumachi_yuujin>0)f.katuraginomiya_fumi_toutyakumachi_yuujin=0;
if(f.katuraginomiya_fumi_toutyakumachi_shokuji>0)f.katuraginomiya_fumi_toutyakumachi_shokuji=0;
if(f.katuraginomiya_fumi_toutyakumachi_kangeki>0)f.katuraginomiya_fumi_toutyakumachi_kangeki=0;
if(f.katuraginomiya_fumi_toutyakumachi_neko>0)f.katuraginomiya_fumi_toutyakumachi_neko=0;
if(f.katuraginomiya_fumi_toutyakumachi_kiki>0)f.katuraginomiya_fumi_toutyakumachi_kiki=0;
if(f.katuraginomiya_fumi_toutyakumachi_midori>0)f.katuraginomiya_fumi_toutyakumachi_midori=0;
if(f.katuraginomiya_fumi_toutyakumachi_photo>0)f.katuraginomiya_fumi_toutyakumachi_photo=0;
if(f.katuraginomiya_fumi_toutyakumachi_hajimari>0)f.katuraginomiya_fumi_toutyakumachi_hajimari=0;
if(f.katuraginomiya_fumi_toutyakumachi_music>0)f.katuraginomiya_fumi_toutyakumachi_music=0;
if(f.katuraginomiya_fumi_toutyakumachi_michi>0)f.katuraginomiya_fumi_toutyakumachi_michi=0;
if(f.katuraginomiya_fumi_toutyakumachi_henka>0)f.katuraginomiya_fumi_toutyakumachi_henka=0;
if(f.katuraginomiya_fumi_toutyakumachi_kaidan>0)f.katuraginomiya_fumi_toutyakumachi_kaidan=0;
if(f.katuraginomiya_fumi_toutyakumachi_dokusho>0)f.katuraginomiya_fumi_toutyakumachi_dokusho=0;
if(f.katuraginomiya_fumi_toutyakumachi_sports>0)f.katuraginomiya_fumi_toutyakumachi_sports=0;
if(f.katuraginomiya_fumi_toutyakumachi_sintya>0)f.katuraginomiya_fumi_toutyakumachi_sintya=0;
if(f.katuraginomiya_fumi_toutyakumachi_satuki>0)f.katuraginomiya_fumi_toutyakumachi_satuki=0;
sf.katuraginomiya['fumi_hindo_week']=0;
}
}
[endscript]
@jump storage="fumi_wadai_owari.ks"
