  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_, @function

#! file-offset 0x117520
#! rip-offset  0xd7520
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_:  #        0xd7520  0      OPC=<label>          
  pushq %r12                                        #  1     0xd7520  2      OPC=pushq_r64_1      
  movl %edi, %edi                                   #  2     0xd7522  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                   #  3     0xd7524  2      OPC=movl_r32_r32     
  pushq %rbx                                        #  4     0xd7526  1      OPC=pushq_r64_1      
  subl $0x8, %esp                                   #  5     0xd7527  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                   #  6     0xd752a  3      OPC=addq_r64_r64     
  movl %edi, %edi                                   #  7     0xd752d  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                          #  8     0xd752f  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                             #  9     0xd7533  3      OPC=leal_r32_m16     
  movl %eax, %eax                                   #  10    0xd7536  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                         #  11    0xd7538  4      OPC=movl_r32_m32     
  cmpl %r12d, %esi                                  #  12    0xd753c  3      OPC=cmpl_r32_r32     
  nop                                               #  13    0xd753f  1      OPC=nop              
  ja .L_d75a0                                       #  14    0xd7540  2      OPC=ja_label         
  movl %ecx, %ecx                                   #  15    0xd7542  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %eax                          #  16    0xd7544  4      OPC=movl_r32_m32     
  subl %esi, %r12d                                  #  17    0xd7548  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                          #  18    0xd754b  3      OPC=leal_r32_m16     
  cmpl %r12d, %edx                                  #  19    0xd754e  3      OPC=cmpl_r32_r32     
  cmovbel %edx, %r12d                               #  20    0xd7551  4      OPC=cmovbel_r32_r32  
  leal -0xc(%rax), %edx                             #  21    0xd7555  3      OPC=leal_r32_m16     
  movl %eax, %esi                                   #  22    0xd7558  2      OPC=movl_r32_r32     
  movl %edx, %edx                                   #  23    0xd755a  2      OPC=movl_r32_r32     
  movl (%r15,%rdx,1), %ebx                          #  24    0xd755c  4      OPC=movl_r32_m32     
  cmpl %ebx, %r12d                                  #  25    0xd7560  3      OPC=cmpl_r32_r32     
  movl %ebx, %edx                                   #  26    0xd7563  2      OPC=movl_r32_r32     
  cmovbel %r12d, %edx                               #  27    0xd7565  4      OPC=cmovbel_r32_r32  
  subl %ebx, %r12d                                  #  28    0xd7569  3      OPC=subl_r32_r32     
  nop                                               #  29    0xd756c  1      OPC=nop              
  nop                                               #  30    0xd756d  1      OPC=nop              
  nop                                               #  31    0xd756e  1      OPC=nop              
  nop                                               #  32    0xd756f  1      OPC=nop              
  nop                                               #  33    0xd7570  1      OPC=nop              
  nop                                               #  34    0xd7571  1      OPC=nop              
  nop                                               #  35    0xd7572  1      OPC=nop              
  nop                                               #  36    0xd7573  1      OPC=nop              
  nop                                               #  37    0xd7574  1      OPC=nop              
  nop                                               #  38    0xd7575  1      OPC=nop              
  nop                                               #  39    0xd7576  1      OPC=nop              
  nop                                               #  40    0xd7577  1      OPC=nop              
  nop                                               #  41    0xd7578  1      OPC=nop              
  nop                                               #  42    0xd7579  1      OPC=nop              
  nop                                               #  43    0xd757a  1      OPC=nop              
  callq .wmemcmp                                    #  44    0xd757b  5      OPC=callq_label      
  testl %eax, %eax                                  #  45    0xd7580  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                                #  46    0xd7582  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                   #  47    0xd7586  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                   #  48    0xd7589  3      OPC=addq_r64_r64     
  popq %rbx                                         #  49    0xd758c  1      OPC=popq_r64_1       
  popq %r12                                         #  50    0xd758d  2      OPC=popq_r64_1       
  popq %r11                                         #  51    0xd758f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                           #  52    0xd7591  7      OPC=andl_r32_imm32   
  nop                                               #  53    0xd7598  1      OPC=nop              
  nop                                               #  54    0xd7599  1      OPC=nop              
  nop                                               #  55    0xd759a  1      OPC=nop              
  nop                                               #  56    0xd759b  1      OPC=nop              
  addq %r15, %r11                                   #  57    0xd759c  3      OPC=addq_r64_r64     
  jmpq %r11                                         #  58    0xd759f  3      OPC=jmpq_r64         
  nop                                               #  59    0xd75a2  1      OPC=nop              
  nop                                               #  60    0xd75a3  1      OPC=nop              
  nop                                               #  61    0xd75a4  1      OPC=nop              
  nop                                               #  62    0xd75a5  1      OPC=nop              
  nop                                               #  63    0xd75a6  1      OPC=nop              
.L_d75a0:                                           #        0xd75a7  0      OPC=<label>          
  movl $0x1003babd, %edi                            #  64    0xd75a7  5      OPC=movl_r32_imm32   
  nop                                               #  65    0xd75ac  1      OPC=nop              
  nop                                               #  66    0xd75ad  1      OPC=nop              
  nop                                               #  67    0xd75ae  1      OPC=nop              
  nop                                               #  68    0xd75af  1      OPC=nop              
  nop                                               #  69    0xd75b0  1      OPC=nop              
  nop                                               #  70    0xd75b1  1      OPC=nop              
  nop                                               #  71    0xd75b2  1      OPC=nop              
  nop                                               #  72    0xd75b3  1      OPC=nop              
  nop                                               #  73    0xd75b4  1      OPC=nop              
  nop                                               #  74    0xd75b5  1      OPC=nop              
  nop                                               #  75    0xd75b6  1      OPC=nop              
  nop                                               #  76    0xd75b7  1      OPC=nop              
  nop                                               #  77    0xd75b8  1      OPC=nop              
  nop                                               #  78    0xd75b9  1      OPC=nop              
  nop                                               #  79    0xd75ba  1      OPC=nop              
  nop                                               #  80    0xd75bb  1      OPC=nop              
  nop                                               #  81    0xd75bc  1      OPC=nop              
  nop                                               #  82    0xd75bd  1      OPC=nop              
  nop                                               #  83    0xd75be  1      OPC=nop              
  nop                                               #  84    0xd75bf  1      OPC=nop              
  nop                                               #  85    0xd75c0  1      OPC=nop              
  nop                                               #  86    0xd75c1  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc              #  87    0xd75c2  5      OPC=callq_label      
                                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_

