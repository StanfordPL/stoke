  .text
  .globl _ZNKSt5ctypeIcE10do_toupperEPcPKc
  .type _ZNKSt5ctypeIcE10do_toupperEPcPKc, @function

#! file-offset 0x124de0
#! rip-offset  0xe4de0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_toupperEPcPKc:  #        0xe4de0  0      OPC=<label>         
  pushq %r13                         #  1     0xe4de0  2      OPC=pushq_r64_1     
  movl %edx, %r13d                   #  2     0xe4de2  3      OPC=movl_r32_r32    
  pushq %r12                         #  3     0xe4de5  2      OPC=pushq_r64_1     
  movl %edi, %r12d                   #  4     0xe4de7  3      OPC=movl_r32_r32    
  pushq %rbx                         #  5     0xe4dea  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  6     0xe4deb  2      OPC=movl_r32_r32    
  cmpl %r13d, %ebx                   #  7     0xe4ded  3      OPC=cmpl_r32_r32    
  jae .L_e4e40                       #  8     0xe4df0  2      OPC=jae_label       
  nop                                #  9     0xe4df2  1      OPC=nop             
  nop                                #  10    0xe4df3  1      OPC=nop             
  nop                                #  11    0xe4df4  1      OPC=nop             
  nop                                #  12    0xe4df5  1      OPC=nop             
  nop                                #  13    0xe4df6  1      OPC=nop             
  nop                                #  14    0xe4df7  1      OPC=nop             
  nop                                #  15    0xe4df8  1      OPC=nop             
  nop                                #  16    0xe4df9  1      OPC=nop             
  nop                                #  17    0xe4dfa  1      OPC=nop             
  nop                                #  18    0xe4dfb  1      OPC=nop             
  nop                                #  19    0xe4dfc  1      OPC=nop             
  nop                                #  20    0xe4dfd  1      OPC=nop             
  nop                                #  21    0xe4dfe  1      OPC=nop             
  nop                                #  22    0xe4dff  1      OPC=nop             
.L_e4e00:                            #        0xe4e00  0      OPC=<label>         
  movl %r12d, %r12d                  #  23    0xe4e00  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax           #  24    0xe4e03  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                    #  25    0xe4e07  2      OPC=movl_r32_r32    
  movsbl (%r15,%rbx,1), %esi         #  26    0xe4e09  5      OPC=movsbl_r32_m8   
  movl %r12d, %edi                   #  27    0xe4e0e  3      OPC=movl_r32_r32    
  movl %eax, %eax                    #  28    0xe4e11  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax        #  29    0xe4e13  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax             #  30    0xe4e18  6      OPC=andl_r32_imm32  
  nop                                #  31    0xe4e1e  1      OPC=nop             
  nop                                #  32    0xe4e1f  1      OPC=nop             
  nop                                #  33    0xe4e20  1      OPC=nop             
  addq %r15, %rax                    #  34    0xe4e21  3      OPC=addq_r64_r64    
  callq %rax                         #  35    0xe4e24  2      OPC=callq_r64       
  movl %ebx, %ebx                    #  36    0xe4e26  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)            #  37    0xe4e28  4      OPC=movb_m8_r8      
  addl $0x1, %ebx                    #  38    0xe4e2c  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r13d                   #  39    0xe4e2f  3      OPC=cmpl_r32_r32    
  ja .L_e4e00                        #  40    0xe4e32  2      OPC=ja_label        
  nop                                #  41    0xe4e34  1      OPC=nop             
  nop                                #  42    0xe4e35  1      OPC=nop             
  nop                                #  43    0xe4e36  1      OPC=nop             
  nop                                #  44    0xe4e37  1      OPC=nop             
  nop                                #  45    0xe4e38  1      OPC=nop             
  nop                                #  46    0xe4e39  1      OPC=nop             
  nop                                #  47    0xe4e3a  1      OPC=nop             
  nop                                #  48    0xe4e3b  1      OPC=nop             
  nop                                #  49    0xe4e3c  1      OPC=nop             
  nop                                #  50    0xe4e3d  1      OPC=nop             
  nop                                #  51    0xe4e3e  1      OPC=nop             
  nop                                #  52    0xe4e3f  1      OPC=nop             
  nop                                #  53    0xe4e40  1      OPC=nop             
  nop                                #  54    0xe4e41  1      OPC=nop             
  nop                                #  55    0xe4e42  1      OPC=nop             
  nop                                #  56    0xe4e43  1      OPC=nop             
  nop                                #  57    0xe4e44  1      OPC=nop             
  nop                                #  58    0xe4e45  1      OPC=nop             
.L_e4e40:                            #        0xe4e46  0      OPC=<label>         
  popq %rbx                          #  59    0xe4e46  1      OPC=popq_r64_1      
  popq %r12                          #  60    0xe4e47  2      OPC=popq_r64_1      
  movl %r13d, %eax                   #  61    0xe4e49  3      OPC=movl_r32_r32    
  popq %r13                          #  62    0xe4e4c  2      OPC=popq_r64_1      
  popq %r11                          #  63    0xe4e4e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  64    0xe4e50  7      OPC=andl_r32_imm32  
  nop                                #  65    0xe4e57  1      OPC=nop             
  nop                                #  66    0xe4e58  1      OPC=nop             
  nop                                #  67    0xe4e59  1      OPC=nop             
  nop                                #  68    0xe4e5a  1      OPC=nop             
  addq %r15, %r11                    #  69    0xe4e5b  3      OPC=addq_r64_r64    
  jmpq %r11                          #  70    0xe4e5e  3      OPC=jmpq_r64        
  nop                                #  71    0xe4e61  1      OPC=nop             
  nop                                #  72    0xe4e62  1      OPC=nop             
  nop                                #  73    0xe4e63  1      OPC=nop             
  nop                                #  74    0xe4e64  1      OPC=nop             
  nop                                #  75    0xe4e65  1      OPC=nop             
  nop                                #  76    0xe4e66  1      OPC=nop             
  nop                                #  77    0xe4e67  1      OPC=nop             
  nop                                #  78    0xe4e68  1      OPC=nop             
  nop                                #  79    0xe4e69  1      OPC=nop             
  nop                                #  80    0xe4e6a  1      OPC=nop             
  nop                                #  81    0xe4e6b  1      OPC=nop             
  nop                                #  82    0xe4e6c  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE10do_toupperEPcPKc, .-_ZNKSt5ctypeIcE10do_toupperEPcPKc

