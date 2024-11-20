def check():
    data=[0x6D, 0x61, 0x64, 0x75, 0x69, 0x65, 0x72, 0x73, 0x6E, 0x66, 
  0x6F, 0x74, 0x76, 0x62, 0x79, 0x6C]
    
    key="sabres"
    arr=[ord(i) for i in key]
    index=[]
    for i in arr :
        index.append(data.index(i))
    #print(index)
    for i in index:
        if(i < 32): i+=64
        print(chr(i),end="")
    

check()