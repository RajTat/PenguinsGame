function reOrder() {
	if		(winners[1] == 1) GamePlay.place1 = 100;
	else if (winners[1] == 2) GamePlay.place2 = 100;
	else if (winners[1] == 3) GamePlay.place3 = 100;
	else if (winners[1] == 4) GamePlay.place4 = 100;

	if		(winners[2] == 1) GamePlay.place1 = 225;
	else if (winners[2] == 2) GamePlay.place2 = 225;
	else if (winners[2] == 3) GamePlay.place3 = 225;
	else if (winners[2] == 4) GamePlay.place4 = 225;

	if		(winners[3] == 1) GamePlay.place1 = 350;
	else if (winners[3] == 2) GamePlay.place2 = 350;
	else if (winners[3] == 3) GamePlay.place3 = 350;
	else if (winners[3] == 4) GamePlay.place4 = 350;

	if		(winners[4] == 1) GamePlay.place1 = 475;
	else if (winners[4] == 2) GamePlay.place2 = 475;
	else if (winners[4] == 3) GamePlay.place3 = 475;
	else if (winners[4] == 4) GamePlay.place4 = 475;


}
