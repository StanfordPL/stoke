  .text
  .globl fread
  .type fread, @function

#! file-offset 0x15c040
#! rip-offset  0x11c040
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fread:                     #        0x11c040  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x11c040  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x11c045  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11c04a  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x11c04c  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x11c051  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x11c056  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x11c059  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x11c05c  3      OPC=movl_r32_r32   
  nop                       #  9     0x11c05f  1      OPC=nop            
  movl %edx, %r13d          #  10    0x11c060  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x11c063  3      OPC=movl_r32_r32   
  nop                       #  12    0x11c066  1      OPC=nop            
  nop                       #  13    0x11c067  1      OPC=nop            
  nop                       #  14    0x11c068  1      OPC=nop            
  nop                       #  15    0x11c069  1      OPC=nop            
  nop                       #  16    0x11c06a  1      OPC=nop            
  nop                       #  17    0x11c06b  1      OPC=nop            
  nop                       #  18    0x11c06c  1      OPC=nop            
  nop                       #  19    0x11c06d  1      OPC=nop            
  nop                       #  20    0x11c06e  1      OPC=nop            
  nop                       #  21    0x11c06f  1      OPC=nop            
  nop                       #  22    0x11c070  1      OPC=nop            
  nop                       #  23    0x11c071  1      OPC=nop            
  nop                       #  24    0x11c072  1      OPC=nop            
  nop                       #  25    0x11c073  1      OPC=nop            
  nop                       #  26    0x11c074  1      OPC=nop            
  nop                       #  27    0x11c075  1      OPC=nop            
  nop                       #  28    0x11c076  1      OPC=nop            
  nop                       #  29    0x11c077  1      OPC=nop            
  nop                       #  30    0x11c078  1      OPC=nop            
  nop                       #  31    0x11c079  1      OPC=nop            
  nop                       #  32    0x11c07a  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x11c07b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x11c080  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x11c087  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x11c08a  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x11c08d  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x11c090  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x11c092  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x11c097  5      OPC=movq_r64_m64   
  nop                       #  41    0x11c09c  1      OPC=nop            
  nop                       #  42    0x11c09d  1      OPC=nop            
  nop                       #  43    0x11c09e  1      OPC=nop            
  nop                       #  44    0x11c09f  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x11c0a0  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x11c0a5  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x11c0aa  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x11c0ac  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x11c0b0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x11c0b3  3      OPC=addq_r64_r64   
  jmpq ._fread_r            #  51    0x11c0b6  5      OPC=jmpq_label_1   
  nop                       #  52    0x11c0bb  1      OPC=nop            
  nop                       #  53    0x11c0bc  1      OPC=nop            
  nop                       #  54    0x11c0bd  1      OPC=nop            
  nop                       #  55    0x11c0be  1      OPC=nop            
  nop                       #  56    0x11c0bf  1      OPC=nop            
                                                                         
.size fread, .-fread

