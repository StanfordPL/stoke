  .text
  .globl _ZNKSs5rfindEPKcj
  .type _ZNKSs5rfindEPKcj, @function

#! file-offset 0x45820
#! rip-offset  0x45820
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindEPKcj:         #        0x45820  0      
  movq %r12, -0x10(%rsp)    #  1     0x45820  5      
  movl %esi, %r12d          #  2     0x45825  3      
  movq %rbx, -0x18(%rsp)    #  3     0x45828  5      
  movq %r13, -0x8(%rsp)     #  4     0x4582d  5      
  movl %edi, %ebx           #  5     0x45832  2      
  subl $0x18, %esp          #  6     0x45834  3      
  addq %r15, %rsp           #  7     0x45837  3      
  movl %edx, %r13d          #  8     0x4583a  3      
  movl %r12d, %edi          #  9     0x4583d  3      
  nop                       #  10    0x45840  1      
  nop                       #  11    0x45841  1      
  callq .strlen             #  12    0x45842  5      
  movl %r13d, %edx          #  13    0x45847  3      
  movl %r12d, %esi          #  14    0x4584a  3      
  movl %ebx, %edi           #  15    0x4584d  2      
  movq 0x8(%rsp), %r12      #  16    0x4584f  5      
  movq (%rsp), %rbx         #  17    0x45854  4      
  movl %eax, %ecx           #  18    0x45858  2      
  movq 0x10(%rsp), %r13     #  19    0x4585a  5      
  addl $0x18, %esp          #  20    0x4585f  3      
  addq %r15, %rsp           #  21    0x45862  3      
  xchgw %ax, %ax            #  22    0x45865  3      
  jmpq ._ZNKSs5rfindEPKcjj  #  23    0x45868  5      
  nop                       #  24    0x4586d  1      
  nop                       #  25    0x4586e  1      
  nop                       #  26    0x4586f  1      
  nop                       #  27    0x45870  1      
  nop                       #  28    0x45871  1      
  nop                       #  29    0x45872  1      
  nop                       #  30    0x45873  1      
  nop                       #  31    0x45874  1      
  nop                       #  32    0x45875  1      
  nop                       #  33    0x45876  1      
  nop                       #  34    0x45877  1      
  nop                       #  35    0x45878  1      
  nop                       #  36    0x45879  1      
  nop                       #  37    0x4587a  1      
  nop                       #  38    0x4587b  1      
  nop                       #  39    0x4587c  1      
  nop                       #  40    0x4587d  1      
  nop                       #  41    0x4587e  1      
  nop                       #  42    0x4587f  1      
  nop                       #  43    0x45880  1      
  nop                       #  44    0x45881  1      
  nop                       #  45    0x45882  1      
  nop                       #  46    0x45883  1      
  nop                       #  47    0x45884  1      
  nop                       #  48    0x45885  1      
  nop                       #  49    0x45886  1      
  nop                       #  50    0x45887  1      
                                                     
.size _ZNKSs5rfindEPKcj, .-_ZNKSs5rfindEPKcj

