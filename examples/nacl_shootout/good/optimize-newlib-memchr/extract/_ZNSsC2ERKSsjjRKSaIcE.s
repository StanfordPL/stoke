  .text
  .globl _ZNSsC2ERKSsjjRKSaIcE
  .type _ZNSsC2ERKSsjjRKSaIcE, @function

#! file-offset 0xee300
#! rip-offset  0xae300
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSsjjRKSaIcE:                                                   #        0xae300  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae300  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xae301  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xae303  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                         #  4     0xae305  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  5     0xae308  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  6     0xae30b  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  7     0xae30e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  8     0xae310  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  9     0xae314  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  10    0xae317  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  11    0xae319  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  12    0xae31d  2      OPC=cmpl_r32_r32    
  nop                                                                     #  13    0xae31f  1      OPC=nop             
  ja .L_ae360                                                             #  14    0xae320  2      OPC=ja_label        
  subl %edx, %esi                                                         #  15    0xae322  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                       #  16    0xae324  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  17    0xae328  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  18    0xae32a  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  19    0xae32d  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  20    0xae32f  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  21    0xae331  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                         #  22    0xae334  3      OPC=movl_r32_r32    
  nop                                                                     #  23    0xae337  1      OPC=nop             
  nop                                                                     #  24    0xae338  1      OPC=nop             
  nop                                                                     #  25    0xae339  1      OPC=nop             
  nop                                                                     #  26    0xae33a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xae33b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xae340  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xae342  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  30    0xae346  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xae349  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xae34c  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xae34d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xae34f  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xae356  1      OPC=nop             
  nop                                                                     #  36    0xae357  1      OPC=nop             
  nop                                                                     #  37    0xae358  1      OPC=nop             
  nop                                                                     #  38    0xae359  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xae35a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xae35d  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xae360  1      OPC=nop             
  nop                                                                     #  42    0xae361  1      OPC=nop             
  nop                                                                     #  43    0xae362  1      OPC=nop             
  nop                                                                     #  44    0xae363  1      OPC=nop             
  nop                                                                     #  45    0xae364  1      OPC=nop             
  nop                                                                     #  46    0xae365  1      OPC=nop             
  nop                                                                     #  47    0xae366  1      OPC=nop             
.L_ae360:                                                                 #        0xae367  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xae367  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xae36c  1      OPC=nop             
  nop                                                                     #  50    0xae36d  1      OPC=nop             
  nop                                                                     #  51    0xae36e  1      OPC=nop             
  nop                                                                     #  52    0xae36f  1      OPC=nop             
  nop                                                                     #  53    0xae370  1      OPC=nop             
  nop                                                                     #  54    0xae371  1      OPC=nop             
  nop                                                                     #  55    0xae372  1      OPC=nop             
  nop                                                                     #  56    0xae373  1      OPC=nop             
  nop                                                                     #  57    0xae374  1      OPC=nop             
  nop                                                                     #  58    0xae375  1      OPC=nop             
  nop                                                                     #  59    0xae376  1      OPC=nop             
  nop                                                                     #  60    0xae377  1      OPC=nop             
  nop                                                                     #  61    0xae378  1      OPC=nop             
  nop                                                                     #  62    0xae379  1      OPC=nop             
  nop                                                                     #  63    0xae37a  1      OPC=nop             
  nop                                                                     #  64    0xae37b  1      OPC=nop             
  nop                                                                     #  65    0xae37c  1      OPC=nop             
  nop                                                                     #  66    0xae37d  1      OPC=nop             
  nop                                                                     #  67    0xae37e  1      OPC=nop             
  nop                                                                     #  68    0xae37f  1      OPC=nop             
  nop                                                                     #  69    0xae380  1      OPC=nop             
  nop                                                                     #  70    0xae381  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xae382  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC2ERKSsjjRKSaIcE, .-_ZNSsC2ERKSsjjRKSaIcE

