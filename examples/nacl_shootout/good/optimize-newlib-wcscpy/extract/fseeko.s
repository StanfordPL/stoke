  .text
  .globl fseeko
  .type fseeko, @function

#! file-offset 0x15c8c0
#! rip-offset  0x11c8c0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fseeko:                    #        0x11c8c0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x11c8c0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x11c8c5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11c8ca  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x11c8cc  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x11c8d1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x11c8d4  3      OPC=addq_r64_r64   
  movq %rsi, %r12           #  7     0x11c8d7  3      OPC=movq_r64_r64   
  movl %edx, %r13d          #  8     0x11c8da  3      OPC=movl_r32_r32   
  nop                       #  9     0x11c8dd  1      OPC=nop            
  nop                       #  10    0x11c8de  1      OPC=nop            
  nop                       #  11    0x11c8df  1      OPC=nop            
  nop                       #  12    0x11c8e0  1      OPC=nop            
  nop                       #  13    0x11c8e1  1      OPC=nop            
  nop                       #  14    0x11c8e2  1      OPC=nop            
  nop                       #  15    0x11c8e3  1      OPC=nop            
  nop                       #  16    0x11c8e4  1      OPC=nop            
  nop                       #  17    0x11c8e5  1      OPC=nop            
  nop                       #  18    0x11c8e6  1      OPC=nop            
  nop                       #  19    0x11c8e7  1      OPC=nop            
  nop                       #  20    0x11c8e8  1      OPC=nop            
  nop                       #  21    0x11c8e9  1      OPC=nop            
  nop                       #  22    0x11c8ea  1      OPC=nop            
  nop                       #  23    0x11c8eb  1      OPC=nop            
  nop                       #  24    0x11c8ec  1      OPC=nop            
  nop                       #  25    0x11c8ed  1      OPC=nop            
  nop                       #  26    0x11c8ee  1      OPC=nop            
  nop                       #  27    0x11c8ef  1      OPC=nop            
  nop                       #  28    0x11c8f0  1      OPC=nop            
  nop                       #  29    0x11c8f1  1      OPC=nop            
  nop                       #  30    0x11c8f2  1      OPC=nop            
  nop                       #  31    0x11c8f3  1      OPC=nop            
  nop                       #  32    0x11c8f4  1      OPC=nop            
  nop                       #  33    0x11c8f5  1      OPC=nop            
  nop                       #  34    0x11c8f6  1      OPC=nop            
  nop                       #  35    0x11c8f7  1      OPC=nop            
  nop                       #  36    0x11c8f8  1      OPC=nop            
  nop                       #  37    0x11c8f9  1      OPC=nop            
  nop                       #  38    0x11c8fa  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x11c8fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x11c900  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x11c907  3      OPC=movl_r32_r32   
  movq %r12, %rdx           #  42    0x11c90a  3      OPC=movq_r64_r64   
  movl %ebx, %esi           #  43    0x11c90d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x11c90f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x11c914  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x11c918  5      OPC=movq_r64_m64   
  nop                       #  47    0x11c91d  1      OPC=nop            
  nop                       #  48    0x11c91e  1      OPC=nop            
  nop                       #  49    0x11c91f  1      OPC=nop            
  movl %eax, %eax           #  50    0x11c920  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x11c922  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x11c926  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x11c929  3      OPC=addq_r64_r64   
  jmpq ._fseeko_r           #  54    0x11c92c  5      OPC=jmpq_label_1   
  nop                       #  55    0x11c931  1      OPC=nop            
  nop                       #  56    0x11c932  1      OPC=nop            
  nop                       #  57    0x11c933  1      OPC=nop            
  nop                       #  58    0x11c934  1      OPC=nop            
  nop                       #  59    0x11c935  1      OPC=nop            
  nop                       #  60    0x11c936  1      OPC=nop            
  nop                       #  61    0x11c937  1      OPC=nop            
  nop                       #  62    0x11c938  1      OPC=nop            
  nop                       #  63    0x11c939  1      OPC=nop            
  nop                       #  64    0x11c93a  1      OPC=nop            
  nop                       #  65    0x11c93b  1      OPC=nop            
  nop                       #  66    0x11c93c  1      OPC=nop            
  nop                       #  67    0x11c93d  1      OPC=nop            
  nop                       #  68    0x11c93e  1      OPC=nop            
  nop                       #  69    0x11c93f  1      OPC=nop            
                                                                         
.size fseeko, .-fseeko

