# a) [a-zA-Z]*e$
# b) unmöglich
# c) [([Mo|Tu|We|Th|Fr|Sa|Su] - [Mo|Tu|We|Th|Fr|Sa|Su]) | [winter|summer]]? [\d?\d:\d\d [am|pm] -? ?,]+

	# [([Mo|Tu|We|Th|Fr|Sa|Su] - [Mo|Tu|We|Th|Fr|Sa|Su]) | [winter|summer]]? [\d?\d:\d\d [am|pm] -? ?,]+


	# - ... Mo-Fr 8:30am-4:30pm ...
 #    - ... winter: 6:30 pm, 7:30pm, 8:30 pm daily; summer: 8:30pm, 9:30pm, 10:30pm daily ...
 #    - ... 9 am - 4:30 pm ...
 



import re
# p = re.compile('[a-zA-Z]*e$')
p = re.compile('(\w\w\w\w)$')

s=['ww', 'thte', 'WWWweeE', 'e', 'wwwwEeeEeweweweOOe']

for w in s:
	if(p.match(w)):
		print('Match: ' + w)
	else:
		print('Not matched: ' + w)




