  .text
  .globl _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
  .type _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, @function

#! file-offset 0xdbca0
#! rip-offset  0x9bca0
#! capacity    160 bytes

# Text                                                                                       #  Line  RIP      Bytes  Opcode    
._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E:           #        0x9bca0  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                                                     #  1     0x9bca0  5      OPC=1138  
  movl %edi, %ebx                                                                            #  2     0x9bca5  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                                                      #  3     0x9bca7  5      OPC=1138  
  subl $0x18, %esp                                                                           #  4     0x9bcac  3      OPC=2384  
  addq %r15, %rsp                                                                            #  5     0x9bcaf  3      OPC=72    
  movl %ebx, %ebx                                                                            #  6     0x9bcb2  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                                   #  7     0x9bcb4  4      OPC=1156  
  movl %esi, %r12d                                                                           #  8     0x9bcb8  3      OPC=1157  
  subl $0xc, %eax                                                                            #  9     0x9bcbb  3      OPC=2384  
  xchgw %ax, %ax                                                                             #  10    0x9bcbe  2      OPC=3700  
  movl %eax, %eax                                                                            #  11    0x9bcc0  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                                                   #  12    0x9bcc2  4      OPC=1156  
  addl %ebx, %eax                                                                            #  13    0x9bcc6  2      OPC=67    
  movl %eax, %eax                                                                            #  14    0x9bcc8  2      OPC=1157  
  movl 0x80(%r15,%rax,1), %edi                                                               #  15    0x9bcca  8      OPC=1156  
  testq %rdi, %rdi                                                                           #  16    0x9bcd2  3      OPC=2438  
  je .L_9bd20                                                                                #  17    0x9bcd5  6      OPC=893   
  nop                                                                                        #  18    0x9bcdb  1      OPC=1343  
  nop                                                                                        #  19    0x9bcdc  1      OPC=1343  
  movl %edi, %edi                                                                            #  20    0x9bcdd  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                                                   #  21    0x9bcdf  4      OPC=1156  
  nop                                                                                        #  22    0x9bce3  1      OPC=1343  
  nop                                                                                        #  23    0x9bce4  1      OPC=1343  
  nop                                                                                        #  24    0x9bce5  1      OPC=1343  
  movl $0xa, %esi                                                                            #  25    0x9bce6  5      OPC=1154  
  movl %eax, %eax                                                                            #  26    0x9bceb  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax                                                               #  27    0x9bced  5      OPC=1156  
  nop                                                                                        #  28    0x9bcf2  1      OPC=1343  
  nop                                                                                        #  29    0x9bcf3  1      OPC=1343  
  nop                                                                                        #  30    0x9bcf4  1      OPC=1343  
  nop                                                                                        #  31    0x9bcf5  1      OPC=1343  
  nop                                                                                        #  32    0x9bcf6  1      OPC=1343  
  nop                                                                                        #  33    0x9bcf7  1      OPC=1343  
  nop                                                                                        #  34    0x9bcf8  1      OPC=1343  
  nop                                                                                        #  35    0x9bcf9  1      OPC=1343  
  nop                                                                                        #  36    0x9bcfa  1      OPC=1343  
  nop                                                                                        #  37    0x9bcfb  1      OPC=1343  
  nop                                                                                        #  38    0x9bcfc  1      OPC=1343  
  nop                                                                                        #  39    0x9bcfd  1      OPC=1343  
  andl $0xffffffe0, %eax                                                                     #  40    0x9bcfe  6      OPC=131   
  nop                                                                                        #  41    0x9bd04  1      OPC=1343  
  nop                                                                                        #  42    0x9bd05  1      OPC=1343  
  nop                                                                                        #  43    0x9bd06  1      OPC=1343  
  addq %r15, %rax                                                                            #  44    0x9bd07  3      OPC=72    
  callq %rax                                                                                 #  45    0x9bd0a  2      OPC=258   
  movl %r12d, %esi                                                                           #  46    0x9bd0c  3      OPC=1157  
  movl %ebx, %edi                                                                            #  47    0x9bd0f  2      OPC=1157  
  movq 0x10(%rsp), %r12                                                                      #  48    0x9bd11  5      OPC=1161  
  movq 0x8(%rsp), %rbx                                                                       #  49    0x9bd16  5      OPC=1161  
  movl %eax, %edx                                                                            #  50    0x9bd1b  2      OPC=1157  
  addl $0x18, %esp                                                                           #  51    0x9bd1d  3      OPC=65    
  addq %r15, %rsp                                                                            #  52    0x9bd20  3      OPC=72    
  jmpq ._ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_  #  53    0x9bd23  5      OPC=930   
  nop                                                                                        #  54    0x9bd28  1      OPC=1343  
  nop                                                                                        #  55    0x9bd29  1      OPC=1343  
  nop                                                                                        #  56    0x9bd2a  1      OPC=1343  
  nop                                                                                        #  57    0x9bd2b  1      OPC=1343  
.L_9bd20:                                                                                    #        0x9bd2c  0      OPC=0     
  nop                                                                                        #  58    0x9bd2c  1      OPC=1343  
  nop                                                                                        #  59    0x9bd2d  1      OPC=1343  
  nop                                                                                        #  60    0x9bd2e  1      OPC=1343  
  nop                                                                                        #  61    0x9bd2f  1      OPC=1343  
  nop                                                                                        #  62    0x9bd30  1      OPC=1343  
  nop                                                                                        #  63    0x9bd31  1      OPC=1343  
  nop                                                                                        #  64    0x9bd32  1      OPC=1343  
  nop                                                                                        #  65    0x9bd33  1      OPC=1343  
  nop                                                                                        #  66    0x9bd34  1      OPC=1343  
  nop                                                                                        #  67    0x9bd35  1      OPC=1343  
  nop                                                                                        #  68    0x9bd36  1      OPC=1343  
  nop                                                                                        #  69    0x9bd37  1      OPC=1343  
  nop                                                                                        #  70    0x9bd38  1      OPC=1343  
  nop                                                                                        #  71    0x9bd39  1      OPC=1343  
  nop                                                                                        #  72    0x9bd3a  1      OPC=1343  
  nop                                                                                        #  73    0x9bd3b  1      OPC=1343  
  nop                                                                                        #  74    0x9bd3c  1      OPC=1343  
  nop                                                                                        #  75    0x9bd3d  1      OPC=1343  
  nop                                                                                        #  76    0x9bd3e  1      OPC=1343  
  nop                                                                                        #  77    0x9bd3f  1      OPC=1343  
  nop                                                                                        #  78    0x9bd40  1      OPC=1343  
  nop                                                                                        #  79    0x9bd41  1      OPC=1343  
  nop                                                                                        #  80    0x9bd42  1      OPC=1343  
  nop                                                                                        #  81    0x9bd43  1      OPC=1343  
  nop                                                                                        #  82    0x9bd44  1      OPC=1343  
  nop                                                                                        #  83    0x9bd45  1      OPC=1343  
  nop                                                                                        #  84    0x9bd46  1      OPC=1343  
  callq ._ZSt16__throw_bad_castv                                                             #  85    0x9bd47  5      OPC=260   
                                                                                                                                
.size _ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E, .-_ZSt7getlineIwSt11char_traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E

