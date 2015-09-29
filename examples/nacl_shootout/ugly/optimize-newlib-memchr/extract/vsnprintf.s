  .text
  .globl vsnprintf
  .type vsnprintf, @function

#! file-offset 0x1811c0
#! rip-offset  0x1411c0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vsnprintf:                 #        0x1411c0  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x1411c0  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x1411c5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x1411ca  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x1411cc  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x1411d1  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x1411d6  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x1411d9  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x1411dc  3      OPC=movl_r32_r32   
  nop                       #  9     0x1411df  1      OPC=nop            
  movl %edx, %r13d          #  10    0x1411e0  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x1411e3  3      OPC=movl_r32_r32   
  nop                       #  12    0x1411e6  1      OPC=nop            
  nop                       #  13    0x1411e7  1      OPC=nop            
  nop                       #  14    0x1411e8  1      OPC=nop            
  nop                       #  15    0x1411e9  1      OPC=nop            
  nop                       #  16    0x1411ea  1      OPC=nop            
  nop                       #  17    0x1411eb  1      OPC=nop            
  nop                       #  18    0x1411ec  1      OPC=nop            
  nop                       #  19    0x1411ed  1      OPC=nop            
  nop                       #  20    0x1411ee  1      OPC=nop            
  nop                       #  21    0x1411ef  1      OPC=nop            
  nop                       #  22    0x1411f0  1      OPC=nop            
  nop                       #  23    0x1411f1  1      OPC=nop            
  nop                       #  24    0x1411f2  1      OPC=nop            
  nop                       #  25    0x1411f3  1      OPC=nop            
  nop                       #  26    0x1411f4  1      OPC=nop            
  nop                       #  27    0x1411f5  1      OPC=nop            
  nop                       #  28    0x1411f6  1      OPC=nop            
  nop                       #  29    0x1411f7  1      OPC=nop            
  nop                       #  30    0x1411f8  1      OPC=nop            
  nop                       #  31    0x1411f9  1      OPC=nop            
  nop                       #  32    0x1411fa  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x1411fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x141200  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x141207  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x14120a  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x14120d  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x141210  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x141212  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x141217  5      OPC=movq_r64_m64   
  nop                       #  41    0x14121c  1      OPC=nop            
  nop                       #  42    0x14121d  1      OPC=nop            
  nop                       #  43    0x14121e  1      OPC=nop            
  nop                       #  44    0x14121f  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x141220  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x141225  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x14122a  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x14122c  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x141230  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x141233  3      OPC=addq_r64_r64   
  jmpq ._vsnprintf_r        #  51    0x141236  5      OPC=jmpq_label_1   
  nop                       #  52    0x14123b  1      OPC=nop            
  nop                       #  53    0x14123c  1      OPC=nop            
  nop                       #  54    0x14123d  1      OPC=nop            
  nop                       #  55    0x14123e  1      OPC=nop            
  nop                       #  56    0x14123f  1      OPC=nop            
                                                                         
.size vsnprintf, .-vsnprintf

