  .text
  .globl _ZNKSs4findEPKcj
  .type _ZNKSs4findEPKcj, @function

#! file-offset 0x458a0
#! rip-offset  0x458a0
#! capacity    128 bytes

# Text                     #  Line  RIP      Bytes  
._ZNKSs4findEPKcj:         #        0x458a0  0      
  movq %r12, -0x10(%rsp)   #  1     0x458a0  5      
  movl %esi, %r12d         #  2     0x458a5  3      
  movq %rbx, -0x18(%rsp)   #  3     0x458a8  5      
  movq %r13, -0x8(%rsp)    #  4     0x458ad  5      
  movl %edi, %ebx          #  5     0x458b2  2      
  subl $0x18, %esp         #  6     0x458b4  3      
  addq %r15, %rsp          #  7     0x458b7  3      
  movl %edx, %r13d         #  8     0x458ba  3      
  movl %r12d, %edi         #  9     0x458bd  3      
  nop                      #  10    0x458c0  1      
  nop                      #  11    0x458c1  1      
  callq .strlen            #  12    0x458c2  5      
  movl %r13d, %edx         #  13    0x458c7  3      
  movl %r12d, %esi         #  14    0x458ca  3      
  movl %ebx, %edi          #  15    0x458cd  2      
  movq 0x8(%rsp), %r12     #  16    0x458cf  5      
  movq (%rsp), %rbx        #  17    0x458d4  4      
  movl %eax, %ecx          #  18    0x458d8  2      
  movq 0x10(%rsp), %r13    #  19    0x458da  5      
  addl $0x18, %esp         #  20    0x458df  3      
  addq %r15, %rsp          #  21    0x458e2  3      
  xchgw %ax, %ax           #  22    0x458e5  3      
  jmpq ._ZNKSs4findEPKcjj  #  23    0x458e8  5      
  nop                      #  24    0x458ed  1      
  nop                      #  25    0x458ee  1      
  nop                      #  26    0x458ef  1      
  nop                      #  27    0x458f0  1      
  nop                      #  28    0x458f1  1      
  nop                      #  29    0x458f2  1      
  nop                      #  30    0x458f3  1      
  nop                      #  31    0x458f4  1      
  nop                      #  32    0x458f5  1      
  nop                      #  33    0x458f6  1      
  nop                      #  34    0x458f7  1      
  nop                      #  35    0x458f8  1      
  nop                      #  36    0x458f9  1      
  nop                      #  37    0x458fa  1      
  nop                      #  38    0x458fb  1      
  nop                      #  39    0x458fc  1      
  nop                      #  40    0x458fd  1      
  nop                      #  41    0x458fe  1      
  nop                      #  42    0x458ff  1      
  nop                      #  43    0x45900  1      
  nop                      #  44    0x45901  1      
  nop                      #  45    0x45902  1      
  nop                      #  46    0x45903  1      
  nop                      #  47    0x45904  1      
  nop                      #  48    0x45905  1      
  nop                      #  49    0x45906  1      
  nop                      #  50    0x45907  1      
                                                    
.size _ZNKSs4findEPKcj, .-_ZNKSs4findEPKcj

