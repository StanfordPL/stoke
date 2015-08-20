  .text
  .globl wcsnrtombs
  .type wcsnrtombs, @function

#! file-offset 0x192940
#! rip-offset  0x152940
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcsnrtombs:                #        0x152940  0      OPC=<label>        
  movl %r8d, %r9d           #  1     0x152940  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)    #  2     0x152943  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  3     0x152948  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)    #  4     0x15294d  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x152952  5      OPC=movq_m64_r64   
  subl $0x38, %esp          #  6     0x152957  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x15295a  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0x15295d  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  9     0x152960  3      OPC=movl_r32_r32   
  movl %edi, %ebx           #  10    0x152963  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  11    0x152965  3      OPC=movl_r32_r32   
  movq %r9, 0x8(%rsp)       #  12    0x152968  5      OPC=movq_m64_r64   
  nop                       #  13    0x15296d  1      OPC=nop            
  nop                       #  14    0x15296e  1      OPC=nop            
  nop                       #  15    0x15296f  1      OPC=nop            
  nop                       #  16    0x152970  1      OPC=nop            
  nop                       #  17    0x152971  1      OPC=nop            
  nop                       #  18    0x152972  1      OPC=nop            
  nop                       #  19    0x152973  1      OPC=nop            
  nop                       #  20    0x152974  1      OPC=nop            
  nop                       #  21    0x152975  1      OPC=nop            
  nop                       #  22    0x152976  1      OPC=nop            
  nop                       #  23    0x152977  1      OPC=nop            
  nop                       #  24    0x152978  1      OPC=nop            
  nop                       #  25    0x152979  1      OPC=nop            
  nop                       #  26    0x15297a  1      OPC=nop            
  callq .__nacl_read_tp     #  27    0x15297b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  28    0x152980  7      OPC=leaq_r64_m16   
  movq 0x8(%rsp), %r9       #  29    0x152987  5      OPC=movq_r64_m64   
  movl %r14d, %r8d          #  30    0x15298c  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  31    0x15298f  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  32    0x152992  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  33    0x152995  2      OPC=movl_r32_r32   
  movq 0x20(%rsp), %r12     #  34    0x152997  5      OPC=movq_r64_m64   
  nop                       #  35    0x15299c  1      OPC=nop            
  nop                       #  36    0x15299d  1      OPC=nop            
  nop                       #  37    0x15299e  1      OPC=nop            
  nop                       #  38    0x15299f  1      OPC=nop            
  movq 0x18(%rsp), %rbx     #  39    0x1529a0  5      OPC=movq_r64_m64   
  movq 0x28(%rsp), %r13     #  40    0x1529a5  5      OPC=movq_r64_m64   
  movq 0x30(%rsp), %r14     #  41    0x1529aa  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  42    0x1529af  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  43    0x1529b1  4      OPC=movl_r32_m32   
  addl $0x38, %esp          #  44    0x1529b5  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  45    0x1529b8  3      OPC=addq_r64_r64   
  jmpq ._wcsnrtombs_r       #  46    0x1529bb  5      OPC=jmpq_label_1   
                                                                         
.size wcsnrtombs, .-wcsnrtombs

