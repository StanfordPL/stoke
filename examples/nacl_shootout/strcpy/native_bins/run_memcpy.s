  .text
  .globl run_memcpy
  .type run_memcpy, @function

#! file-offset 0x6dfe
#! rip-offset  0x406dfe
#! capacity    132 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.run_memcpy:                  #        0x406dfe  0      OPC=0     
  pushq %rbp                  #  1     0x406dfe  1      OPC=1861  
  pushq %rbx                  #  2     0x406dff  1      OPC=1861  
  subq $0x8, %rsp             #  3     0x406e00  4      OPC=2389  
  movl %edi, %ebp             #  4     0x406e04  2      OPC=1157  
  movl $0x400, %edi           #  5     0x406e06  5      OPC=1154  
  callq .malloc_plt           #  6     0x406e0b  5      OPC=260   
  movq %rax, %rbx             #  7     0x406e10  3      OPC=1162  
  movl $0x400, %edi           #  8     0x406e13  5      OPC=1154  
  callq .malloc_plt           #  9     0x406e18  5      OPC=260   
  movq %rax, %rsi             #  10    0x406e1d  3      OPC=1162  
  xorl %eax, %eax             #  11    0x406e20  2      OPC=3758  
.L_406e22:                    #        0x406e22  0      OPC=0     
  movb %al, (%rbx,%rax,1)     #  12    0x406e22  3      OPC=1141  
  addq $0x1, %rax             #  13    0x406e25  4      OPC=70    
  cmpq $0x400, %rax           #  14    0x406e29  6      OPC=485   
  jne .L_406e22               #  15    0x406e2f  6      OPC=963   
  nop                         #  16    0x406e35  1      OPC=1343  
  nop                         #  17    0x406e36  1      OPC=1343  
  movslq %ebp, %rdi           #  18    0x406e37  3      OPC=1289  
  xorw %ax, %ax               #  19    0x406e3a  3      OPC=3753  
  testq %rdi, %rdi            #  20    0x406e3d  3      OPC=2438  
  je .L_406e5b                #  21    0x406e40  6      OPC=893   
  nop                         #  22    0x406e46  1      OPC=1343  
  nop                         #  23    0x406e47  1      OPC=1343  
.L_406e3c:                    #        0x406e48  0      OPC=0     
  xorl %edx, %edx             #  24    0x406e48  2      OPC=3758  
.L_406e3e:                    #        0x406e4a  0      OPC=0     
  movzbl (%rbx,%rdx,1), %ecx  #  25    0x406e4a  4      OPC=1302  
  movb %cl, (%rsi,%rdx,1)     #  26    0x406e4e  3      OPC=1141  
  addq $0x1, %rdx             #  27    0x406e51  4      OPC=70    
  cmpq $0x400, %rdx           #  28    0x406e55  7      OPC=474   
  jne .L_406e3e               #  29    0x406e5c  6      OPC=963   
  nop                         #  30    0x406e62  1      OPC=1343  
  nop                         #  31    0x406e63  1      OPC=1343  
  addq $0x1, %rax             #  32    0x406e64  4      OPC=70    
  cmpq %rdi, %rax             #  33    0x406e68  3      OPC=477   
  jb .L_406e3c                #  34    0x406e6b  6      OPC=875   
  nop                         #  35    0x406e71  1      OPC=1343  
  nop                         #  36    0x406e72  1      OPC=1343  
.L_406e5b:                    #        0x406e73  0      OPC=0     
  xorl %edx, %edx             #  37    0x406e73  2      OPC=3758  
  xorl %eax, %eax             #  38    0x406e75  2      OPC=3758  
.L_406e5f:                    #        0x406e77  0      OPC=0     
  movzbl (%rsi,%rdx,1), %edi  #  39    0x406e77  4      OPC=1302  
  xorl %ecx, %ecx             #  40    0x406e7b  2      OPC=3758  
  cmpb %dil, (%rbx,%rdx,1)    #  41    0x406e7d  4      OPC=462   
  setne %cl                   #  42    0x406e81  3      OPC=2208  
  orl %ecx, %eax              #  43    0x406e84  2      OPC=1380  
  addq $0x1, %rdx             #  44    0x406e86  4      OPC=70    
  cmpq $0x400, %rdx           #  45    0x406e8a  7      OPC=474   
  jne .L_406e5f               #  46    0x406e91  6      OPC=963   
  nop                         #  47    0x406e97  1      OPC=1343  
  nop                         #  48    0x406e98  1      OPC=1343  
  addq $0x8, %rsp             #  49    0x406e99  4      OPC=70    
  popq %rbx                   #  50    0x406e9d  1      OPC=1694  
  popq %rbp                   #  51    0x406e9e  1      OPC=1694  
  retq                        #  52    0x406e9f  1      OPC=1978  
                                                                  
.size run_memcpy, .-run_memcpy

