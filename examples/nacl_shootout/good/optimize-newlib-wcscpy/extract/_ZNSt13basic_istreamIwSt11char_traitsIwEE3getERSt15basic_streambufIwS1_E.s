  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, @function

#! file-offset 0xae520
#! rip-offset  0x6e520
#! capacity    160 bytes

# Text                                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E:         #        0x6e520  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                           #  1     0x6e520  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                  #  2     0x6e525  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                            #  3     0x6e527  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                 #  4     0x6e52c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                  #  5     0x6e52f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                  #  6     0x6e532  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                         #  7     0x6e534  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                                                 #  8     0x6e538  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                                                  #  9     0x6e53b  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                                                   #  10    0x6e53e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                  #  11    0x6e540  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                         #  12    0x6e542  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                                                  #  13    0x6e546  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                                  #  14    0x6e548  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                                     #  15    0x6e54a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                                 #  16    0x6e552  3      OPC=testq_r64_r64   
  je .L_6e5a0                                                                      #  17    0x6e555  2      OPC=je_label        
  movl %edi, %edi                                                                  #  18    0x6e557  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                         #  19    0x6e559  4      OPC=movl_r32_m32    
  nop                                                                              #  20    0x6e55d  1      OPC=nop             
  nop                                                                              #  21    0x6e55e  1      OPC=nop             
  nop                                                                              #  22    0x6e55f  1      OPC=nop             
  movl $0xa, %esi                                                                  #  23    0x6e560  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                                  #  24    0x6e565  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                                     #  25    0x6e567  5      OPC=movl_r32_m32    
  nop                                                                              #  26    0x6e56c  1      OPC=nop             
  nop                                                                              #  27    0x6e56d  1      OPC=nop             
  nop                                                                              #  28    0x6e56e  1      OPC=nop             
  nop                                                                              #  29    0x6e56f  1      OPC=nop             
  nop                                                                              #  30    0x6e570  1      OPC=nop             
  nop                                                                              #  31    0x6e571  1      OPC=nop             
  nop                                                                              #  32    0x6e572  1      OPC=nop             
  nop                                                                              #  33    0x6e573  1      OPC=nop             
  nop                                                                              #  34    0x6e574  1      OPC=nop             
  nop                                                                              #  35    0x6e575  1      OPC=nop             
  nop                                                                              #  36    0x6e576  1      OPC=nop             
  nop                                                                              #  37    0x6e577  1      OPC=nop             
  andl $0xffffffe0, %eax                                                           #  38    0x6e578  6      OPC=andl_r32_imm32  
  nop                                                                              #  39    0x6e57e  1      OPC=nop             
  nop                                                                              #  40    0x6e57f  1      OPC=nop             
  nop                                                                              #  41    0x6e580  1      OPC=nop             
  addq %r15, %rax                                                                  #  42    0x6e581  3      OPC=addq_r64_r64    
  callq %rax                                                                       #  43    0x6e584  2      OPC=callq_r64       
  movl %r12d, %esi                                                                 #  44    0x6e586  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                  #  45    0x6e589  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                            #  46    0x6e58b  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                             #  47    0x6e590  5      OPC=movq_r64_m64    
  movl %eax, %edx                                                                  #  48    0x6e595  2      OPC=movl_r32_r32    
  addl $0x18, %esp                                                                 #  49    0x6e597  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                  #  50    0x6e59a  3      OPC=addq_r64_r64    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_Ew  #  51    0x6e59d  5      OPC=jmpq_label_1    
  nop                                                                              #  52    0x6e5a2  1      OPC=nop             
  nop                                                                              #  53    0x6e5a3  1      OPC=nop             
  nop                                                                              #  54    0x6e5a4  1      OPC=nop             
  nop                                                                              #  55    0x6e5a5  1      OPC=nop             
.L_6e5a0:                                                                          #        0x6e5a6  0      OPC=<label>         
  nop                                                                              #  56    0x6e5a6  1      OPC=nop             
  nop                                                                              #  57    0x6e5a7  1      OPC=nop             
  nop                                                                              #  58    0x6e5a8  1      OPC=nop             
  nop                                                                              #  59    0x6e5a9  1      OPC=nop             
  nop                                                                              #  60    0x6e5aa  1      OPC=nop             
  nop                                                                              #  61    0x6e5ab  1      OPC=nop             
  nop                                                                              #  62    0x6e5ac  1      OPC=nop             
  nop                                                                              #  63    0x6e5ad  1      OPC=nop             
  nop                                                                              #  64    0x6e5ae  1      OPC=nop             
  nop                                                                              #  65    0x6e5af  1      OPC=nop             
  nop                                                                              #  66    0x6e5b0  1      OPC=nop             
  nop                                                                              #  67    0x6e5b1  1      OPC=nop             
  nop                                                                              #  68    0x6e5b2  1      OPC=nop             
  nop                                                                              #  69    0x6e5b3  1      OPC=nop             
  nop                                                                              #  70    0x6e5b4  1      OPC=nop             
  nop                                                                              #  71    0x6e5b5  1      OPC=nop             
  nop                                                                              #  72    0x6e5b6  1      OPC=nop             
  nop                                                                              #  73    0x6e5b7  1      OPC=nop             
  nop                                                                              #  74    0x6e5b8  1      OPC=nop             
  nop                                                                              #  75    0x6e5b9  1      OPC=nop             
  nop                                                                              #  76    0x6e5ba  1      OPC=nop             
  nop                                                                              #  77    0x6e5bb  1      OPC=nop             
  nop                                                                              #  78    0x6e5bc  1      OPC=nop             
  nop                                                                              #  79    0x6e5bd  1      OPC=nop             
  nop                                                                              #  80    0x6e5be  1      OPC=nop             
  nop                                                                              #  81    0x6e5bf  1      OPC=nop             
  nop                                                                              #  82    0x6e5c0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                                   #  83    0x6e5c1  5      OPC=callq_label     
                                                                                                                                
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E

