import random
u_c=[chr(i) for i in range(ord('A'),ord('Z')+1)]
l_c=[chr(i) for i in range(ord('a'),ord('z')+1)]
def genotp():
    otp=''
    for i in range(2):
        otp=otp+random.choice(u_c) #otp= ''+'K'
        otp=otp+random.choice(l_c) #otp='K'+'l'
        otp=otp+str(random.randint(0,9)) #otp='KL'+'8'
    return otp
