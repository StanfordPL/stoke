  .text
  .globl _ZNSsD1Ev
  .type _ZNSsD1Ev, @function

#! file-offset 0xebf20
#! rip-offset  0xabf20
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSsD1Ev:                              #        0xabf20  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xabf20  2      OPC=movl_r32_r32    
  subl $0x18, %esp                       #  2     0xabf22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xabf25  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xabf28  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi               #  5     0xabf2a  4      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  6     0xabf2e  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  7     0xabf31  6      OPC=cmpl_r32_imm32  
  jne .L_abf60                           #  8     0xabf37  2      OPC=jne_label       
  nop                                    #  9     0xabf39  1      OPC=nop             
  nop                                    #  10    0xabf3a  1      OPC=nop             
  nop                                    #  11    0xabf3b  1      OPC=nop             
  nop                                    #  12    0xabf3c  1      OPC=nop             
  nop                                    #  13    0xabf3d  1      OPC=nop             
  nop                                    #  14    0xabf3e  1      OPC=nop             
  nop                                    #  15    0xabf3f  1      OPC=nop             
.L_abf40:                                #        0xabf40  0      OPC=<label>         
  addl $0x18, %esp                       #  16    0xabf40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  17    0xabf43  3      OPC=addq_r64_r64    
  popq %r11                              #  18    0xabf46  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0xabf48  7      OPC=andl_r32_imm32  
  nop                                    #  20    0xabf4f  1      OPC=nop             
  nop                                    #  21    0xabf50  1      OPC=nop             
  nop                                    #  22    0xabf51  1      OPC=nop             
  nop                                    #  23    0xabf52  1      OPC=nop             
  addq %r15, %r11                        #  24    0xabf53  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0xabf56  3      OPC=jmpq_r64        
  nop                                    #  26    0xabf59  1      OPC=nop             
  nop                                    #  27    0xabf5a  1      OPC=nop             
  nop                                    #  28    0xabf5b  1      OPC=nop             
  nop                                    #  29    0xabf5c  1      OPC=nop             
  nop                                    #  30    0xabf5d  1      OPC=nop             
  nop                                    #  31    0xabf5e  1      OPC=nop             
  nop                                    #  32    0xabf5f  1      OPC=nop             
  nop                                    #  33    0xabf60  1      OPC=nop             
  nop                                    #  34    0xabf61  1      OPC=nop             
  nop                                    #  35    0xabf62  1      OPC=nop             
  nop                                    #  36    0xabf63  1      OPC=nop             
  nop                                    #  37    0xabf64  1      OPC=nop             
  nop                                    #  38    0xabf65  1      OPC=nop             
  nop                                    #  39    0xabf66  1      OPC=nop             
.L_abf60:                                #        0xabf67  0      OPC=<label>         
  movl %edi, %edi                        #  40    0xabf67  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  41    0xabf69  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  42    0xabf6e  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  43    0xabf71  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  44    0xabf73  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  45    0xabf75  5      OPC=movl_m32_r32    
  jg .L_abf40                            #  46    0xabf7a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                   #  47    0xabf7c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  48    0xabf80  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  49    0xabf82  5      OPC=callq_label     
  jmpq .L_abf40                          #  50    0xabf87  2      OPC=jmpq_label      
  nop                                    #  51    0xabf89  1      OPC=nop             
  nop                                    #  52    0xabf8a  1      OPC=nop             
  nop                                    #  53    0xabf8b  1      OPC=nop             
  nop                                    #  54    0xabf8c  1      OPC=nop             
  nop                                    #  55    0xabf8d  1      OPC=nop             
  nop                                    #  56    0xabf8e  1      OPC=nop             
  nop                                    #  57    0xabf8f  1      OPC=nop             
  nop                                    #  58    0xabf90  1      OPC=nop             
  nop                                    #  59    0xabf91  1      OPC=nop             
  nop                                    #  60    0xabf92  1      OPC=nop             
  nop                                    #  61    0xabf93  1      OPC=nop             
  nop                                    #  62    0xabf94  1      OPC=nop             
  nop                                    #  63    0xabf95  1      OPC=nop             
  nop                                    #  64    0xabf96  1      OPC=nop             
  nop                                    #  65    0xabf97  1      OPC=nop             
  nop                                    #  66    0xabf98  1      OPC=nop             
  nop                                    #  67    0xabf99  1      OPC=nop             
  nop                                    #  68    0xabf9a  1      OPC=nop             
  nop                                    #  69    0xabf9b  1      OPC=nop             
  nop                                    #  70    0xabf9c  1      OPC=nop             
  nop                                    #  71    0xabf9d  1      OPC=nop             
  nop                                    #  72    0xabf9e  1      OPC=nop             
  nop                                    #  73    0xabf9f  1      OPC=nop             
  nop                                    #  74    0xabfa0  1      OPC=nop             
  nop                                    #  75    0xabfa1  1      OPC=nop             
  nop                                    #  76    0xabfa2  1      OPC=nop             
  nop                                    #  77    0xabfa3  1      OPC=nop             
  nop                                    #  78    0xabfa4  1      OPC=nop             
  nop                                    #  79    0xabfa5  1      OPC=nop             
  nop                                    #  80    0xabfa6  1      OPC=nop             
                                                                                      
.size _ZNSsD1Ev, .-_ZNSsD1Ev

