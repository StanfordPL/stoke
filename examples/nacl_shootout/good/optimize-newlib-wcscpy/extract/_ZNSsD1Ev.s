  .text
  .globl _ZNSsD1Ev
  .type _ZNSsD1Ev, @function

#! file-offset 0xebc20
#! rip-offset  0xabc20
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSsD1Ev:                              #        0xabc20  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xabc20  2      OPC=movl_r32_r32    
  subl $0x18, %esp                       #  2     0xabc22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xabc25  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xabc28  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi               #  5     0xabc2a  4      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  6     0xabc2e  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  7     0xabc31  6      OPC=cmpl_r32_imm32  
  jne .L_abc60                           #  8     0xabc37  2      OPC=jne_label       
  nop                                    #  9     0xabc39  1      OPC=nop             
  nop                                    #  10    0xabc3a  1      OPC=nop             
  nop                                    #  11    0xabc3b  1      OPC=nop             
  nop                                    #  12    0xabc3c  1      OPC=nop             
  nop                                    #  13    0xabc3d  1      OPC=nop             
  nop                                    #  14    0xabc3e  1      OPC=nop             
  nop                                    #  15    0xabc3f  1      OPC=nop             
.L_abc40:                                #        0xabc40  0      OPC=<label>         
  addl $0x18, %esp                       #  16    0xabc40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  17    0xabc43  3      OPC=addq_r64_r64    
  popq %r11                              #  18    0xabc46  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0xabc48  7      OPC=andl_r32_imm32  
  nop                                    #  20    0xabc4f  1      OPC=nop             
  nop                                    #  21    0xabc50  1      OPC=nop             
  nop                                    #  22    0xabc51  1      OPC=nop             
  nop                                    #  23    0xabc52  1      OPC=nop             
  addq %r15, %r11                        #  24    0xabc53  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0xabc56  3      OPC=jmpq_r64        
  nop                                    #  26    0xabc59  1      OPC=nop             
  nop                                    #  27    0xabc5a  1      OPC=nop             
  nop                                    #  28    0xabc5b  1      OPC=nop             
  nop                                    #  29    0xabc5c  1      OPC=nop             
  nop                                    #  30    0xabc5d  1      OPC=nop             
  nop                                    #  31    0xabc5e  1      OPC=nop             
  nop                                    #  32    0xabc5f  1      OPC=nop             
  nop                                    #  33    0xabc60  1      OPC=nop             
  nop                                    #  34    0xabc61  1      OPC=nop             
  nop                                    #  35    0xabc62  1      OPC=nop             
  nop                                    #  36    0xabc63  1      OPC=nop             
  nop                                    #  37    0xabc64  1      OPC=nop             
  nop                                    #  38    0xabc65  1      OPC=nop             
  nop                                    #  39    0xabc66  1      OPC=nop             
.L_abc60:                                #        0xabc67  0      OPC=<label>         
  movl %edi, %edi                        #  40    0xabc67  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  41    0xabc69  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  42    0xabc6e  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  43    0xabc71  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  44    0xabc73  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  45    0xabc75  5      OPC=movl_m32_r32    
  jg .L_abc40                            #  46    0xabc7a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                   #  47    0xabc7c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  48    0xabc80  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  49    0xabc82  5      OPC=callq_label     
  jmpq .L_abc40                          #  50    0xabc87  2      OPC=jmpq_label      
  nop                                    #  51    0xabc89  1      OPC=nop             
  nop                                    #  52    0xabc8a  1      OPC=nop             
  nop                                    #  53    0xabc8b  1      OPC=nop             
  nop                                    #  54    0xabc8c  1      OPC=nop             
  nop                                    #  55    0xabc8d  1      OPC=nop             
  nop                                    #  56    0xabc8e  1      OPC=nop             
  nop                                    #  57    0xabc8f  1      OPC=nop             
  nop                                    #  58    0xabc90  1      OPC=nop             
  nop                                    #  59    0xabc91  1      OPC=nop             
  nop                                    #  60    0xabc92  1      OPC=nop             
  nop                                    #  61    0xabc93  1      OPC=nop             
  nop                                    #  62    0xabc94  1      OPC=nop             
  nop                                    #  63    0xabc95  1      OPC=nop             
  nop                                    #  64    0xabc96  1      OPC=nop             
  nop                                    #  65    0xabc97  1      OPC=nop             
  nop                                    #  66    0xabc98  1      OPC=nop             
  nop                                    #  67    0xabc99  1      OPC=nop             
  nop                                    #  68    0xabc9a  1      OPC=nop             
  nop                                    #  69    0xabc9b  1      OPC=nop             
  nop                                    #  70    0xabc9c  1      OPC=nop             
  nop                                    #  71    0xabc9d  1      OPC=nop             
  nop                                    #  72    0xabc9e  1      OPC=nop             
  nop                                    #  73    0xabc9f  1      OPC=nop             
  nop                                    #  74    0xabca0  1      OPC=nop             
  nop                                    #  75    0xabca1  1      OPC=nop             
  nop                                    #  76    0xabca2  1      OPC=nop             
  nop                                    #  77    0xabca3  1      OPC=nop             
  nop                                    #  78    0xabca4  1      OPC=nop             
  nop                                    #  79    0xabca5  1      OPC=nop             
  nop                                    #  80    0xabca6  1      OPC=nop             
                                                                                      
.size _ZNSsD1Ev, .-_ZNSsD1Ev

