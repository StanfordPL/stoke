  .text
  .globl sulp
  .type sulp, @function

#! file-offset 0x168f80
#! rip-offset  0x128f80
#! capacity    160 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.sulp:                     #        0x128f80  0      OPC=0     
  movq %rbx, -0x10(%rsp)   #  1     0x128f80  5      OPC=1138  
  movq %r12, -0x8(%rsp)    #  2     0x128f85  5      OPC=1138  
  subl $0x38, %esp         #  3     0x128f8a  3      OPC=2384  
  addq %r15, %rsp          #  4     0x128f8d  3      OPC=72    
  movq %rdi, 0x8(%rsp)     #  5     0x128f90  5      OPC=1138  
  movl %esi, %r12d         #  6     0x128f95  3      OPC=1157  
  movq %rdi, %rbx          #  7     0x128f98  3      OPC=1162  
  nop                      #  8     0x128f9b  1      OPC=1343  
  nop                      #  9     0x128f9c  1      OPC=1343  
  nop                      #  10    0x128f9d  1      OPC=1343  
  nop                      #  11    0x128f9e  1      OPC=1343  
  nop                      #  12    0x128f9f  1      OPC=1343  
  movsd 0x8(%rsp), %xmm0   #  13    0x128fa0  6      OPC=1263  
  nop                      #  14    0x128fa6  1      OPC=1343  
  nop                      #  15    0x128fa7  1      OPC=1343  
  nop                      #  16    0x128fa8  1      OPC=1343  
  nop                      #  17    0x128fa9  1      OPC=1343  
  nop                      #  18    0x128faa  1      OPC=1343  
  nop                      #  19    0x128fab  1      OPC=1343  
  nop                      #  20    0x128fac  1      OPC=1343  
  nop                      #  21    0x128fad  1      OPC=1343  
  nop                      #  22    0x128fae  1      OPC=1343  
  nop                      #  23    0x128faf  1      OPC=1343  
  nop                      #  24    0x128fb0  1      OPC=1343  
  nop                      #  25    0x128fb1  1      OPC=1343  
  nop                      #  26    0x128fb2  1      OPC=1343  
  nop                      #  27    0x128fb3  1      OPC=1343  
  nop                      #  28    0x128fb4  1      OPC=1343  
  nop                      #  29    0x128fb5  1      OPC=1343  
  nop                      #  30    0x128fb6  1      OPC=1343  
  nop                      #  31    0x128fb7  1      OPC=1343  
  nop                      #  32    0x128fb8  1      OPC=1343  
  nop                      #  33    0x128fb9  1      OPC=1343  
  nop                      #  34    0x128fba  1      OPC=1343  
  callq .__ulp             #  35    0x128fbb  5      OPC=260   
  testl %r12d, %r12d       #  36    0x128fc0  3      OPC=2436  
  je .L_129000             #  37    0x128fc3  6      OPC=893   
  nop                      #  38    0x128fc9  1      OPC=1343  
  nop                      #  39    0x128fca  1      OPC=1343  
  shrq $0x20, %rbx         #  40    0x128fcb  4      OPC=2315  
  movl $0x6b, %eax         #  41    0x128fcf  5      OPC=1154  
  andl $0x7ff00000, %ebx   #  42    0x128fd4  6      OPC=131   
  shrl $0x14, %ebx         #  43    0x128fda  3      OPC=2312  
  subl %ebx, %eax          #  44    0x128fdd  2      OPC=2386  
  testl %eax, %eax         #  45    0x128fdf  2      OPC=2436  
  nop                      #  46    0x128fe1  1      OPC=1343  
  nop                      #  47    0x128fe2  1      OPC=1343  
  nop                      #  48    0x128fe3  1      OPC=1343  
  nop                      #  49    0x128fe4  1      OPC=1343  
  nop                      #  50    0x128fe5  1      OPC=1343  
  jle .L_129000            #  51    0x128fe6  6      OPC=919   
  nop                      #  52    0x128fec  1      OPC=1343  
  nop                      #  53    0x128fed  1      OPC=1343  
  shll $0x14, %eax         #  54    0x128fee  3      OPC=2269  
  addl $0x3ff00000, %eax   #  55    0x128ff1  5      OPC=46    
  movq %rax, %rdx          #  56    0x128ff6  3      OPC=1162  
  shlq $0x20, %rdx         #  57    0x128ff9  4      OPC=2272  
  movq %rdx, 0x18(%rsp)    #  58    0x128ffd  5      OPC=1138  
  mulsd 0x18(%rsp), %xmm0  #  59    0x129002  6      OPC=1325  
  nop                      #  60    0x129008  1      OPC=1343  
  nop                      #  61    0x129009  1      OPC=1343  
  nop                      #  62    0x12900a  1      OPC=1343  
  nop                      #  63    0x12900b  1      OPC=1343  
.L_129000:                 #        0x12900c  0      OPC=0     
  movq 0x28(%rsp), %rbx    #  64    0x12900c  5      OPC=1161  
  movq 0x30(%rsp), %r12    #  65    0x129011  5      OPC=1161  
  addl $0x38, %esp         #  66    0x129016  3      OPC=65    
  addq %r15, %rsp          #  67    0x129019  3      OPC=72    
  popq %r11                #  68    0x12901c  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  69    0x12901e  7      OPC=131   
  nop                      #  70    0x129025  1      OPC=1343  
  nop                      #  71    0x129026  1      OPC=1343  
  nop                      #  72    0x129027  1      OPC=1343  
  nop                      #  73    0x129028  1      OPC=1343  
  addq %r15, %r11          #  74    0x129029  3      OPC=72    
  jmpq %r11                #  75    0x12902c  3      OPC=928   
  nop                      #  76    0x12902f  1      OPC=1343  
  nop                      #  77    0x129030  1      OPC=1343  
  nop                      #  78    0x129031  1      OPC=1343  
  nop                      #  79    0x129032  1      OPC=1343  
                                                               
.size sulp, .-sulp

