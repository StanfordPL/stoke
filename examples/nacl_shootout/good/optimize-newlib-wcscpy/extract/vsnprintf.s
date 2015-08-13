  .text
  .globl vsnprintf
  .type vsnprintf, @function

#! file-offset 0x1807a0
#! rip-offset  0x1407a0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vsnprintf:                 #        0x1407a0  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x1407a0  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x1407a5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x1407aa  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x1407ac  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x1407b1  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x1407b6  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x1407b9  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x1407bc  3      OPC=movl_r32_r32   
  nop                       #  9     0x1407bf  1      OPC=nop            
  movl %edx, %r13d          #  10    0x1407c0  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x1407c3  3      OPC=movl_r32_r32   
  nop                       #  12    0x1407c6  1      OPC=nop            
  nop                       #  13    0x1407c7  1      OPC=nop            
  nop                       #  14    0x1407c8  1      OPC=nop            
  nop                       #  15    0x1407c9  1      OPC=nop            
  nop                       #  16    0x1407ca  1      OPC=nop            
  nop                       #  17    0x1407cb  1      OPC=nop            
  nop                       #  18    0x1407cc  1      OPC=nop            
  nop                       #  19    0x1407cd  1      OPC=nop            
  nop                       #  20    0x1407ce  1      OPC=nop            
  nop                       #  21    0x1407cf  1      OPC=nop            
  nop                       #  22    0x1407d0  1      OPC=nop            
  nop                       #  23    0x1407d1  1      OPC=nop            
  nop                       #  24    0x1407d2  1      OPC=nop            
  nop                       #  25    0x1407d3  1      OPC=nop            
  nop                       #  26    0x1407d4  1      OPC=nop            
  nop                       #  27    0x1407d5  1      OPC=nop            
  nop                       #  28    0x1407d6  1      OPC=nop            
  nop                       #  29    0x1407d7  1      OPC=nop            
  nop                       #  30    0x1407d8  1      OPC=nop            
  nop                       #  31    0x1407d9  1      OPC=nop            
  nop                       #  32    0x1407da  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x1407db  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x1407e0  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x1407e7  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x1407ea  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x1407ed  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x1407f0  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x1407f2  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x1407f7  5      OPC=movq_r64_m64   
  nop                       #  41    0x1407fc  1      OPC=nop            
  nop                       #  42    0x1407fd  1      OPC=nop            
  nop                       #  43    0x1407fe  1      OPC=nop            
  nop                       #  44    0x1407ff  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x140800  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x140805  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x14080a  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x14080c  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x140810  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x140813  3      OPC=addq_r64_r64   
  jmpq ._vsnprintf_r        #  51    0x140816  5      OPC=jmpq_label_1   
  nop                       #  52    0x14081b  1      OPC=nop            
  nop                       #  53    0x14081c  1      OPC=nop            
  nop                       #  54    0x14081d  1      OPC=nop            
  nop                       #  55    0x14081e  1      OPC=nop            
  nop                       #  56    0x14081f  1      OPC=nop            
                                                                         
.size vsnprintf, .-vsnprintf

