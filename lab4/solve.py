# #phase1
# # arr=[]
# # input=15
# # for i in range (6):
# #     arr.append(input)
# #     input*=2


# # print(arr)    
# #phase2

# # key ="mnjsiyy@zny.jiz.as"

# # def tranfer(a):
# #     v3= a
# #     if ( (v3 <= 96 or v3 > 122) and (v3 <= 64 or v3 > 90) ):   
# #       if ( v3 > 47 and v3 <= 57 ):
# #         v3 = (v3 - 48 + 5) % 10 + 48
    
# #     else:
# #       if ( v3 <= 96 ):
# #         v2 = 65
# #       else:
# #         v2 = 97
# #       v3 = (v3 - v2 + 5) % 26 + v2
# #     return v3
# # flag=[]
# # for i in key :
# #    for j in range (32,127):
# #       tmp = tranfer(j)
# #       if(tmp == ord(i)):
# #        flag.append(chr(j))
# #        break
# # for i in flag :
# #     print(i,end="")        

#phase4
# def re_num(v3,v0,v14):
#     v4 = (v14 - v0) / 2 + v0
#     if ( v4 > v3 ):
#      return 2*re_num(v3, v0, v4 - 1)
#     if ( v4 >= v3 ):
#      return 0
#     return 2*re_num(v3, v4 + 1, v14) + 1

# a1=0
# a2=14
# for i in range (-1,15):
#   print(re_num(i,a1,a2)) 
#   if(re_num(i,a1,a2)==5):
#     print("result:",i)
  
     
    

# #phase5
# def check(a1):
#     data = [0x2,0xa, 0x6, 0x1, 0xc, 0x10, 0x9, 0x3, 0x4, 0x7, 0xe, 0x5, 0xb, 0x8, 0xf, 0xd]
#     v3=0
    
#     arr=[i for i in a1]
#     for i in arr :
#         v3+= data[ord(i)&0XF]
       
      
#     if(v3==46): return True  
#     else: return False 
        
# result=[]
# for i in range (0,1000000):
#     input_num= str(i).zfill(6)
    
#     if(check(input_num)):
#         print(input_num)
        

a=[13,13,13,13,13,2]
for i in a:
    print(chr(i),end="")
        
