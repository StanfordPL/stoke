  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_negative_signEv
  .type _ZNKSt10moneypunctIcLb0EE16do_negative_signEv, @function

#! file-offset 0xbeb80
#! rip-offset  0x7eb80
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE16do_negative_signEv:  #        0x7eb80  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7eb80  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7eb81  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7eb83  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7eb85  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7eb87  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7eb8a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7eb8d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7eb8f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7eb94  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7eb98  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %esi                   #  11    0x7eb9a  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7eb9f  1      OPC=nop             
  nop                                            #  13    0x7eba0  1      OPC=nop             
  nop                                            #  14    0x7eba1  1      OPC=nop             
  nop                                            #  15    0x7eba2  1      OPC=nop             
  nop                                            #  16    0x7eba3  1      OPC=nop             
  nop                                            #  17    0x7eba4  1      OPC=nop             
  nop                                            #  18    0x7eba5  1      OPC=nop             
  nop                                            #  19    0x7eba6  1      OPC=nop             
  nop                                            #  20    0x7eba7  1      OPC=nop             
  nop                                            #  21    0x7eba8  1      OPC=nop             
  nop                                            #  22    0x7eba9  1      OPC=nop             
  nop                                            #  23    0x7ebaa  1      OPC=nop             
  nop                                            #  24    0x7ebab  1      OPC=nop             
  nop                                            #  25    0x7ebac  1      OPC=nop             
  nop                                            #  26    0x7ebad  1      OPC=nop             
  nop                                            #  27    0x7ebae  1      OPC=nop             
  nop                                            #  28    0x7ebaf  1      OPC=nop             
  nop                                            #  29    0x7ebb0  1      OPC=nop             
  nop                                            #  30    0x7ebb1  1      OPC=nop             
  nop                                            #  31    0x7ebb2  1      OPC=nop             
  nop                                            #  32    0x7ebb3  1      OPC=nop             
  nop                                            #  33    0x7ebb4  1      OPC=nop             
  nop                                            #  34    0x7ebb5  1      OPC=nop             
  nop                                            #  35    0x7ebb6  1      OPC=nop             
  nop                                            #  36    0x7ebb7  1      OPC=nop             
  nop                                            #  37    0x7ebb8  1      OPC=nop             
  nop                                            #  38    0x7ebb9  1      OPC=nop             
  nop                                            #  39    0x7ebba  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7ebbb  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7ebc0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7ebc2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7ebc5  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7ebc8  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7ebc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7ebcb  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7ebd2  1      OPC=nop             
  nop                                            #  48    0x7ebd3  1      OPC=nop             
  nop                                            #  49    0x7ebd4  1      OPC=nop             
  nop                                            #  50    0x7ebd5  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7ebd6  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7ebd9  3      OPC=jmpq_r64        
  nop                                            #  53    0x7ebdc  1      OPC=nop             
  nop                                            #  54    0x7ebdd  1      OPC=nop             
  nop                                            #  55    0x7ebde  1      OPC=nop             
  nop                                            #  56    0x7ebdf  1      OPC=nop             
  nop                                            #  57    0x7ebe0  1      OPC=nop             
  nop                                            #  58    0x7ebe1  1      OPC=nop             
  nop                                            #  59    0x7ebe2  1      OPC=nop             
  nop                                            #  60    0x7ebe3  1      OPC=nop             
  nop                                            #  61    0x7ebe4  1      OPC=nop             
  nop                                            #  62    0x7ebe5  1      OPC=nop             
  nop                                            #  63    0x7ebe6  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7ebe7  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7ebe9  1      OPC=nop             
  nop                                            #  66    0x7ebea  1      OPC=nop             
  nop                                            #  67    0x7ebeb  1      OPC=nop             
  nop                                            #  68    0x7ebec  1      OPC=nop             
  nop                                            #  69    0x7ebed  1      OPC=nop             
  nop                                            #  70    0x7ebee  1      OPC=nop             
  nop                                            #  71    0x7ebef  1      OPC=nop             
  nop                                            #  72    0x7ebf0  1      OPC=nop             
  nop                                            #  73    0x7ebf1  1      OPC=nop             
  nop                                            #  74    0x7ebf2  1      OPC=nop             
  nop                                            #  75    0x7ebf3  1      OPC=nop             
  nop                                            #  76    0x7ebf4  1      OPC=nop             
  nop                                            #  77    0x7ebf5  1      OPC=nop             
  nop                                            #  78    0x7ebf6  1      OPC=nop             
  nop                                            #  79    0x7ebf7  1      OPC=nop             
  nop                                            #  80    0x7ebf8  1      OPC=nop             
  nop                                            #  81    0x7ebf9  1      OPC=nop             
  nop                                            #  82    0x7ebfa  1      OPC=nop             
  nop                                            #  83    0x7ebfb  1      OPC=nop             
  nop                                            #  84    0x7ebfc  1      OPC=nop             
  nop                                            #  85    0x7ebfd  1      OPC=nop             
  nop                                            #  86    0x7ebfe  1      OPC=nop             
  nop                                            #  87    0x7ebff  1      OPC=nop             
  nop                                            #  88    0x7ec00  1      OPC=nop             
  nop                                            #  89    0x7ec01  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7ec02  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb0EE16do_negative_signEv, .-_ZNKSt10moneypunctIcLb0EE16do_negative_signEv

