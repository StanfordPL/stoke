  .text
  .globl _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
  .type _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, @function

#! file-offset 0xdc4e0
#! rip-offset  0x9c4e0
#! capacity    160 bytes

# Text                                                                                       #  Line  RIP      Bytes  Opcode              
._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E:           #        0x9c4e0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                     #  1     0x9c4e0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                            #  2     0x9c4e5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                                      #  3     0x9c4e7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                           #  4     0x9c4ec  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                            #  5     0x9c4ef  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                            #  6     0x9c4f2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                                   #  7     0x9c4f4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                                                           #  8     0x9c4f8  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                                                            #  9     0x9c4fb  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                                                             #  10    0x9c4fe  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                            #  11    0x9c500  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                                   #  12    0x9c502  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                                                            #  13    0x9c506  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                                            #  14    0x9c508  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                                               #  15    0x9c50a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                                           #  16    0x9c512  3      OPC=testq_r64_r64   
  je .L_9c560                                                                                #  17    0x9c515  2      OPC=je_label        
  movl %edi, %edi                                                                            #  18    0x9c517  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                   #  19    0x9c519  4      OPC=movl_r32_m32    
  nop                                                                                        #  20    0x9c51d  1      OPC=nop             
  nop                                                                                        #  21    0x9c51e  1      OPC=nop             
  nop                                                                                        #  22    0x9c51f  1      OPC=nop             
  movl $0xa, %esi                                                                            #  23    0x9c520  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                                            #  24    0x9c525  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                                               #  25    0x9c527  5      OPC=movl_r32_m32    
  nop                                                                                        #  26    0x9c52c  1      OPC=nop             
  nop                                                                                        #  27    0x9c52d  1      OPC=nop             
  nop                                                                                        #  28    0x9c52e  1      OPC=nop             
  nop                                                                                        #  29    0x9c52f  1      OPC=nop             
  nop                                                                                        #  30    0x9c530  1      OPC=nop             
  nop                                                                                        #  31    0x9c531  1      OPC=nop             
  nop                                                                                        #  32    0x9c532  1      OPC=nop             
  nop                                                                                        #  33    0x9c533  1      OPC=nop             
  nop                                                                                        #  34    0x9c534  1      OPC=nop             
  nop                                                                                        #  35    0x9c535  1      OPC=nop             
  nop                                                                                        #  36    0x9c536  1      OPC=nop             
  nop                                                                                        #  37    0x9c537  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                     #  38    0x9c538  6      OPC=andl_r32_imm32  
  nop                                                                                        #  39    0x9c53e  1      OPC=nop             
  nop                                                                                        #  40    0x9c53f  1      OPC=nop             
  nop                                                                                        #  41    0x9c540  1      OPC=nop             
  addq %r15, %rax                                                                            #  42    0x9c541  3      OPC=addq_r64_r64    
  callq %rax                                                                                 #  43    0x9c544  2      OPC=callq_r64       
  movl %r12d, %esi                                                                           #  44    0x9c546  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                            #  45    0x9c549  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                                      #  46    0x9c54b  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                                       #  47    0x9c550  5      OPC=movq_r64_m64    
  movl %eax, %edx                                                                            #  48    0x9c555  2      OPC=movl_r32_r32    
  addl $0x18, %esp                                                                           #  49    0x9c557  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                            #  50    0x9c55a  3      OPC=addq_r64_r64    
  jmpq ._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_  #  51    0x9c55d  5      OPC=jmpq_label_1    
  nop                                                                                        #  52    0x9c562  1      OPC=nop             
  nop                                                                                        #  53    0x9c563  1      OPC=nop             
  nop                                                                                        #  54    0x9c564  1      OPC=nop             
  nop                                                                                        #  55    0x9c565  1      OPC=nop             
.L_9c560:                                                                                    #        0x9c566  0      OPC=<label>         
  nop                                                                                        #  56    0x9c566  1      OPC=nop             
  nop                                                                                        #  57    0x9c567  1      OPC=nop             
  nop                                                                                        #  58    0x9c568  1      OPC=nop             
  nop                                                                                        #  59    0x9c569  1      OPC=nop             
  nop                                                                                        #  60    0x9c56a  1      OPC=nop             
  nop                                                                                        #  61    0x9c56b  1      OPC=nop             
  nop                                                                                        #  62    0x9c56c  1      OPC=nop             
  nop                                                                                        #  63    0x9c56d  1      OPC=nop             
  nop                                                                                        #  64    0x9c56e  1      OPC=nop             
  nop                                                                                        #  65    0x9c56f  1      OPC=nop             
  nop                                                                                        #  66    0x9c570  1      OPC=nop             
  nop                                                                                        #  67    0x9c571  1      OPC=nop             
  nop                                                                                        #  68    0x9c572  1      OPC=nop             
  nop                                                                                        #  69    0x9c573  1      OPC=nop             
  nop                                                                                        #  70    0x9c574  1      OPC=nop             
  nop                                                                                        #  71    0x9c575  1      OPC=nop             
  nop                                                                                        #  72    0x9c576  1      OPC=nop             
  nop                                                                                        #  73    0x9c577  1      OPC=nop             
  nop                                                                                        #  74    0x9c578  1      OPC=nop             
  nop                                                                                        #  75    0x9c579  1      OPC=nop             
  nop                                                                                        #  76    0x9c57a  1      OPC=nop             
  nop                                                                                        #  77    0x9c57b  1      OPC=nop             
  nop                                                                                        #  78    0x9c57c  1      OPC=nop             
  nop                                                                                        #  79    0x9c57d  1      OPC=nop             
  nop                                                                                        #  80    0x9c57e  1      OPC=nop             
  nop                                                                                        #  81    0x9c57f  1      OPC=nop             
  nop                                                                                        #  82    0x9c580  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                                             #  83    0x9c581  5      OPC=callq_label     
                                                                                                                                          
.size _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, .-_ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E

