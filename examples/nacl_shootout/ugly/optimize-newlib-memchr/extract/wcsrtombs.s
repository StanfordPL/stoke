  .text
  .globl wcsrtombs
  .type wcsrtombs, @function

#! file-offset 0x183900
#! rip-offset  0x143900
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode                
.wcsrtombs:                 #        0x143900  0      OPC=<label>           
  movq %rbx, -0x20(%rsp)    #  1     0x143900  5      OPC=movq_m64_r64      
  movq %r12, -0x18(%rsp)    #  2     0x143905  5      OPC=movq_m64_r64      
  movl %edi, %ebx           #  3     0x14390a  2      OPC=movl_r32_r32      
  movq %r13, -0x10(%rsp)    #  4     0x14390c  5      OPC=movq_m64_r64      
  movq %r14, -0x8(%rsp)     #  5     0x143911  5      OPC=movq_m64_r64      
  subl $0x28, %esp          #  6     0x143916  3      OPC=subl_r32_imm8     
  addq %r15, %rsp           #  7     0x143919  3      OPC=addq_r64_r64      
  movl %edx, %r13d          #  8     0x14391c  3      OPC=movl_r32_r32      
  nop                       #  9     0x14391f  1      OPC=nop               
  movl %esi, %r12d          #  10    0x143920  3      OPC=movl_r32_r32      
  movl %ecx, %r14d          #  11    0x143923  3      OPC=movl_r32_r32      
  nop                       #  12    0x143926  1      OPC=nop               
  nop                       #  13    0x143927  1      OPC=nop               
  nop                       #  14    0x143928  1      OPC=nop               
  nop                       #  15    0x143929  1      OPC=nop               
  nop                       #  16    0x14392a  1      OPC=nop               
  nop                       #  17    0x14392b  1      OPC=nop               
  nop                       #  18    0x14392c  1      OPC=nop               
  nop                       #  19    0x14392d  1      OPC=nop               
  nop                       #  20    0x14392e  1      OPC=nop               
  nop                       #  21    0x14392f  1      OPC=nop               
  nop                       #  22    0x143930  1      OPC=nop               
  nop                       #  23    0x143931  1      OPC=nop               
  nop                       #  24    0x143932  1      OPC=nop               
  nop                       #  25    0x143933  1      OPC=nop               
  nop                       #  26    0x143934  1      OPC=nop               
  nop                       #  27    0x143935  1      OPC=nop               
  nop                       #  28    0x143936  1      OPC=nop               
  nop                       #  29    0x143937  1      OPC=nop               
  nop                       #  30    0x143938  1      OPC=nop               
  nop                       #  31    0x143939  1      OPC=nop               
  nop                       #  32    0x14393a  1      OPC=nop               
  callq .__nacl_read_tp     #  33    0x14393b  5      OPC=callq_label       
  leaq -0x480(%rax), %rax   #  34    0x143940  7      OPC=leaq_r64_m16      
  movl %r14d, %r9d          #  35    0x143947  3      OPC=movl_r32_r32      
  movl %r13d, %r8d          #  36    0x14394a  3      OPC=movl_r32_r32      
  movl %r12d, %edx          #  37    0x14394d  3      OPC=movl_r32_r32      
  movl %ebx, %esi           #  38    0x143950  2      OPC=movl_r32_r32      
  movq 0x10(%rsp), %r12     #  39    0x143952  5      OPC=movq_r64_m64      
  movq 0x8(%rsp), %rbx      #  40    0x143957  5      OPC=movq_r64_m64      
  nop                       #  41    0x14395c  1      OPC=nop               
  nop                       #  42    0x14395d  1      OPC=nop               
  nop                       #  43    0x14395e  1      OPC=nop               
  nop                       #  44    0x14395f  1      OPC=nop               
  movq 0x18(%rsp), %r13     #  45    0x143960  5      OPC=movq_r64_m64      
  movl $0xffffffff, %ecx    #  46    0x143965  6      OPC=movl_r32_imm32_1  
  movq 0x20(%rsp), %r14     #  47    0x14396b  5      OPC=movq_r64_m64      
  movl %eax, %eax           #  48    0x143970  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edi  #  49    0x143972  4      OPC=movl_r32_m32      
  addl $0x28, %esp          #  50    0x143976  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  51    0x143979  3      OPC=addq_r64_r64      
  jmpq ._wcsnrtombs_r       #  52    0x14397c  5      OPC=jmpq_label_1      
                                                                            
.size wcsrtombs, .-wcsrtombs

