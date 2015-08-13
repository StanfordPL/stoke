  .text
  .globl wcsrtombs
  .type wcsrtombs, @function

#! file-offset 0x182e40
#! rip-offset  0x142e40
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode                
.wcsrtombs:                 #        0x142e40  0      OPC=<label>           
  movq %rbx, -0x20(%rsp)    #  1     0x142e40  5      OPC=movq_m64_r64      
  movq %r12, -0x18(%rsp)    #  2     0x142e45  5      OPC=movq_m64_r64      
  movl %edi, %ebx           #  3     0x142e4a  2      OPC=movl_r32_r32      
  movq %r13, -0x10(%rsp)    #  4     0x142e4c  5      OPC=movq_m64_r64      
  movq %r14, -0x8(%rsp)     #  5     0x142e51  5      OPC=movq_m64_r64      
  subl $0x28, %esp          #  6     0x142e56  3      OPC=subl_r32_imm8     
  addq %r15, %rsp           #  7     0x142e59  3      OPC=addq_r64_r64      
  movl %edx, %r13d          #  8     0x142e5c  3      OPC=movl_r32_r32      
  nop                       #  9     0x142e5f  1      OPC=nop               
  movl %esi, %r12d          #  10    0x142e60  3      OPC=movl_r32_r32      
  movl %ecx, %r14d          #  11    0x142e63  3      OPC=movl_r32_r32      
  nop                       #  12    0x142e66  1      OPC=nop               
  nop                       #  13    0x142e67  1      OPC=nop               
  nop                       #  14    0x142e68  1      OPC=nop               
  nop                       #  15    0x142e69  1      OPC=nop               
  nop                       #  16    0x142e6a  1      OPC=nop               
  nop                       #  17    0x142e6b  1      OPC=nop               
  nop                       #  18    0x142e6c  1      OPC=nop               
  nop                       #  19    0x142e6d  1      OPC=nop               
  nop                       #  20    0x142e6e  1      OPC=nop               
  nop                       #  21    0x142e6f  1      OPC=nop               
  nop                       #  22    0x142e70  1      OPC=nop               
  nop                       #  23    0x142e71  1      OPC=nop               
  nop                       #  24    0x142e72  1      OPC=nop               
  nop                       #  25    0x142e73  1      OPC=nop               
  nop                       #  26    0x142e74  1      OPC=nop               
  nop                       #  27    0x142e75  1      OPC=nop               
  nop                       #  28    0x142e76  1      OPC=nop               
  nop                       #  29    0x142e77  1      OPC=nop               
  nop                       #  30    0x142e78  1      OPC=nop               
  nop                       #  31    0x142e79  1      OPC=nop               
  nop                       #  32    0x142e7a  1      OPC=nop               
  callq .__nacl_read_tp     #  33    0x142e7b  5      OPC=callq_label       
  leaq -0x480(%rax), %rax   #  34    0x142e80  7      OPC=leaq_r64_m16      
  movl %r14d, %r9d          #  35    0x142e87  3      OPC=movl_r32_r32      
  movl %r13d, %r8d          #  36    0x142e8a  3      OPC=movl_r32_r32      
  movl %r12d, %edx          #  37    0x142e8d  3      OPC=movl_r32_r32      
  movl %ebx, %esi           #  38    0x142e90  2      OPC=movl_r32_r32      
  movq 0x10(%rsp), %r12     #  39    0x142e92  5      OPC=movq_r64_m64      
  movq 0x8(%rsp), %rbx      #  40    0x142e97  5      OPC=movq_r64_m64      
  nop                       #  41    0x142e9c  1      OPC=nop               
  nop                       #  42    0x142e9d  1      OPC=nop               
  nop                       #  43    0x142e9e  1      OPC=nop               
  nop                       #  44    0x142e9f  1      OPC=nop               
  movq 0x18(%rsp), %r13     #  45    0x142ea0  5      OPC=movq_r64_m64      
  movl $0xffffffff, %ecx    #  46    0x142ea5  6      OPC=movl_r32_imm32_1  
  movq 0x20(%rsp), %r14     #  47    0x142eab  5      OPC=movq_r64_m64      
  movl %eax, %eax           #  48    0x142eb0  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edi  #  49    0x142eb2  4      OPC=movl_r32_m32      
  addl $0x28, %esp          #  50    0x142eb6  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  51    0x142eb9  3      OPC=addq_r64_r64      
  jmpq ._wcsnrtombs_r       #  52    0x142ebc  5      OPC=jmpq_label_1      
                                                                            
.size wcsrtombs, .-wcsrtombs

