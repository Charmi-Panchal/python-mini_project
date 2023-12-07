def password(pswd):
	import re
	count=0
	
	# for passw in passwords:
	if 8<=len(pswd)<=12:
		count+=1
		dmo=re.search(r'\d',pswd)
		if dmo:
			count+=1
			cmo=re.search(r'[A-Z]+',pswd)
			if cmo:
				count+=1
				scmo=re.search(r'\w+\W+',pswd)
				if scmo:
					count+=1
	if count==4:
		return True
	else:
		return False
