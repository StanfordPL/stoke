  .text
  .globl fwrite
  .type fwrite, @function

#! file-offset 0x15dd20
#! rip-offset  0x11dd20
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fwrite:                    #        0x11dd20  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x11dd20  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x11dd25  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11dd2a  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x11dd2c  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x11dd31  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x11dd36  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x11dd39  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x11dd3c  3      OPC=movl_r32_r32   
  nop                       #  9     0x11dd3f  1      OPC=nop            
  movl %edx, %r13d          #  10    0x11dd40  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x11dd43  3      OPC=movl_r32_r32   
  nop                       #  12    0x11dd46  1      OPC=nop            
  nop                       #  13    0x11dd47  1      OPC=nop            
  nop                       #  14    0x11dd48  1      OPC=nop            
  nop                       #  15    0x11dd49  1      OPC=nop            
  nop                       #  16    0x11dd4a  1      OPC=nop            
  nop                       #  17    0x11dd4b  1      OPC=nop            
  nop                       #  18    0x11dd4c  1      OPC=nop            
  nop                       #  19    0x11dd4d  1      OPC=nop            
  nop                       #  20    0x11dd4e  1      OPC=nop            
  nop                       #  21    0x11dd4f  1      OPC=nop            
  nop                       #  22    0x11dd50  1      OPC=nop            
  nop                       #  23    0x11dd51  1      OPC=nop            
  nop                       #  24    0x11dd52  1      OPC=nop            
  nop                       #  25    0x11dd53  1      OPC=nop            
  nop                       #  26    0x11dd54  1      OPC=nop            
  nop                       #  27    0x11dd55  1      OPC=nop            
  nop                       #  28    0x11dd56  1      OPC=nop            
  nop                       #  29    0x11dd57  1      OPC=nop            
  nop                       #  30    0x11dd58  1      OPC=nop            
  nop                       #  31    0x11dd59  1      OPC=nop            
  nop                       #  32    0x11dd5a  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x11dd5b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x11dd60  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x11dd67  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x11dd6a  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x11dd6d  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x11dd70  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x11dd72  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x11dd77  5      OPC=movq_r64_m64   
  nop                       #  41    0x11dd7c  1      OPC=nop            
  nop                       #  42    0x11dd7d  1      OPC=nop            
  nop                       #  43    0x11dd7e  1      OPC=nop            
  nop                       #  44    0x11dd7f  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x11dd80  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x11dd85  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x11dd8a  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x11dd8c  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x11dd90  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x11dd93  3      OPC=addq_r64_r64   
  jmpq ._fwrite_r           #  51    0x11dd96  5      OPC=jmpq_label_1   
  nop                       #  52    0x11dd9b  1      OPC=nop            
  nop                       #  53    0x11dd9c  1      OPC=nop            
  nop                       #  54    0x11dd9d  1      OPC=nop            
  nop                       #  55    0x11dd9e  1      OPC=nop            
  nop                       #  56    0x11dd9f  1      OPC=nop            
                                                                         
.size fwrite, .-fwrite

