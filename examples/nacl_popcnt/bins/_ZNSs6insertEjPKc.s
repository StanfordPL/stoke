  .text
  .globl _ZNSs6insertEjPKc
  .type _ZNSs6insertEjPKc, @function

#! file-offset 0x49820
#! rip-offset  0x49820
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs6insertEjPKc:         #        0x49820  0      
  movq %r13, -0x8(%rsp)     #  1     0x49820  5      
  movl %edx, %r13d          #  2     0x49825  3      
  movq %rbx, -0x18(%rsp)    #  3     0x49828  5      
  movq %r12, -0x10(%rsp)    #  4     0x4982d  5      
  movl %edi, %ebx           #  5     0x49832  2      
  subl $0x18, %esp          #  6     0x49834  3      
  addq %r15, %rsp           #  7     0x49837  3      
  movl %esi, %r12d          #  8     0x4983a  3      
  movl %r13d, %edi          #  9     0x4983d  3      
  nop                       #  10    0x49840  1      
  nop                       #  11    0x49841  1      
  callq .strlen             #  12    0x49842  5      
  movl %r13d, %edx          #  13    0x49847  3      
  movl %r12d, %esi          #  14    0x4984a  3      
  movl %ebx, %edi           #  15    0x4984d  2      
  movq 0x8(%rsp), %r12      #  16    0x4984f  5      
  movq (%rsp), %rbx         #  17    0x49854  4      
  movl %eax, %ecx           #  18    0x49858  2      
  movq 0x10(%rsp), %r13     #  19    0x4985a  5      
  addl $0x18, %esp          #  20    0x4985f  3      
  addq %r15, %rsp           #  21    0x49862  3      
  xchgw %ax, %ax            #  22    0x49865  3      
  jmpq ._ZNSs6insertEjPKcj  #  23    0x49868  5      
  nop                       #  24    0x4986d  1      
  nop                       #  25    0x4986e  1      
  nop                       #  26    0x4986f  1      
  nop                       #  27    0x49870  1      
  nop                       #  28    0x49871  1      
  nop                       #  29    0x49872  1      
  nop                       #  30    0x49873  1      
  nop                       #  31    0x49874  1      
  nop                       #  32    0x49875  1      
  nop                       #  33    0x49876  1      
  nop                       #  34    0x49877  1      
  nop                       #  35    0x49878  1      
  nop                       #  36    0x49879  1      
  nop                       #  37    0x4987a  1      
  nop                       #  38    0x4987b  1      
  nop                       #  39    0x4987c  1      
  nop                       #  40    0x4987d  1      
  nop                       #  41    0x4987e  1      
  nop                       #  42    0x4987f  1      
  nop                       #  43    0x49880  1      
  nop                       #  44    0x49881  1      
  nop                       #  45    0x49882  1      
  nop                       #  46    0x49883  1      
  nop                       #  47    0x49884  1      
  nop                       #  48    0x49885  1      
  nop                       #  49    0x49886  1      
  nop                       #  50    0x49887  1      
                                                     
.size _ZNSs6insertEjPKc, .-_ZNSs6insertEjPKc

