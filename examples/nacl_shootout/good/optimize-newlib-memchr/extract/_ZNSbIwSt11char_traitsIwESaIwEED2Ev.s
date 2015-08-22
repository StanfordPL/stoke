  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED2Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED2Ev, @function

#! file-offset 0x1186c0
#! rip-offset  0xd86c0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEED2Ev:                            #        0xd86c0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xd86c0  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                               #  2     0xd86c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xd86c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xd86c8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi                                       #  5     0xd86ca  4      OPC=movl_r32_m32    
  subl $0xc, %edi                                                #  6     0xd86ce  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %edi                                         #  7     0xd86d1  6      OPC=cmpl_r32_imm32  
  jne .L_d8700                                                   #  8     0xd86d7  2      OPC=jne_label       
  nop                                                            #  9     0xd86d9  1      OPC=nop             
  nop                                                            #  10    0xd86da  1      OPC=nop             
  nop                                                            #  11    0xd86db  1      OPC=nop             
  nop                                                            #  12    0xd86dc  1      OPC=nop             
  nop                                                            #  13    0xd86dd  1      OPC=nop             
  nop                                                            #  14    0xd86de  1      OPC=nop             
  nop                                                            #  15    0xd86df  1      OPC=nop             
.L_d86e0:                                                        #        0xd86e0  0      OPC=<label>         
  addl $0x18, %esp                                               #  16    0xd86e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  17    0xd86e3  3      OPC=addq_r64_r64    
  popq %r11                                                      #  18    0xd86e6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  19    0xd86e8  7      OPC=andl_r32_imm32  
  nop                                                            #  20    0xd86ef  1      OPC=nop             
  nop                                                            #  21    0xd86f0  1      OPC=nop             
  nop                                                            #  22    0xd86f1  1      OPC=nop             
  nop                                                            #  23    0xd86f2  1      OPC=nop             
  addq %r15, %r11                                                #  24    0xd86f3  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  25    0xd86f6  3      OPC=jmpq_r64        
  nop                                                            #  26    0xd86f9  1      OPC=nop             
  nop                                                            #  27    0xd86fa  1      OPC=nop             
  nop                                                            #  28    0xd86fb  1      OPC=nop             
  nop                                                            #  29    0xd86fc  1      OPC=nop             
  nop                                                            #  30    0xd86fd  1      OPC=nop             
  nop                                                            #  31    0xd86fe  1      OPC=nop             
  nop                                                            #  32    0xd86ff  1      OPC=nop             
  nop                                                            #  33    0xd8700  1      OPC=nop             
  nop                                                            #  34    0xd8701  1      OPC=nop             
  nop                                                            #  35    0xd8702  1      OPC=nop             
  nop                                                            #  36    0xd8703  1      OPC=nop             
  nop                                                            #  37    0xd8704  1      OPC=nop             
  nop                                                            #  38    0xd8705  1      OPC=nop             
  nop                                                            #  39    0xd8706  1      OPC=nop             
.L_d8700:                                                        #        0xd8707  0      OPC=<label>         
  movl %edi, %edi                                                #  40    0xd8707  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  41    0xd8709  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                          #  42    0xd870e  3      OPC=leal_r32_m16    
  testl %eax, %eax                                               #  43    0xd8711  2      OPC=testl_r32_r32   
  movl %edi, %edi                                                #  44    0xd8713  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                    #  45    0xd8715  5      OPC=movl_m32_r32    
  jg .L_d86e0                                                    #  46    0xd871a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                                           #  47    0xd871c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                                 #  48    0xd8720  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  49    0xd8722  5      OPC=callq_label     
  jmpq .L_d86e0                                                  #  50    0xd8727  2      OPC=jmpq_label      
  nop                                                            #  51    0xd8729  1      OPC=nop             
  nop                                                            #  52    0xd872a  1      OPC=nop             
  nop                                                            #  53    0xd872b  1      OPC=nop             
  nop                                                            #  54    0xd872c  1      OPC=nop             
  nop                                                            #  55    0xd872d  1      OPC=nop             
  nop                                                            #  56    0xd872e  1      OPC=nop             
  nop                                                            #  57    0xd872f  1      OPC=nop             
  nop                                                            #  58    0xd8730  1      OPC=nop             
  nop                                                            #  59    0xd8731  1      OPC=nop             
  nop                                                            #  60    0xd8732  1      OPC=nop             
  nop                                                            #  61    0xd8733  1      OPC=nop             
  nop                                                            #  62    0xd8734  1      OPC=nop             
  nop                                                            #  63    0xd8735  1      OPC=nop             
  nop                                                            #  64    0xd8736  1      OPC=nop             
  nop                                                            #  65    0xd8737  1      OPC=nop             
  nop                                                            #  66    0xd8738  1      OPC=nop             
  nop                                                            #  67    0xd8739  1      OPC=nop             
  nop                                                            #  68    0xd873a  1      OPC=nop             
  nop                                                            #  69    0xd873b  1      OPC=nop             
  nop                                                            #  70    0xd873c  1      OPC=nop             
  nop                                                            #  71    0xd873d  1      OPC=nop             
  nop                                                            #  72    0xd873e  1      OPC=nop             
  nop                                                            #  73    0xd873f  1      OPC=nop             
  nop                                                            #  74    0xd8740  1      OPC=nop             
  nop                                                            #  75    0xd8741  1      OPC=nop             
  nop                                                            #  76    0xd8742  1      OPC=nop             
  nop                                                            #  77    0xd8743  1      OPC=nop             
  nop                                                            #  78    0xd8744  1      OPC=nop             
  nop                                                            #  79    0xd8745  1      OPC=nop             
  nop                                                            #  80    0xd8746  1      OPC=nop             
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEED2Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED2Ev

