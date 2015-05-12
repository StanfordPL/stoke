  .text
  .globl _ZNSs6insertEjPKc
  .type _ZNSs6insertEjPKc, @function

#! file-offset 0x49840
#! rip-offset  0x49840
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs6insertEjPKc:         #        0x49840  0      
  movq %r13, -0x8(%rsp)     #  1     0x49840  5      
  movl %edx, %r13d          #  2     0x49845  3      
  movq %rbx, -0x18(%rsp)    #  3     0x49848  5      
  movq %r12, -0x10(%rsp)    #  4     0x4984d  5      
  movl %edi, %ebx           #  5     0x49852  2      
  subl $0x18, %esp          #  6     0x49854  3      
  addq %r15, %rsp           #  7     0x49857  3      
  movl %esi, %r12d          #  8     0x4985a  3      
  movl %r13d, %edi          #  9     0x4985d  3      
  nop                       #  10    0x49860  1      
  nop                       #  11    0x49861  1      
  callq .strlen             #  12    0x49862  5      
  movl %r13d, %edx          #  13    0x49867  3      
  movl %r12d, %esi          #  14    0x4986a  3      
  movl %ebx, %edi           #  15    0x4986d  2      
  movq 0x8(%rsp), %r12      #  16    0x4986f  5      
  movq (%rsp), %rbx         #  17    0x49874  4      
  movl %eax, %ecx           #  18    0x49878  2      
  movq 0x10(%rsp), %r13     #  19    0x4987a  5      
  addl $0x18, %esp          #  20    0x4987f  3      
  addq %r15, %rsp           #  21    0x49882  3      
  xchgw %ax, %ax            #  22    0x49885  3      
  jmpq ._ZNSs6insertEjPKcj  #  23    0x49888  5      
  nop                       #  24    0x4988d  1      
  nop                       #  25    0x4988e  1      
  nop                       #  26    0x4988f  1      
  nop                       #  27    0x49890  1      
  nop                       #  28    0x49891  1      
  nop                       #  29    0x49892  1      
  nop                       #  30    0x49893  1      
  nop                       #  31    0x49894  1      
  nop                       #  32    0x49895  1      
  nop                       #  33    0x49896  1      
  nop                       #  34    0x49897  1      
  nop                       #  35    0x49898  1      
  nop                       #  36    0x49899  1      
  nop                       #  37    0x4989a  1      
  nop                       #  38    0x4989b  1      
  nop                       #  39    0x4989c  1      
  nop                       #  40    0x4989d  1      
  nop                       #  41    0x4989e  1      
  nop                       #  42    0x4989f  1      
  nop                       #  43    0x498a0  1      
  nop                       #  44    0x498a1  1      
  nop                       #  45    0x498a2  1      
  nop                       #  46    0x498a3  1      
  nop                       #  47    0x498a4  1      
  nop                       #  48    0x498a5  1      
  nop                       #  49    0x498a6  1      
  nop                       #  50    0x498a7  1      
                                                     
.size _ZNSs6insertEjPKc, .-_ZNSs6insertEjPKc

