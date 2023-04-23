file=open("factoring.txt","r+")
filecontent=file.read()
split=filecontent.split()
print(split)

for i in split:
    nt=i[0]
    #print(nt)
    rules = i[3:].split("|")
    #print(rules)
    alpha = None
    for j in range(len(rules[0])+1):
        if rules[0][0:j] == rules[1][0:j]:
            alpha = rules[1][0:j]
    #print(alpha)
    newrules =[]
    str1 = nt+"->"+alpha+nt+"'"
    for j in rules:
        if alpha not in j:
            str1 += "|"+j 
    
    newrules.append(str1)
    str2 = nt+"'->"
    for j in rules:
        if alpha in j:        
            beta = j.replace(alpha, "")
            if(beta==""):
                str2 = str2+"3|"
            else:
                str2 = str2+beta+"|"
    newrules.append(str2[0:len(str2)-1])
    for r in newrules:
        print(r)
    print()

file.close()