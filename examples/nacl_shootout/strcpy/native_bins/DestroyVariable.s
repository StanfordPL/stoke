  .text
  .globl DestroyVariable
  .type DestroyVariable, @function

#! file-offset 0x67a5
#! rip-offset  0x4067a5
#! capacity    81 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.DestroyVariable:            #        0x4067a5  0      OPC=0     
  pushq %rbx                 #  1     0x4067a5  1      OPC=1861  
  movq %rdi, %rbx            #  2     0x4067a6  3      OPC=1162  
  movq 0x8(%rdi), %rax       #  3     0x4067a9  4      OPC=1161  
  movslq 0xc(%rax), %rdx     #  4     0x4067ad  4      OPC=1288  
  cmpl %edx, 0x10(%rax)      #  5     0x4067b1  3      OPC=457   
  jge .L_4067e7              #  6     0x4067b4  6      OPC=907   
  nop                        #  7     0x4067ba  1      OPC=1343  
  nop                        #  8     0x4067bb  1      OPC=1343  
  xorl %edi, %edi            #  9     0x4067bc  2      OPC=3758  
.L_4067b8:                   #        0x4067be  0      OPC=0     
  testq %rdi, %rdi           #  10    0x4067be  3      OPC=2438  
  je .L_4067cf               #  11    0x4067c1  6      OPC=893   
  nop                        #  12    0x4067c7  1      OPC=1343  
  nop                        #  13    0x4067c8  1      OPC=1343  
  callq .DestroyConstraint   #  14    0x4067c9  5      OPC=260   
  movq 0x8(%rbx), %rax       #  15    0x4067ce  4      OPC=1161  
  movslq 0xc(%rax), %rdx     #  16    0x4067d2  4      OPC=1288  
  cmpl %edx, 0x10(%rax)      #  17    0x4067d6  3      OPC=457   
  jge .L_4067e7              #  18    0x4067d9  6      OPC=907   
  nop                        #  19    0x4067df  1      OPC=1343  
  nop                        #  20    0x4067e0  1      OPC=1343  
.L_4067cf:                   #        0x4067e1  0      OPC=0     
  movq %rbx, %rsi            #  21    0x4067e1  3      OPC=1162  
  movq 0x21ec77(%rip), %rdi  #  22    0x4067e4  7      OPC=1161  
  callq .List_Remove         #  23    0x4067eb  5      OPC=260   
  movq %rbx, %rdi            #  24    0x4067f0  3      OPC=1162  
  popq %rbx                  #  25    0x4067f3  1      OPC=1694  
  jmpq .Variable_Destroy     #  26    0x4067f4  5      OPC=930   
.L_4067e7:                   #        0x4067f9  0      OPC=0     
  movq (%rax), %rcx          #  27    0x4067f9  3      OPC=1161  
  leal 0x1(%rdx), %esi       #  28    0x4067fc  3      OPC=1066  
  movl %esi, 0xc(%rax)       #  29    0x4067ff  3      OPC=1136  
  movq (%rcx,%rdx,8), %rdi   #  30    0x406802  4      OPC=1161  
  jmpq .L_4067b8             #  31    0x406806  5      OPC=930   
  nop                        #  32    0x40680b  1      OPC=1343  
  nop                        #  33    0x40680c  1      OPC=1343  
                                                                 
.size DestroyVariable, .-DestroyVariable

