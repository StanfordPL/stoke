  .text
  .globl wcsnrtombs
  .type wcsnrtombs, @function

#! file-offset 0x193060
#! rip-offset  0x153060
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcsnrtombs:                #        0x153060  0      OPC=<label>        
  movl %r8d, %r9d           #  1     0x153060  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)    #  2     0x153063  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  3     0x153068  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)    #  4     0x15306d  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x153072  5      OPC=movq_m64_r64   
  subl $0x38, %esp          #  6     0x153077  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x15307a  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0x15307d  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  9     0x153080  3      OPC=movl_r32_r32   
  movl %edi, %ebx           #  10    0x153083  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  11    0x153085  3      OPC=movl_r32_r32   
  movq %r9, 0x8(%rsp)       #  12    0x153088  5      OPC=movq_m64_r64   
  nop                       #  13    0x15308d  1      OPC=nop            
  nop                       #  14    0x15308e  1      OPC=nop            
  nop                       #  15    0x15308f  1      OPC=nop            
  nop                       #  16    0x153090  1      OPC=nop            
  nop                       #  17    0x153091  1      OPC=nop            
  nop                       #  18    0x153092  1      OPC=nop            
  nop                       #  19    0x153093  1      OPC=nop            
  nop                       #  20    0x153094  1      OPC=nop            
  nop                       #  21    0x153095  1      OPC=nop            
  nop                       #  22    0x153096  1      OPC=nop            
  nop                       #  23    0x153097  1      OPC=nop            
  nop                       #  24    0x153098  1      OPC=nop            
  nop                       #  25    0x153099  1      OPC=nop            
  nop                       #  26    0x15309a  1      OPC=nop            
  callq .__nacl_read_tp     #  27    0x15309b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  28    0x1530a0  7      OPC=leaq_r64_m16   
  movq 0x8(%rsp), %r9       #  29    0x1530a7  5      OPC=movq_r64_m64   
  movl %r14d, %r8d          #  30    0x1530ac  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  31    0x1530af  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  32    0x1530b2  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  33    0x1530b5  2      OPC=movl_r32_r32   
  movq 0x20(%rsp), %r12     #  34    0x1530b7  5      OPC=movq_r64_m64   
  nop                       #  35    0x1530bc  1      OPC=nop            
  nop                       #  36    0x1530bd  1      OPC=nop            
  nop                       #  37    0x1530be  1      OPC=nop            
  nop                       #  38    0x1530bf  1      OPC=nop            
  movq 0x18(%rsp), %rbx     #  39    0x1530c0  5      OPC=movq_r64_m64   
  movq 0x28(%rsp), %r13     #  40    0x1530c5  5      OPC=movq_r64_m64   
  movq 0x30(%rsp), %r14     #  41    0x1530ca  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  42    0x1530cf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  43    0x1530d1  4      OPC=movl_r32_m32   
  addl $0x38, %esp          #  44    0x1530d5  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  45    0x1530d8  3      OPC=addq_r64_r64   
  jmpq ._wcsnrtombs_r       #  46    0x1530db  5      OPC=jmpq_label_1   
                                                                         
.size wcsnrtombs, .-wcsnrtombs

