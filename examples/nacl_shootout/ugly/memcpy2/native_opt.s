  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x697e0
#! rip-offset  0x297e0
#! capacity    128 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.my_memcpy:                  #        0x406e82  0      OPC=0     
  nop
  nop
  imull $0x1, %edi, %eax     #  1     0x406e82  6      OPC=822   
  movq $0x0, %rcx            #  2     0x406e88  7      OPC=1159  
  cmpl $0x10, %eax           #  3     0x406e8f  5      OPC=451   
  nopl %eax                  #  4     0x406e94  3      OPC=1347  
  nop                        #  5     0x406e97  1      OPC=1343  
  nop                        #  6     0x406e98  1      OPC=1343  
  je .L_406e9e               #  7     0x406e99  6      OPC=893   
  nop                        #  8     0x406e9f  1      OPC=1343  
.L_406e8c:                   #        0x406ea0  0      OPC=0     
  leal (%rsi,%rcx,1), %r9d   #  9     0x406ea0  4      OPC=1066  
  movsbl (%r15,%r9,1), %r8d  #  10    0x406ea4  5      OPC=1280  
  leal (%rax,%rcx,1), %r9d   #  11    0x406ea9  4      OPC=1066  
  movb %r8b, (%r15,%r9,1)    #  12    0x406ead  4      OPC=1141  
  addq $0x1, %rcx            #  13    0x406eb1  4      OPC=70    
  cmpl %ecx, %edx            #  14    0x406eb5  2      OPC=473   
  jne .L_406e8c              #  15    0x406eb7  6      OPC=963   
  nop                        #  16    0x406ebd  1      OPC=1343  
  nop                        #  17    0x406ebe  1      OPC=1343  
  nop                        #  18    0x406ebf  1      OPC=1343  
.L_406e9e:                   #        0x406ec0  0      OPC=0     
  popq %r11                    #  70    0x2984c  2      OPC=1694  
  andl $0xe0, %r11d            #  71    0x2984e  4      OPC=132   
  addq %r15, %r11              #  76    0x29859  3      OPC=72    
  jmpq %r11                    #  77    0x2985c  3      OPC=928   
                                                                
.size my_memcpy, .-my_memcpy
