1. A = (pit|spot|spate|slap two|respite)
2. A = (rap them|tapeth|apth|wrap/try|sap tray|87ap9th|apothecary)
3. A = (affgfking|rafgkahe|bafghk|baffgkit|affgfking|rafgkahe|bafghk|baffg kit)

# 1.
# import re
# p = re.compile('(pit|spot|spate|slap two|respite)')

# s=['pit','spot','spate','slap two','respite','pt','Pot','peat','part']

# for w in s:
# 	if(p.match(w)):
# 		print('Match: ' + w)
# 	else:
# 		print('Not matched: ' + w)


# 2.
# import re
# p = re.compile('(rap them|tapeth|apth|wrap/try|sap tray|87ap9th|apothecary)')

# s = ['rap them','tapeth','apth','wrap/try','sap tray','87ap9th','apothecary']

# for w in s:
# 	if(p.match(w)):
# 		print('Match: ' + w)
# 	else:
# 		print('Not matched: ' + w)

# 3.
import re
p = re.compile('(affgfking|rafgkahe|bafghk|baffgkit|affgfking|rafgkahe|bafghk|baffg kit)')

s = ['affgfking','rafgkahe','bafghk','baffgkit','affgfking','rafgkahe','bafghk','baffg kit','fgok','a fgk','affgm','afffhk','fgok','afg.K','aff gm','afffhgk']
for w in s:
	if(p.match(w)):
		print('Match: ' + w)
	else:
		print('Not matched: ' + w)





