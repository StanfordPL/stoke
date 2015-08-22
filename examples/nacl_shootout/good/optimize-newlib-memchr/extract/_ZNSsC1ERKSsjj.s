  .text
  .globl _ZNSsC1ERKSsjj
  .type _ZNSsC1ERKSsjj, @function

#! file-offset 0xee380
#! rip-offset  0xae380
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSsjj:                                                          #        0xae380  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae380  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xae381  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xae383  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                        #  4     0xae385  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  5     0xae388  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  6     0xae38b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  7     0xae38d  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  8     0xae391  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  9     0xae394  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  10    0xae396  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  11    0xae39a  2      OPC=cmpl_r32_r32    
  nop                                                                     #  12    0xae39c  1      OPC=nop             
  nop                                                                     #  13    0xae39d  1      OPC=nop             
  nop                                                                     #  14    0xae39e  1      OPC=nop             
  nop                                                                     #  15    0xae39f  1      OPC=nop             
  ja .L_ae3e0                                                             #  16    0xae3a0  2      OPC=ja_label        
  subl %edx, %esi                                                         #  17    0xae3a2  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                   #  18    0xae3a4  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                       #  19    0xae3a8  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  20    0xae3ac  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  21    0xae3ae  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  22    0xae3b1  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  23    0xae3b3  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  24    0xae3b5  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                         #  25    0xae3b8  2      OPC=movl_r32_r32    
  nop                                                                     #  26    0xae3ba  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xae3bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xae3c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xae3c2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                        #  30    0xae3c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xae3c9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xae3cc  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xae3cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xae3cf  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xae3d6  1      OPC=nop             
  nop                                                                     #  36    0xae3d7  1      OPC=nop             
  nop                                                                     #  37    0xae3d8  1      OPC=nop             
  nop                                                                     #  38    0xae3d9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xae3da  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xae3dd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xae3e0  1      OPC=nop             
  nop                                                                     #  42    0xae3e1  1      OPC=nop             
  nop                                                                     #  43    0xae3e2  1      OPC=nop             
  nop                                                                     #  44    0xae3e3  1      OPC=nop             
  nop                                                                     #  45    0xae3e4  1      OPC=nop             
  nop                                                                     #  46    0xae3e5  1      OPC=nop             
  nop                                                                     #  47    0xae3e6  1      OPC=nop             
.L_ae3e0:                                                                 #        0xae3e7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xae3e7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xae3ec  1      OPC=nop             
  nop                                                                     #  50    0xae3ed  1      OPC=nop             
  nop                                                                     #  51    0xae3ee  1      OPC=nop             
  nop                                                                     #  52    0xae3ef  1      OPC=nop             
  nop                                                                     #  53    0xae3f0  1      OPC=nop             
  nop                                                                     #  54    0xae3f1  1      OPC=nop             
  nop                                                                     #  55    0xae3f2  1      OPC=nop             
  nop                                                                     #  56    0xae3f3  1      OPC=nop             
  nop                                                                     #  57    0xae3f4  1      OPC=nop             
  nop                                                                     #  58    0xae3f5  1      OPC=nop             
  nop                                                                     #  59    0xae3f6  1      OPC=nop             
  nop                                                                     #  60    0xae3f7  1      OPC=nop             
  nop                                                                     #  61    0xae3f8  1      OPC=nop             
  nop                                                                     #  62    0xae3f9  1      OPC=nop             
  nop                                                                     #  63    0xae3fa  1      OPC=nop             
  nop                                                                     #  64    0xae3fb  1      OPC=nop             
  nop                                                                     #  65    0xae3fc  1      OPC=nop             
  nop                                                                     #  66    0xae3fd  1      OPC=nop             
  nop                                                                     #  67    0xae3fe  1      OPC=nop             
  nop                                                                     #  68    0xae3ff  1      OPC=nop             
  nop                                                                     #  69    0xae400  1      OPC=nop             
  nop                                                                     #  70    0xae401  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xae402  5      OPC=callq_label     
  movl %eax, %edi                                                         #  72    0xae407  2      OPC=movl_r32_r32    
  nop                                                                     #  73    0xae409  1      OPC=nop             
  nop                                                                     #  74    0xae40a  1      OPC=nop             
  nop                                                                     #  75    0xae40b  1      OPC=nop             
  nop                                                                     #  76    0xae40c  1      OPC=nop             
  nop                                                                     #  77    0xae40d  1      OPC=nop             
  nop                                                                     #  78    0xae40e  1      OPC=nop             
  nop                                                                     #  79    0xae40f  1      OPC=nop             
  nop                                                                     #  80    0xae410  1      OPC=nop             
  nop                                                                     #  81    0xae411  1      OPC=nop             
  nop                                                                     #  82    0xae412  1      OPC=nop             
  nop                                                                     #  83    0xae413  1      OPC=nop             
  nop                                                                     #  84    0xae414  1      OPC=nop             
  nop                                                                     #  85    0xae415  1      OPC=nop             
  nop                                                                     #  86    0xae416  1      OPC=nop             
  nop                                                                     #  87    0xae417  1      OPC=nop             
  nop                                                                     #  88    0xae418  1      OPC=nop             
  nop                                                                     #  89    0xae419  1      OPC=nop             
  nop                                                                     #  90    0xae41a  1      OPC=nop             
  nop                                                                     #  91    0xae41b  1      OPC=nop             
  nop                                                                     #  92    0xae41c  1      OPC=nop             
  nop                                                                     #  93    0xae41d  1      OPC=nop             
  nop                                                                     #  94    0xae41e  1      OPC=nop             
  nop                                                                     #  95    0xae41f  1      OPC=nop             
  nop                                                                     #  96    0xae420  1      OPC=nop             
  nop                                                                     #  97    0xae421  1      OPC=nop             
  callq ._Unwind_Resume                                                   #  98    0xae422  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC1ERKSsjj, .-_ZNSsC1ERKSsjj

