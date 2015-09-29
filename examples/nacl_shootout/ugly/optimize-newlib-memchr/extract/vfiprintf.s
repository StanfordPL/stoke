  .text
  .globl vfiprintf
  .type vfiprintf, @function

#! file-offset 0x17b3a0
#! rip-offset  0x13b3a0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vfiprintf:                 #        0x13b3a0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x13b3a0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x13b3a5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x13b3aa  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x13b3ac  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x13b3b1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x13b3b4  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x13b3b7  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x13b3ba  3      OPC=movl_r32_r32   
  nop                       #  9     0x13b3bd  1      OPC=nop            
  nop                       #  10    0x13b3be  1      OPC=nop            
  nop                       #  11    0x13b3bf  1      OPC=nop            
  nop                       #  12    0x13b3c0  1      OPC=nop            
  nop                       #  13    0x13b3c1  1      OPC=nop            
  nop                       #  14    0x13b3c2  1      OPC=nop            
  nop                       #  15    0x13b3c3  1      OPC=nop            
  nop                       #  16    0x13b3c4  1      OPC=nop            
  nop                       #  17    0x13b3c5  1      OPC=nop            
  nop                       #  18    0x13b3c6  1      OPC=nop            
  nop                       #  19    0x13b3c7  1      OPC=nop            
  nop                       #  20    0x13b3c8  1      OPC=nop            
  nop                       #  21    0x13b3c9  1      OPC=nop            
  nop                       #  22    0x13b3ca  1      OPC=nop            
  nop                       #  23    0x13b3cb  1      OPC=nop            
  nop                       #  24    0x13b3cc  1      OPC=nop            
  nop                       #  25    0x13b3cd  1      OPC=nop            
  nop                       #  26    0x13b3ce  1      OPC=nop            
  nop                       #  27    0x13b3cf  1      OPC=nop            
  nop                       #  28    0x13b3d0  1      OPC=nop            
  nop                       #  29    0x13b3d1  1      OPC=nop            
  nop                       #  30    0x13b3d2  1      OPC=nop            
  nop                       #  31    0x13b3d3  1      OPC=nop            
  nop                       #  32    0x13b3d4  1      OPC=nop            
  nop                       #  33    0x13b3d5  1      OPC=nop            
  nop                       #  34    0x13b3d6  1      OPC=nop            
  nop                       #  35    0x13b3d7  1      OPC=nop            
  nop                       #  36    0x13b3d8  1      OPC=nop            
  nop                       #  37    0x13b3d9  1      OPC=nop            
  nop                       #  38    0x13b3da  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x13b3db  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x13b3e0  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x13b3e7  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x13b3ea  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x13b3ed  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x13b3ef  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x13b3f4  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x13b3f8  5      OPC=movq_r64_m64   
  nop                       #  47    0x13b3fd  1      OPC=nop            
  nop                       #  48    0x13b3fe  1      OPC=nop            
  nop                       #  49    0x13b3ff  1      OPC=nop            
  movl %eax, %eax           #  50    0x13b400  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x13b402  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x13b406  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x13b409  3      OPC=addq_r64_r64   
  jmpq ._vfiprintf_r        #  54    0x13b40c  5      OPC=jmpq_label_1   
  nop                       #  55    0x13b411  1      OPC=nop            
  nop                       #  56    0x13b412  1      OPC=nop            
  nop                       #  57    0x13b413  1      OPC=nop            
  nop                       #  58    0x13b414  1      OPC=nop            
  nop                       #  59    0x13b415  1      OPC=nop            
  nop                       #  60    0x13b416  1      OPC=nop            
  nop                       #  61    0x13b417  1      OPC=nop            
  nop                       #  62    0x13b418  1      OPC=nop            
  nop                       #  63    0x13b419  1      OPC=nop            
  nop                       #  64    0x13b41a  1      OPC=nop            
  nop                       #  65    0x13b41b  1      OPC=nop            
  nop                       #  66    0x13b41c  1      OPC=nop            
  nop                       #  67    0x13b41d  1      OPC=nop            
  nop                       #  68    0x13b41e  1      OPC=nop            
  nop                       #  69    0x13b41f  1      OPC=nop            
                                                                         
.size vfiprintf, .-vfiprintf

