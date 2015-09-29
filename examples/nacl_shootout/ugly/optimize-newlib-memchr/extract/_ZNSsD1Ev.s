  .text
  .globl _ZNSsD1Ev
  .type _ZNSsD1Ev, @function

#! file-offset 0xec640
#! rip-offset  0xac640
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSsD1Ev:                              #        0xac640  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xac640  2      OPC=movl_r32_r32    
  subl $0x18, %esp                       #  2     0xac642  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xac645  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xac648  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi               #  5     0xac64a  4      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  6     0xac64e  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  7     0xac651  6      OPC=cmpl_r32_imm32  
  jne .L_ac680                           #  8     0xac657  2      OPC=jne_label       
  nop                                    #  9     0xac659  1      OPC=nop             
  nop                                    #  10    0xac65a  1      OPC=nop             
  nop                                    #  11    0xac65b  1      OPC=nop             
  nop                                    #  12    0xac65c  1      OPC=nop             
  nop                                    #  13    0xac65d  1      OPC=nop             
  nop                                    #  14    0xac65e  1      OPC=nop             
  nop                                    #  15    0xac65f  1      OPC=nop             
.L_ac660:                                #        0xac660  0      OPC=<label>         
  addl $0x18, %esp                       #  16    0xac660  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  17    0xac663  3      OPC=addq_r64_r64    
  popq %r11                              #  18    0xac666  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0xac668  7      OPC=andl_r32_imm32  
  nop                                    #  20    0xac66f  1      OPC=nop             
  nop                                    #  21    0xac670  1      OPC=nop             
  nop                                    #  22    0xac671  1      OPC=nop             
  nop                                    #  23    0xac672  1      OPC=nop             
  addq %r15, %r11                        #  24    0xac673  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0xac676  3      OPC=jmpq_r64        
  nop                                    #  26    0xac679  1      OPC=nop             
  nop                                    #  27    0xac67a  1      OPC=nop             
  nop                                    #  28    0xac67b  1      OPC=nop             
  nop                                    #  29    0xac67c  1      OPC=nop             
  nop                                    #  30    0xac67d  1      OPC=nop             
  nop                                    #  31    0xac67e  1      OPC=nop             
  nop                                    #  32    0xac67f  1      OPC=nop             
  nop                                    #  33    0xac680  1      OPC=nop             
  nop                                    #  34    0xac681  1      OPC=nop             
  nop                                    #  35    0xac682  1      OPC=nop             
  nop                                    #  36    0xac683  1      OPC=nop             
  nop                                    #  37    0xac684  1      OPC=nop             
  nop                                    #  38    0xac685  1      OPC=nop             
  nop                                    #  39    0xac686  1      OPC=nop             
.L_ac680:                                #        0xac687  0      OPC=<label>         
  movl %edi, %edi                        #  40    0xac687  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  41    0xac689  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  42    0xac68e  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  43    0xac691  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  44    0xac693  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  45    0xac695  5      OPC=movl_m32_r32    
  jg .L_ac660                            #  46    0xac69a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                   #  47    0xac69c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  48    0xac6a0  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  49    0xac6a2  5      OPC=callq_label     
  jmpq .L_ac660                          #  50    0xac6a7  2      OPC=jmpq_label      
  nop                                    #  51    0xac6a9  1      OPC=nop             
  nop                                    #  52    0xac6aa  1      OPC=nop             
  nop                                    #  53    0xac6ab  1      OPC=nop             
  nop                                    #  54    0xac6ac  1      OPC=nop             
  nop                                    #  55    0xac6ad  1      OPC=nop             
  nop                                    #  56    0xac6ae  1      OPC=nop             
  nop                                    #  57    0xac6af  1      OPC=nop             
  nop                                    #  58    0xac6b0  1      OPC=nop             
  nop                                    #  59    0xac6b1  1      OPC=nop             
  nop                                    #  60    0xac6b2  1      OPC=nop             
  nop                                    #  61    0xac6b3  1      OPC=nop             
  nop                                    #  62    0xac6b4  1      OPC=nop             
  nop                                    #  63    0xac6b5  1      OPC=nop             
  nop                                    #  64    0xac6b6  1      OPC=nop             
  nop                                    #  65    0xac6b7  1      OPC=nop             
  nop                                    #  66    0xac6b8  1      OPC=nop             
  nop                                    #  67    0xac6b9  1      OPC=nop             
  nop                                    #  68    0xac6ba  1      OPC=nop             
  nop                                    #  69    0xac6bb  1      OPC=nop             
  nop                                    #  70    0xac6bc  1      OPC=nop             
  nop                                    #  71    0xac6bd  1      OPC=nop             
  nop                                    #  72    0xac6be  1      OPC=nop             
  nop                                    #  73    0xac6bf  1      OPC=nop             
  nop                                    #  74    0xac6c0  1      OPC=nop             
  nop                                    #  75    0xac6c1  1      OPC=nop             
  nop                                    #  76    0xac6c2  1      OPC=nop             
  nop                                    #  77    0xac6c3  1      OPC=nop             
  nop                                    #  78    0xac6c4  1      OPC=nop             
  nop                                    #  79    0xac6c5  1      OPC=nop             
  nop                                    #  80    0xac6c6  1      OPC=nop             
                                                                                      
.size _ZNSsD1Ev, .-_ZNSsD1Ev

