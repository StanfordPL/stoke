  .text
  .globl strtol
  .type strtol, @function

#! file-offset 0x16c020
#! rip-offset  0x12c020
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtol:                    #        0x12c020  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x12c020  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x12c025  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x12c02a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x12c02c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x12c031  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x12c034  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x12c037  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x12c03a  3      OPC=movl_r32_r32   
  nop                       #  9     0x12c03d  1      OPC=nop            
  nop                       #  10    0x12c03e  1      OPC=nop            
  nop                       #  11    0x12c03f  1      OPC=nop            
  nop                       #  12    0x12c040  1      OPC=nop            
  nop                       #  13    0x12c041  1      OPC=nop            
  nop                       #  14    0x12c042  1      OPC=nop            
  nop                       #  15    0x12c043  1      OPC=nop            
  nop                       #  16    0x12c044  1      OPC=nop            
  nop                       #  17    0x12c045  1      OPC=nop            
  nop                       #  18    0x12c046  1      OPC=nop            
  nop                       #  19    0x12c047  1      OPC=nop            
  nop                       #  20    0x12c048  1      OPC=nop            
  nop                       #  21    0x12c049  1      OPC=nop            
  nop                       #  22    0x12c04a  1      OPC=nop            
  nop                       #  23    0x12c04b  1      OPC=nop            
  nop                       #  24    0x12c04c  1      OPC=nop            
  nop                       #  25    0x12c04d  1      OPC=nop            
  nop                       #  26    0x12c04e  1      OPC=nop            
  nop                       #  27    0x12c04f  1      OPC=nop            
  nop                       #  28    0x12c050  1      OPC=nop            
  nop                       #  29    0x12c051  1      OPC=nop            
  nop                       #  30    0x12c052  1      OPC=nop            
  nop                       #  31    0x12c053  1      OPC=nop            
  nop                       #  32    0x12c054  1      OPC=nop            
  nop                       #  33    0x12c055  1      OPC=nop            
  nop                       #  34    0x12c056  1      OPC=nop            
  nop                       #  35    0x12c057  1      OPC=nop            
  nop                       #  36    0x12c058  1      OPC=nop            
  nop                       #  37    0x12c059  1      OPC=nop            
  nop                       #  38    0x12c05a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x12c05b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x12c060  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x12c067  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x12c06a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x12c06d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x12c06f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x12c074  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x12c078  5      OPC=movq_r64_m64   
  nop                       #  47    0x12c07d  1      OPC=nop            
  nop                       #  48    0x12c07e  1      OPC=nop            
  nop                       #  49    0x12c07f  1      OPC=nop            
  movl %eax, %eax           #  50    0x12c080  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x12c082  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x12c086  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x12c089  3      OPC=addq_r64_r64   
  jmpq ._strtol_r           #  54    0x12c08c  5      OPC=jmpq_label_1   
  nop                       #  55    0x12c091  1      OPC=nop            
  nop                       #  56    0x12c092  1      OPC=nop            
  nop                       #  57    0x12c093  1      OPC=nop            
  nop                       #  58    0x12c094  1      OPC=nop            
  nop                       #  59    0x12c095  1      OPC=nop            
  nop                       #  60    0x12c096  1      OPC=nop            
  nop                       #  61    0x12c097  1      OPC=nop            
  nop                       #  62    0x12c098  1      OPC=nop            
  nop                       #  63    0x12c099  1      OPC=nop            
  nop                       #  64    0x12c09a  1      OPC=nop            
  nop                       #  65    0x12c09b  1      OPC=nop            
  nop                       #  66    0x12c09c  1      OPC=nop            
  nop                       #  67    0x12c09d  1      OPC=nop            
  nop                       #  68    0x12c09e  1      OPC=nop            
  nop                       #  69    0x12c09f  1      OPC=nop            
                                                                         
.size strtol, .-strtol

