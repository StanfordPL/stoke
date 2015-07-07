  .text
  .globl FreeVariable
  .type FreeVariable, @function

#! file-offset 0x5e6a
#! rip-offset  0x405e6a
#! capacity    113 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.FreeVariable:                  #        0x405e6a  0      OPC=0     
  pushq %r12                    #  1     0x405e6a  2      OPC=1861  
  pushq %rbp                    #  2     0x405e6c  1      OPC=1861  
  pushq %rbx                    #  3     0x405e6d  1      OPC=1861  
  movq %rdi, %r12               #  4     0x405e6e  3      OPC=1162  
  movq 0x8(%rdi), %rax          #  5     0x405e71  4      OPC=1161  
  movslq 0xc(%rax), %rdx        #  6     0x405e75  4      OPC=1288  
  cmpl %edx, 0x10(%rax)         #  7     0x405e79  3      OPC=457   
  jge .L_405ecc                 #  8     0x405e7c  6      OPC=907   
  nop                           #  9     0x405e82  1      OPC=1343  
  nop                           #  10    0x405e83  1      OPC=1343  
  xorl %ebp, %ebp               #  11    0x405e84  2      OPC=3758  
.L_405e80:                      #        0x405e86  0      OPC=0     
  testq %rbp, %rbp              #  12    0x405e86  3      OPC=2438  
  je .L_405ec0                  #  13    0x405e89  6      OPC=893   
  nop                           #  14    0x405e8f  1      OPC=1343  
  nop                           #  15    0x405e90  1      OPC=1343  
  movsbl 0x12(%rbp), %ebx       #  16    0x405e91  4      OPC=1280  
  subl $0x1, %ebx               #  17    0x405e95  3      OPC=2384  
  js .L_405eaa                  #  18    0x405e98  6      OPC=1043  
  nop                           #  19    0x405e9e  1      OPC=1343  
  nop                           #  20    0x405e9f  1      OPC=1343  
.L_405e8e:                      #        0x405ea0  0      OPC=0     
  movslq %ebx, %rax             #  21    0x405ea0  3      OPC=1289  
  movq 0x20(%rbp,%rax,8), %rax  #  22    0x405ea3  5      OPC=1161  
  movq 0x8(%rax), %rdi          #  23    0x405ea8  4      OPC=1161  
  movq %rbp, %rsi               #  24    0x405eac  3      OPC=1162  
  callq .List_Remove            #  25    0x405eaf  5      OPC=260   
  subl $0x1, %ebx               #  26    0x405eb4  3      OPC=2384  
  cmpl $0xffffffff, %ebx        #  27    0x405eb7  6      OPC=469   
  nop                           #  28    0x405ebd  1      OPC=1343  
  nop                           #  29    0x405ebe  1      OPC=1343  
  nop                           #  30    0x405ebf  1      OPC=1343  
  jne .L_405e8e                 #  31    0x405ec0  6      OPC=963   
  nop                           #  32    0x405ec6  1      OPC=1343  
  nop                           #  33    0x405ec7  1      OPC=1343  
.L_405eaa:                      #        0x405ec8  0      OPC=0     
  movq %rbp, %rdi               #  34    0x405ec8  3      OPC=1162  
  callq .Constraint_Destroy     #  35    0x405ecb  5      OPC=260   
  movq 0x8(%r12), %rax          #  36    0x405ed0  5      OPC=1161  
  movslq 0xc(%rax), %rdx        #  37    0x405ed5  4      OPC=1288  
  cmpl %edx, 0x10(%rax)         #  38    0x405ed9  3      OPC=457   
  jge .L_405ecc                 #  39    0x405edc  6      OPC=907   
  nop                           #  40    0x405ee2  1      OPC=1343  
  nop                           #  41    0x405ee3  1      OPC=1343  
.L_405ec0:                      #        0x405ee4  0      OPC=0     
  movq %r12, %rdi               #  42    0x405ee4  3      OPC=1162  
  popq %rbx                     #  43    0x405ee7  1      OPC=1694  
  popq %rbp                     #  44    0x405ee8  1      OPC=1694  
  popq %r12                     #  45    0x405ee9  2      OPC=1694  
  jmpq .Variable_Destroy        #  46    0x405eeb  5      OPC=930   
.L_405ecc:                      #        0x405ef0  0      OPC=0     
  movq (%rax), %rcx             #  47    0x405ef0  3      OPC=1161  
  leal 0x1(%rdx), %esi          #  48    0x405ef3  3      OPC=1066  
  movl %esi, 0xc(%rax)          #  49    0x405ef6  3      OPC=1136  
  movq (%rcx,%rdx,8), %rbp      #  50    0x405ef9  4      OPC=1161  
  jmpq .L_405e80                #  51    0x405efd  5      OPC=930   
  nop                           #  52    0x405f02  1      OPC=1343  
  nop                           #  53    0x405f03  1      OPC=1343  
                                                                    
.size FreeVariable, .-FreeVariable

