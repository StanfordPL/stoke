  .text
  .globl mbsnrtowcs
  .type mbsnrtowcs, @function

#! file-offset 0x198460
#! rip-offset  0x158460
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.mbsnrtowcs:                #        0x158460  0      OPC=<label>        
  movl %r8d, %r9d           #  1     0x158460  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)    #  2     0x158463  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  3     0x158468  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)    #  4     0x15846d  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x158472  5      OPC=movq_m64_r64   
  subl $0x38, %esp          #  6     0x158477  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x15847a  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0x15847d  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  9     0x158480  3      OPC=movl_r32_r32   
  movl %edi, %ebx           #  10    0x158483  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  11    0x158485  3      OPC=movl_r32_r32   
  movq %r9, 0x8(%rsp)       #  12    0x158488  5      OPC=movq_m64_r64   
  nop                       #  13    0x15848d  1      OPC=nop            
  nop                       #  14    0x15848e  1      OPC=nop            
  nop                       #  15    0x15848f  1      OPC=nop            
  nop                       #  16    0x158490  1      OPC=nop            
  nop                       #  17    0x158491  1      OPC=nop            
  nop                       #  18    0x158492  1      OPC=nop            
  nop                       #  19    0x158493  1      OPC=nop            
  nop                       #  20    0x158494  1      OPC=nop            
  nop                       #  21    0x158495  1      OPC=nop            
  nop                       #  22    0x158496  1      OPC=nop            
  nop                       #  23    0x158497  1      OPC=nop            
  nop                       #  24    0x158498  1      OPC=nop            
  nop                       #  25    0x158499  1      OPC=nop            
  nop                       #  26    0x15849a  1      OPC=nop            
  callq .__nacl_read_tp     #  27    0x15849b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  28    0x1584a0  7      OPC=leaq_r64_m16   
  movq 0x8(%rsp), %r9       #  29    0x1584a7  5      OPC=movq_r64_m64   
  movl %r14d, %r8d          #  30    0x1584ac  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  31    0x1584af  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  32    0x1584b2  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  33    0x1584b5  2      OPC=movl_r32_r32   
  movq 0x20(%rsp), %r12     #  34    0x1584b7  5      OPC=movq_r64_m64   
  nop                       #  35    0x1584bc  1      OPC=nop            
  nop                       #  36    0x1584bd  1      OPC=nop            
  nop                       #  37    0x1584be  1      OPC=nop            
  nop                       #  38    0x1584bf  1      OPC=nop            
  movq 0x18(%rsp), %rbx     #  39    0x1584c0  5      OPC=movq_r64_m64   
  movq 0x28(%rsp), %r13     #  40    0x1584c5  5      OPC=movq_r64_m64   
  movq 0x30(%rsp), %r14     #  41    0x1584ca  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  42    0x1584cf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  43    0x1584d1  4      OPC=movl_r32_m32   
  addl $0x38, %esp          #  44    0x1584d5  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  45    0x1584d8  3      OPC=addq_r64_r64   
  jmpq ._mbsnrtowcs_r       #  46    0x1584db  5      OPC=jmpq_label_1   
                                                                         
.size mbsnrtowcs, .-mbsnrtowcs

