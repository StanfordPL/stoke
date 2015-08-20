  .text
  .globl vsnprintf
  .type vsnprintf, @function

#! file-offset 0x180aa0
#! rip-offset  0x140aa0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vsnprintf:                 #        0x140aa0  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x140aa0  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x140aa5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x140aaa  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x140aac  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x140ab1  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x140ab6  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x140ab9  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x140abc  3      OPC=movl_r32_r32   
  nop                       #  9     0x140abf  1      OPC=nop            
  movl %edx, %r13d          #  10    0x140ac0  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x140ac3  3      OPC=movl_r32_r32   
  nop                       #  12    0x140ac6  1      OPC=nop            
  nop                       #  13    0x140ac7  1      OPC=nop            
  nop                       #  14    0x140ac8  1      OPC=nop            
  nop                       #  15    0x140ac9  1      OPC=nop            
  nop                       #  16    0x140aca  1      OPC=nop            
  nop                       #  17    0x140acb  1      OPC=nop            
  nop                       #  18    0x140acc  1      OPC=nop            
  nop                       #  19    0x140acd  1      OPC=nop            
  nop                       #  20    0x140ace  1      OPC=nop            
  nop                       #  21    0x140acf  1      OPC=nop            
  nop                       #  22    0x140ad0  1      OPC=nop            
  nop                       #  23    0x140ad1  1      OPC=nop            
  nop                       #  24    0x140ad2  1      OPC=nop            
  nop                       #  25    0x140ad3  1      OPC=nop            
  nop                       #  26    0x140ad4  1      OPC=nop            
  nop                       #  27    0x140ad5  1      OPC=nop            
  nop                       #  28    0x140ad6  1      OPC=nop            
  nop                       #  29    0x140ad7  1      OPC=nop            
  nop                       #  30    0x140ad8  1      OPC=nop            
  nop                       #  31    0x140ad9  1      OPC=nop            
  nop                       #  32    0x140ada  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x140adb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x140ae0  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x140ae7  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x140aea  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x140aed  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x140af0  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x140af2  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x140af7  5      OPC=movq_r64_m64   
  nop                       #  41    0x140afc  1      OPC=nop            
  nop                       #  42    0x140afd  1      OPC=nop            
  nop                       #  43    0x140afe  1      OPC=nop            
  nop                       #  44    0x140aff  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x140b00  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x140b05  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x140b0a  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x140b0c  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x140b10  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x140b13  3      OPC=addq_r64_r64   
  jmpq ._vsnprintf_r        #  51    0x140b16  5      OPC=jmpq_label_1   
  nop                       #  52    0x140b1b  1      OPC=nop            
  nop                       #  53    0x140b1c  1      OPC=nop            
  nop                       #  54    0x140b1d  1      OPC=nop            
  nop                       #  55    0x140b1e  1      OPC=nop            
  nop                       #  56    0x140b1f  1      OPC=nop            
                                                                         
.size vsnprintf, .-vsnprintf

