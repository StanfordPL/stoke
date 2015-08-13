  .text
  .globl wcsnrtombs
  .type wcsnrtombs, @function

#! file-offset 0x192640
#! rip-offset  0x152640
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcsnrtombs:                #        0x152640  0      OPC=<label>        
  movl %r8d, %r9d           #  1     0x152640  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)    #  2     0x152643  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  3     0x152648  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)    #  4     0x15264d  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x152652  5      OPC=movq_m64_r64   
  subl $0x38, %esp          #  6     0x152657  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x15265a  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0x15265d  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  9     0x152660  3      OPC=movl_r32_r32   
  movl %edi, %ebx           #  10    0x152663  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  11    0x152665  3      OPC=movl_r32_r32   
  movq %r9, 0x8(%rsp)       #  12    0x152668  5      OPC=movq_m64_r64   
  nop                       #  13    0x15266d  1      OPC=nop            
  nop                       #  14    0x15266e  1      OPC=nop            
  nop                       #  15    0x15266f  1      OPC=nop            
  nop                       #  16    0x152670  1      OPC=nop            
  nop                       #  17    0x152671  1      OPC=nop            
  nop                       #  18    0x152672  1      OPC=nop            
  nop                       #  19    0x152673  1      OPC=nop            
  nop                       #  20    0x152674  1      OPC=nop            
  nop                       #  21    0x152675  1      OPC=nop            
  nop                       #  22    0x152676  1      OPC=nop            
  nop                       #  23    0x152677  1      OPC=nop            
  nop                       #  24    0x152678  1      OPC=nop            
  nop                       #  25    0x152679  1      OPC=nop            
  nop                       #  26    0x15267a  1      OPC=nop            
  callq .__nacl_read_tp     #  27    0x15267b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  28    0x152680  7      OPC=leaq_r64_m16   
  movq 0x8(%rsp), %r9       #  29    0x152687  5      OPC=movq_r64_m64   
  movl %r14d, %r8d          #  30    0x15268c  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  31    0x15268f  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  32    0x152692  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  33    0x152695  2      OPC=movl_r32_r32   
  movq 0x20(%rsp), %r12     #  34    0x152697  5      OPC=movq_r64_m64   
  nop                       #  35    0x15269c  1      OPC=nop            
  nop                       #  36    0x15269d  1      OPC=nop            
  nop                       #  37    0x15269e  1      OPC=nop            
  nop                       #  38    0x15269f  1      OPC=nop            
  movq 0x18(%rsp), %rbx     #  39    0x1526a0  5      OPC=movq_r64_m64   
  movq 0x28(%rsp), %r13     #  40    0x1526a5  5      OPC=movq_r64_m64   
  movq 0x30(%rsp), %r14     #  41    0x1526aa  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  42    0x1526af  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  43    0x1526b1  4      OPC=movl_r32_m32   
  addl $0x38, %esp          #  44    0x1526b5  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  45    0x1526b8  3      OPC=addq_r64_r64   
  jmpq ._wcsnrtombs_r       #  46    0x1526bb  5      OPC=jmpq_label_1   
                                                                         
.size wcsnrtombs, .-wcsnrtombs

