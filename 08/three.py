# 1.
# Not matched: A. B
# Not matched: c! d
# Not matched: e f
# Match: g. H
# Match: i? J
# Not matched: k L


# 2.
# Not matched: very fat man
# Not matched: fat tall man
# Match: very very fat ugly man
# Match: very very very tall man

# 3.
# Match: <an xml tag>
# Match: <opentag> <closetag>
# Match: </closetag>
# Not matched: <>
# Match: <with attribute=”77”>


# import re
# p = re.compile('[a-z][\.\?!]\s+[A-Z]')

# s=['A. B', 'c! d', 'e f', 'g. H', 'i? J', 'k L']

# for w in s:
# 	if(p.match(w)):
# 		print('Match: ' + w)
# 	else:
# 		print('Not matched: ' + w)



# import re
# p = re.compile('(very )+(fat )?(tall|ugly) man')

# s=['very fat man', 'fat tall man', 'very very fat ugly man', 'very very very tall man']

# for w in s:
# 	if(p.match(w)):
# 		print('Match: ' + w)
# 	else:
# 		print('Not matched: ' + w)




import re
p = re.compile('<[^>]+>')

s=['<an xml tag>', '<opentag> <closetag>', '</closetag>', '<>', '<with attribute=”77”>']

for w in s:
	if(p.match(w)):
		print('Match: ' + w)
	else:
		print('Not matched: ' + w)




