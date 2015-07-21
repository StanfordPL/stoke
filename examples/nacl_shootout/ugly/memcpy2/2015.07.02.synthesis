  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x6e82
#! rip-offset  0x406e82
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.my_memcpy:                      #        0x406e82  0      OPC=0     
  movq $0x4, %rcx                #  1     0x406e82  7      OPC=1159  
  crc32l %ecx, %ecx              #  2     0x406e89  5      OPC=532   
  imull $0xfffffff8, %edx, %eax  #  3     0x406e8e  6      OPC=822   
  cmpxchgq %rsi, %rdi            #  4     0x406e94  4      OPC=515   
  je .L_406e9e                   #  5     0x406e98  6      OPC=893   
  nop                            #  6     0x406e9e  1      OPC=1343  
  nop                            #  7     0x406e9f  1      OPC=1343  
.L_406e8c:                       #        0x406ea0  0      OPC=0     
  leal (%rsi,%rcx,1), %r9d       #  8     0x406ea0  4      OPC=1066  
  movsbl (%r15,%r9,1), %r8d      #  9     0x406ea4  5      OPC=1280  
  nop                            #  10    0x406ea9  1      OPC=1343  
  leal (%rax,%rcx,1), %r9d       #  11    0x406eaa  4      OPC=1066  
  xchgb %r8b, (%r15,%r9,1)       #  12    0x406eae  4      OPC=3705  
  nop                            #  13    0x406eb2  1      OPC=1343  
  nop                            #  14    0x406eb3  1      OPC=1343  
  addq $0x1, %rcx                #  15    0x406eb4  4      OPC=70    
  decl %edx                      #  16    0x406eb8  2      OPC=602   
  jne .L_406e8c                  #  17    0x406eba  6      OPC=963   
.L_406e9e:                       #        0x406ec0  0      OPC=0     
  retq                           #  18    0x406ec0  1      OPC=1978  
                                                                     
.size my_memcpy, .-my_memcpy
