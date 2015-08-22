  .text
  .globl fread
  .type fread, @function

#! file-offset 0x15c760
#! rip-offset  0x11c760
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fread:                     #        0x11c760  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x11c760  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x11c765  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11c76a  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x11c76c  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x11c771  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x11c776  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x11c779  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x11c77c  3      OPC=movl_r32_r32   
  nop                       #  9     0x11c77f  1      OPC=nop            
  movl %edx, %r13d          #  10    0x11c780  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x11c783  3      OPC=movl_r32_r32   
  nop                       #  12    0x11c786  1      OPC=nop            
  nop                       #  13    0x11c787  1      OPC=nop            
  nop                       #  14    0x11c788  1      OPC=nop            
  nop                       #  15    0x11c789  1      OPC=nop            
  nop                       #  16    0x11c78a  1      OPC=nop            
  nop                       #  17    0x11c78b  1      OPC=nop            
  nop                       #  18    0x11c78c  1      OPC=nop            
  nop                       #  19    0x11c78d  1      OPC=nop            
  nop                       #  20    0x11c78e  1      OPC=nop            
  nop                       #  21    0x11c78f  1      OPC=nop            
  nop                       #  22    0x11c790  1      OPC=nop            
  nop                       #  23    0x11c791  1      OPC=nop            
  nop                       #  24    0x11c792  1      OPC=nop            
  nop                       #  25    0x11c793  1      OPC=nop            
  nop                       #  26    0x11c794  1      OPC=nop            
  nop                       #  27    0x11c795  1      OPC=nop            
  nop                       #  28    0x11c796  1      OPC=nop            
  nop                       #  29    0x11c797  1      OPC=nop            
  nop                       #  30    0x11c798  1      OPC=nop            
  nop                       #  31    0x11c799  1      OPC=nop            
  nop                       #  32    0x11c79a  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x11c79b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x11c7a0  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x11c7a7  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x11c7aa  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x11c7ad  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x11c7b0  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x11c7b2  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x11c7b7  5      OPC=movq_r64_m64   
  nop                       #  41    0x11c7bc  1      OPC=nop            
  nop                       #  42    0x11c7bd  1      OPC=nop            
  nop                       #  43    0x11c7be  1      OPC=nop            
  nop                       #  44    0x11c7bf  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x11c7c0  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x11c7c5  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x11c7ca  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x11c7cc  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x11c7d0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x11c7d3  3      OPC=addq_r64_r64   
  jmpq ._fread_r            #  51    0x11c7d6  5      OPC=jmpq_label_1   
  nop                       #  52    0x11c7db  1      OPC=nop            
  nop                       #  53    0x11c7dc  1      OPC=nop            
  nop                       #  54    0x11c7dd  1      OPC=nop            
  nop                       #  55    0x11c7de  1      OPC=nop            
  nop                       #  56    0x11c7df  1      OPC=nop            
                                                                         
.size fread, .-fread

