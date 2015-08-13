  .text
  .globl _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
  .type _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, @function

#! file-offset 0xdc1e0
#! rip-offset  0x9c1e0
#! capacity    160 bytes

# Text                                                                                       #  Line  RIP      Bytes  Opcode              
._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E:           #        0x9c1e0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                     #  1     0x9c1e0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                            #  2     0x9c1e5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                                      #  3     0x9c1e7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                           #  4     0x9c1ec  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                            #  5     0x9c1ef  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                            #  6     0x9c1f2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                                   #  7     0x9c1f4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                                                           #  8     0x9c1f8  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                                                            #  9     0x9c1fb  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                                                             #  10    0x9c1fe  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                            #  11    0x9c200  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                                   #  12    0x9c202  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                                                            #  13    0x9c206  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                                            #  14    0x9c208  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                                               #  15    0x9c20a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                                           #  16    0x9c212  3      OPC=testq_r64_r64   
  je .L_9c260                                                                                #  17    0x9c215  2      OPC=je_label        
  movl %edi, %edi                                                                            #  18    0x9c217  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                   #  19    0x9c219  4      OPC=movl_r32_m32    
  nop                                                                                        #  20    0x9c21d  1      OPC=nop             
  nop                                                                                        #  21    0x9c21e  1      OPC=nop             
  nop                                                                                        #  22    0x9c21f  1      OPC=nop             
  movl $0xa, %esi                                                                            #  23    0x9c220  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                                            #  24    0x9c225  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                                               #  25    0x9c227  5      OPC=movl_r32_m32    
  nop                                                                                        #  26    0x9c22c  1      OPC=nop             
  nop                                                                                        #  27    0x9c22d  1      OPC=nop             
  nop                                                                                        #  28    0x9c22e  1      OPC=nop             
  nop                                                                                        #  29    0x9c22f  1      OPC=nop             
  nop                                                                                        #  30    0x9c230  1      OPC=nop             
  nop                                                                                        #  31    0x9c231  1      OPC=nop             
  nop                                                                                        #  32    0x9c232  1      OPC=nop             
  nop                                                                                        #  33    0x9c233  1      OPC=nop             
  nop                                                                                        #  34    0x9c234  1      OPC=nop             
  nop                                                                                        #  35    0x9c235  1      OPC=nop             
  nop                                                                                        #  36    0x9c236  1      OPC=nop             
  nop                                                                                        #  37    0x9c237  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                     #  38    0x9c238  6      OPC=andl_r32_imm32  
  nop                                                                                        #  39    0x9c23e  1      OPC=nop             
  nop                                                                                        #  40    0x9c23f  1      OPC=nop             
  nop                                                                                        #  41    0x9c240  1      OPC=nop             
  addq %r15, %rax                                                                            #  42    0x9c241  3      OPC=addq_r64_r64    
  callq %rax                                                                                 #  43    0x9c244  2      OPC=callq_r64       
  movl %r12d, %esi                                                                           #  44    0x9c246  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                            #  45    0x9c249  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                                      #  46    0x9c24b  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                                       #  47    0x9c250  5      OPC=movq_r64_m64    
  movl %eax, %edx                                                                            #  48    0x9c255  2      OPC=movl_r32_r32    
  addl $0x18, %esp                                                                           #  49    0x9c257  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                            #  50    0x9c25a  3      OPC=addq_r64_r64    
  jmpq ._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_  #  51    0x9c25d  5      OPC=jmpq_label_1    
  nop                                                                                        #  52    0x9c262  1      OPC=nop             
  nop                                                                                        #  53    0x9c263  1      OPC=nop             
  nop                                                                                        #  54    0x9c264  1      OPC=nop             
  nop                                                                                        #  55    0x9c265  1      OPC=nop             
.L_9c260:                                                                                    #        0x9c266  0      OPC=<label>         
  nop                                                                                        #  56    0x9c266  1      OPC=nop             
  nop                                                                                        #  57    0x9c267  1      OPC=nop             
  nop                                                                                        #  58    0x9c268  1      OPC=nop             
  nop                                                                                        #  59    0x9c269  1      OPC=nop             
  nop                                                                                        #  60    0x9c26a  1      OPC=nop             
  nop                                                                                        #  61    0x9c26b  1      OPC=nop             
  nop                                                                                        #  62    0x9c26c  1      OPC=nop             
  nop                                                                                        #  63    0x9c26d  1      OPC=nop             
  nop                                                                                        #  64    0x9c26e  1      OPC=nop             
  nop                                                                                        #  65    0x9c26f  1      OPC=nop             
  nop                                                                                        #  66    0x9c270  1      OPC=nop             
  nop                                                                                        #  67    0x9c271  1      OPC=nop             
  nop                                                                                        #  68    0x9c272  1      OPC=nop             
  nop                                                                                        #  69    0x9c273  1      OPC=nop             
  nop                                                                                        #  70    0x9c274  1      OPC=nop             
  nop                                                                                        #  71    0x9c275  1      OPC=nop             
  nop                                                                                        #  72    0x9c276  1      OPC=nop             
  nop                                                                                        #  73    0x9c277  1      OPC=nop             
  nop                                                                                        #  74    0x9c278  1      OPC=nop             
  nop                                                                                        #  75    0x9c279  1      OPC=nop             
  nop                                                                                        #  76    0x9c27a  1      OPC=nop             
  nop                                                                                        #  77    0x9c27b  1      OPC=nop             
  nop                                                                                        #  78    0x9c27c  1      OPC=nop             
  nop                                                                                        #  79    0x9c27d  1      OPC=nop             
  nop                                                                                        #  80    0x9c27e  1      OPC=nop             
  nop                                                                                        #  81    0x9c27f  1      OPC=nop             
  nop                                                                                        #  82    0x9c280  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                                             #  83    0x9c281  5      OPC=callq_label     
                                                                                                                                          
.size _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, .-_ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E

