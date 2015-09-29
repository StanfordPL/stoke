  .text
  .globl _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
  .type _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, @function

#! file-offset 0xdcc00
#! rip-offset  0x9cc00
#! capacity    160 bytes

# Text                                                                                       #  Line  RIP      Bytes  Opcode              
._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E:           #        0x9cc00  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                     #  1     0x9cc00  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                            #  2     0x9cc05  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                                      #  3     0x9cc07  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                           #  4     0x9cc0c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                            #  5     0x9cc0f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                            #  6     0x9cc12  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                                   #  7     0x9cc14  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                                                           #  8     0x9cc18  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                                                            #  9     0x9cc1b  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                                                             #  10    0x9cc1e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                            #  11    0x9cc20  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                                   #  12    0x9cc22  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                                                            #  13    0x9cc26  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                                            #  14    0x9cc28  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                                               #  15    0x9cc2a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                                           #  16    0x9cc32  3      OPC=testq_r64_r64   
  je .L_9cc80                                                                                #  17    0x9cc35  2      OPC=je_label        
  movl %edi, %edi                                                                            #  18    0x9cc37  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                   #  19    0x9cc39  4      OPC=movl_r32_m32    
  nop                                                                                        #  20    0x9cc3d  1      OPC=nop             
  nop                                                                                        #  21    0x9cc3e  1      OPC=nop             
  nop                                                                                        #  22    0x9cc3f  1      OPC=nop             
  movl $0xa, %esi                                                                            #  23    0x9cc40  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                                            #  24    0x9cc45  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                                               #  25    0x9cc47  5      OPC=movl_r32_m32    
  nop                                                                                        #  26    0x9cc4c  1      OPC=nop             
  nop                                                                                        #  27    0x9cc4d  1      OPC=nop             
  nop                                                                                        #  28    0x9cc4e  1      OPC=nop             
  nop                                                                                        #  29    0x9cc4f  1      OPC=nop             
  nop                                                                                        #  30    0x9cc50  1      OPC=nop             
  nop                                                                                        #  31    0x9cc51  1      OPC=nop             
  nop                                                                                        #  32    0x9cc52  1      OPC=nop             
  nop                                                                                        #  33    0x9cc53  1      OPC=nop             
  nop                                                                                        #  34    0x9cc54  1      OPC=nop             
  nop                                                                                        #  35    0x9cc55  1      OPC=nop             
  nop                                                                                        #  36    0x9cc56  1      OPC=nop             
  nop                                                                                        #  37    0x9cc57  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                     #  38    0x9cc58  6      OPC=andl_r32_imm32  
  nop                                                                                        #  39    0x9cc5e  1      OPC=nop             
  nop                                                                                        #  40    0x9cc5f  1      OPC=nop             
  nop                                                                                        #  41    0x9cc60  1      OPC=nop             
  addq %r15, %rax                                                                            #  42    0x9cc61  3      OPC=addq_r64_r64    
  callq %rax                                                                                 #  43    0x9cc64  2      OPC=callq_r64       
  movl %r12d, %esi                                                                           #  44    0x9cc66  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                            #  45    0x9cc69  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                                      #  46    0x9cc6b  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                                       #  47    0x9cc70  5      OPC=movq_r64_m64    
  movl %eax, %edx                                                                            #  48    0x9cc75  2      OPC=movl_r32_r32    
  addl $0x18, %esp                                                                           #  49    0x9cc77  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                            #  50    0x9cc7a  3      OPC=addq_r64_r64    
  jmpq ._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_  #  51    0x9cc7d  5      OPC=jmpq_label_1    
  nop                                                                                        #  52    0x9cc82  1      OPC=nop             
  nop                                                                                        #  53    0x9cc83  1      OPC=nop             
  nop                                                                                        #  54    0x9cc84  1      OPC=nop             
  nop                                                                                        #  55    0x9cc85  1      OPC=nop             
.L_9cc80:                                                                                    #        0x9cc86  0      OPC=<label>         
  nop                                                                                        #  56    0x9cc86  1      OPC=nop             
  nop                                                                                        #  57    0x9cc87  1      OPC=nop             
  nop                                                                                        #  58    0x9cc88  1      OPC=nop             
  nop                                                                                        #  59    0x9cc89  1      OPC=nop             
  nop                                                                                        #  60    0x9cc8a  1      OPC=nop             
  nop                                                                                        #  61    0x9cc8b  1      OPC=nop             
  nop                                                                                        #  62    0x9cc8c  1      OPC=nop             
  nop                                                                                        #  63    0x9cc8d  1      OPC=nop             
  nop                                                                                        #  64    0x9cc8e  1      OPC=nop             
  nop                                                                                        #  65    0x9cc8f  1      OPC=nop             
  nop                                                                                        #  66    0x9cc90  1      OPC=nop             
  nop                                                                                        #  67    0x9cc91  1      OPC=nop             
  nop                                                                                        #  68    0x9cc92  1      OPC=nop             
  nop                                                                                        #  69    0x9cc93  1      OPC=nop             
  nop                                                                                        #  70    0x9cc94  1      OPC=nop             
  nop                                                                                        #  71    0x9cc95  1      OPC=nop             
  nop                                                                                        #  72    0x9cc96  1      OPC=nop             
  nop                                                                                        #  73    0x9cc97  1      OPC=nop             
  nop                                                                                        #  74    0x9cc98  1      OPC=nop             
  nop                                                                                        #  75    0x9cc99  1      OPC=nop             
  nop                                                                                        #  76    0x9cc9a  1      OPC=nop             
  nop                                                                                        #  77    0x9cc9b  1      OPC=nop             
  nop                                                                                        #  78    0x9cc9c  1      OPC=nop             
  nop                                                                                        #  79    0x9cc9d  1      OPC=nop             
  nop                                                                                        #  80    0x9cc9e  1      OPC=nop             
  nop                                                                                        #  81    0x9cc9f  1      OPC=nop             
  nop                                                                                        #  82    0x9cca0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                                             #  83    0x9cca1  5      OPC=callq_label     
                                                                                                                                          
.size _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, .-_ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E

