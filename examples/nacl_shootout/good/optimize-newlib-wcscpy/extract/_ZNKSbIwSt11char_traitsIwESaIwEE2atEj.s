  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x116720
#! rip-offset  0xd6720
#! capacity    96 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE2atEj:  #        0xd6720  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xd6720  2      OPC=movl_r32_r32    
  subl $0x8, %esp                        #  2     0xd6722  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xd6725  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xd6728  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax               #  5     0xd672a  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                  #  6     0xd672e  3      OPC=leal_r32_m16    
  movl %edx, %edx                        #  7     0xd6731  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi               #  8     0xd6733  4      OPC=cmpl_r32_m32    
  jae .L_d6760                           #  9     0xd6737  2      OPC=jae_label       
  addl $0x8, %esp                        #  10    0xd6739  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  11    0xd673c  3      OPC=addq_r64_r64    
  nop                                    #  12    0xd673f  1      OPC=nop             
  leal (%rax,%rsi,4), %eax               #  13    0xd6740  3      OPC=leal_r32_m16    
  popq %r11                              #  14    0xd6743  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  15    0xd6745  7      OPC=andl_r32_imm32  
  nop                                    #  16    0xd674c  1      OPC=nop             
  nop                                    #  17    0xd674d  1      OPC=nop             
  nop                                    #  18    0xd674e  1      OPC=nop             
  nop                                    #  19    0xd674f  1      OPC=nop             
  addq %r15, %r11                        #  20    0xd6750  3      OPC=addq_r64_r64    
  jmpq %r11                              #  21    0xd6753  3      OPC=jmpq_r64        
  xchgw %ax, %ax                         #  22    0xd6756  2      OPC=xchgw_ax_r16    
  nop                                    #  23    0xd6758  1      OPC=nop             
  nop                                    #  24    0xd6759  1      OPC=nop             
  nop                                    #  25    0xd675a  1      OPC=nop             
  nop                                    #  26    0xd675b  1      OPC=nop             
  nop                                    #  27    0xd675c  1      OPC=nop             
  nop                                    #  28    0xd675d  1      OPC=nop             
  nop                                    #  29    0xd675e  1      OPC=nop             
  nop                                    #  30    0xd675f  1      OPC=nop             
  nop                                    #  31    0xd6760  1      OPC=nop             
  nop                                    #  32    0xd6761  1      OPC=nop             
  nop                                    #  33    0xd6762  1      OPC=nop             
  nop                                    #  34    0xd6763  1      OPC=nop             
  nop                                    #  35    0xd6764  1      OPC=nop             
  nop                                    #  36    0xd6765  1      OPC=nop             
  nop                                    #  37    0xd6766  1      OPC=nop             
.L_d6760:                                #        0xd6767  0      OPC=<label>         
  movl $0x1003baac, %edi                 #  38    0xd6767  5      OPC=movl_r32_imm32  
  nop                                    #  39    0xd676c  1      OPC=nop             
  nop                                    #  40    0xd676d  1      OPC=nop             
  nop                                    #  41    0xd676e  1      OPC=nop             
  nop                                    #  42    0xd676f  1      OPC=nop             
  nop                                    #  43    0xd6770  1      OPC=nop             
  nop                                    #  44    0xd6771  1      OPC=nop             
  nop                                    #  45    0xd6772  1      OPC=nop             
  nop                                    #  46    0xd6773  1      OPC=nop             
  nop                                    #  47    0xd6774  1      OPC=nop             
  nop                                    #  48    0xd6775  1      OPC=nop             
  nop                                    #  49    0xd6776  1      OPC=nop             
  nop                                    #  50    0xd6777  1      OPC=nop             
  nop                                    #  51    0xd6778  1      OPC=nop             
  nop                                    #  52    0xd6779  1      OPC=nop             
  nop                                    #  53    0xd677a  1      OPC=nop             
  nop                                    #  54    0xd677b  1      OPC=nop             
  nop                                    #  55    0xd677c  1      OPC=nop             
  nop                                    #  56    0xd677d  1      OPC=nop             
  nop                                    #  57    0xd677e  1      OPC=nop             
  nop                                    #  58    0xd677f  1      OPC=nop             
  nop                                    #  59    0xd6780  1      OPC=nop             
  nop                                    #  60    0xd6781  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc   #  61    0xd6782  5      OPC=callq_label     
                                                                                      
.size _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNKSbIwSt11char_traitsIwESaIwEE2atEj

