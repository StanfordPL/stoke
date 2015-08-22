  .text
  .globl fwrite
  .type fwrite, @function

#! file-offset 0x15e740
#! rip-offset  0x11e740
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fwrite:                    #        0x11e740  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x11e740  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x11e745  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11e74a  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x11e74c  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x11e751  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x11e756  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x11e759  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x11e75c  3      OPC=movl_r32_r32   
  nop                       #  9     0x11e75f  1      OPC=nop            
  movl %edx, %r13d          #  10    0x11e760  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x11e763  3      OPC=movl_r32_r32   
  nop                       #  12    0x11e766  1      OPC=nop            
  nop                       #  13    0x11e767  1      OPC=nop            
  nop                       #  14    0x11e768  1      OPC=nop            
  nop                       #  15    0x11e769  1      OPC=nop            
  nop                       #  16    0x11e76a  1      OPC=nop            
  nop                       #  17    0x11e76b  1      OPC=nop            
  nop                       #  18    0x11e76c  1      OPC=nop            
  nop                       #  19    0x11e76d  1      OPC=nop            
  nop                       #  20    0x11e76e  1      OPC=nop            
  nop                       #  21    0x11e76f  1      OPC=nop            
  nop                       #  22    0x11e770  1      OPC=nop            
  nop                       #  23    0x11e771  1      OPC=nop            
  nop                       #  24    0x11e772  1      OPC=nop            
  nop                       #  25    0x11e773  1      OPC=nop            
  nop                       #  26    0x11e774  1      OPC=nop            
  nop                       #  27    0x11e775  1      OPC=nop            
  nop                       #  28    0x11e776  1      OPC=nop            
  nop                       #  29    0x11e777  1      OPC=nop            
  nop                       #  30    0x11e778  1      OPC=nop            
  nop                       #  31    0x11e779  1      OPC=nop            
  nop                       #  32    0x11e77a  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x11e77b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x11e780  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x11e787  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x11e78a  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x11e78d  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x11e790  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x11e792  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x11e797  5      OPC=movq_r64_m64   
  nop                       #  41    0x11e79c  1      OPC=nop            
  nop                       #  42    0x11e79d  1      OPC=nop            
  nop                       #  43    0x11e79e  1      OPC=nop            
  nop                       #  44    0x11e79f  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x11e7a0  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x11e7a5  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x11e7aa  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x11e7ac  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x11e7b0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x11e7b3  3      OPC=addq_r64_r64   
  jmpq ._fwrite_r           #  51    0x11e7b6  5      OPC=jmpq_label_1   
  nop                       #  52    0x11e7bb  1      OPC=nop            
  nop                       #  53    0x11e7bc  1      OPC=nop            
  nop                       #  54    0x11e7bd  1      OPC=nop            
  nop                       #  55    0x11e7be  1      OPC=nop            
  nop                       #  56    0x11e7bf  1      OPC=nop            
                                                                         
.size fwrite, .-fwrite

