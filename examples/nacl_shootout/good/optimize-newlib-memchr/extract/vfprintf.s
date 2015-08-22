  .text
  .globl vfprintf
  .type vfprintf, @function

#! file-offset 0x181040
#! rip-offset  0x141040
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vfprintf:                  #        0x141040  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x141040  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x141045  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x14104a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x14104c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x141051  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x141054  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x141057  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x14105a  3      OPC=movl_r32_r32   
  nop                       #  9     0x14105d  1      OPC=nop            
  nop                       #  10    0x14105e  1      OPC=nop            
  nop                       #  11    0x14105f  1      OPC=nop            
  nop                       #  12    0x141060  1      OPC=nop            
  nop                       #  13    0x141061  1      OPC=nop            
  nop                       #  14    0x141062  1      OPC=nop            
  nop                       #  15    0x141063  1      OPC=nop            
  nop                       #  16    0x141064  1      OPC=nop            
  nop                       #  17    0x141065  1      OPC=nop            
  nop                       #  18    0x141066  1      OPC=nop            
  nop                       #  19    0x141067  1      OPC=nop            
  nop                       #  20    0x141068  1      OPC=nop            
  nop                       #  21    0x141069  1      OPC=nop            
  nop                       #  22    0x14106a  1      OPC=nop            
  nop                       #  23    0x14106b  1      OPC=nop            
  nop                       #  24    0x14106c  1      OPC=nop            
  nop                       #  25    0x14106d  1      OPC=nop            
  nop                       #  26    0x14106e  1      OPC=nop            
  nop                       #  27    0x14106f  1      OPC=nop            
  nop                       #  28    0x141070  1      OPC=nop            
  nop                       #  29    0x141071  1      OPC=nop            
  nop                       #  30    0x141072  1      OPC=nop            
  nop                       #  31    0x141073  1      OPC=nop            
  nop                       #  32    0x141074  1      OPC=nop            
  nop                       #  33    0x141075  1      OPC=nop            
  nop                       #  34    0x141076  1      OPC=nop            
  nop                       #  35    0x141077  1      OPC=nop            
  nop                       #  36    0x141078  1      OPC=nop            
  nop                       #  37    0x141079  1      OPC=nop            
  nop                       #  38    0x14107a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x14107b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x141080  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x141087  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x14108a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x14108d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x14108f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x141094  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x141098  5      OPC=movq_r64_m64   
  nop                       #  47    0x14109d  1      OPC=nop            
  nop                       #  48    0x14109e  1      OPC=nop            
  nop                       #  49    0x14109f  1      OPC=nop            
  movl %eax, %eax           #  50    0x1410a0  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x1410a2  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x1410a6  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x1410a9  3      OPC=addq_r64_r64   
  jmpq ._vfprintf_r         #  54    0x1410ac  5      OPC=jmpq_label_1   
  nop                       #  55    0x1410b1  1      OPC=nop            
  nop                       #  56    0x1410b2  1      OPC=nop            
  nop                       #  57    0x1410b3  1      OPC=nop            
  nop                       #  58    0x1410b4  1      OPC=nop            
  nop                       #  59    0x1410b5  1      OPC=nop            
  nop                       #  60    0x1410b6  1      OPC=nop            
  nop                       #  61    0x1410b7  1      OPC=nop            
  nop                       #  62    0x1410b8  1      OPC=nop            
  nop                       #  63    0x1410b9  1      OPC=nop            
  nop                       #  64    0x1410ba  1      OPC=nop            
  nop                       #  65    0x1410bb  1      OPC=nop            
  nop                       #  66    0x1410bc  1      OPC=nop            
  nop                       #  67    0x1410bd  1      OPC=nop            
  nop                       #  68    0x1410be  1      OPC=nop            
  nop                       #  69    0x1410bf  1      OPC=nop            
                                                                         
.size vfprintf, .-vfprintf

