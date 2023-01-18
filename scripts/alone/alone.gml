function alone() {
	if (piece == noone) {
		if (ul != noone) return false;
		if (ml != noone) return false;
		if (ll != noone) return false;
		if (ur != noone) return false;
		if (mr != noone) return false;
		if (lr != noone) return false;
		return true;
	}
	return false;


}
