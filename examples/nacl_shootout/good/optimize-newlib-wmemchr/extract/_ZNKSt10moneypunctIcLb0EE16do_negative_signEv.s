  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_negative_signEv
  .type _ZNKSt10moneypunctIcLb0EE16do_negative_signEv, @function

#! file-offset 0xbe460
#! rip-offset  0x7e460
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE16do_negative_signEv:  #        0x7e460  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7e460  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7e461  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7e463  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7e465  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7e467  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7e46a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7e46d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7e46f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7e474  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7e478  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %esi                   #  11    0x7e47a  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7e47f  1      OPC=nop             
  nop                                            #  13    0x7e480  1      OPC=nop             
  nop                                            #  14    0x7e481  1      OPC=nop             
  nop                                            #  15    0x7e482  1      OPC=nop             
  nop                                            #  16    0x7e483  1      OPC=nop             
  nop                                            #  17    0x7e484  1      OPC=nop             
  nop                                            #  18    0x7e485  1      OPC=nop             
  nop                                            #  19    0x7e486  1      OPC=nop             
  nop                                            #  20    0x7e487  1      OPC=nop             
  nop                                            #  21    0x7e488  1      OPC=nop             
  nop                                            #  22    0x7e489  1      OPC=nop             
  nop                                            #  23    0x7e48a  1      OPC=nop             
  nop                                            #  24    0x7e48b  1      OPC=nop             
  nop                                            #  25    0x7e48c  1      OPC=nop             
  nop                                            #  26    0x7e48d  1      OPC=nop             
  nop                                            #  27    0x7e48e  1      OPC=nop             
  nop                                            #  28    0x7e48f  1      OPC=nop             
  nop                                            #  29    0x7e490  1      OPC=nop             
  nop                                            #  30    0x7e491  1      OPC=nop             
  nop                                            #  31    0x7e492  1      OPC=nop             
  nop                                            #  32    0x7e493  1      OPC=nop             
  nop                                            #  33    0x7e494  1      OPC=nop             
  nop                                            #  34    0x7e495  1      OPC=nop             
  nop                                            #  35    0x7e496  1      OPC=nop             
  nop                                            #  36    0x7e497  1      OPC=nop             
  nop                                            #  37    0x7e498  1      OPC=nop             
  nop                                            #  38    0x7e499  1      OPC=nop             
  nop                                            #  39    0x7e49a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7e49b  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7e4a0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7e4a2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7e4a5  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7e4a8  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7e4a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7e4ab  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7e4b2  1      OPC=nop             
  nop                                            #  48    0x7e4b3  1      OPC=nop             
  nop                                            #  49    0x7e4b4  1      OPC=nop             
  nop                                            #  50    0x7e4b5  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7e4b6  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7e4b9  3      OPC=jmpq_r64        
  nop                                            #  53    0x7e4bc  1      OPC=nop             
  nop                                            #  54    0x7e4bd  1      OPC=nop             
  nop                                            #  55    0x7e4be  1      OPC=nop             
  nop                                            #  56    0x7e4bf  1      OPC=nop             
  nop                                            #  57    0x7e4c0  1      OPC=nop             
  nop                                            #  58    0x7e4c1  1      OPC=nop             
  nop                                            #  59    0x7e4c2  1      OPC=nop             
  nop                                            #  60    0x7e4c3  1      OPC=nop             
  nop                                            #  61    0x7e4c4  1      OPC=nop             
  nop                                            #  62    0x7e4c5  1      OPC=nop             
  nop                                            #  63    0x7e4c6  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7e4c7  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7e4c9  1      OPC=nop             
  nop                                            #  66    0x7e4ca  1      OPC=nop             
  nop                                            #  67    0x7e4cb  1      OPC=nop             
  nop                                            #  68    0x7e4cc  1      OPC=nop             
  nop                                            #  69    0x7e4cd  1      OPC=nop             
  nop                                            #  70    0x7e4ce  1      OPC=nop             
  nop                                            #  71    0x7e4cf  1      OPC=nop             
  nop                                            #  72    0x7e4d0  1      OPC=nop             
  nop                                            #  73    0x7e4d1  1      OPC=nop             
  nop                                            #  74    0x7e4d2  1      OPC=nop             
  nop                                            #  75    0x7e4d3  1      OPC=nop             
  nop                                            #  76    0x7e4d4  1      OPC=nop             
  nop                                            #  77    0x7e4d5  1      OPC=nop             
  nop                                            #  78    0x7e4d6  1      OPC=nop             
  nop                                            #  79    0x7e4d7  1      OPC=nop             
  nop                                            #  80    0x7e4d8  1      OPC=nop             
  nop                                            #  81    0x7e4d9  1      OPC=nop             
  nop                                            #  82    0x7e4da  1      OPC=nop             
  nop                                            #  83    0x7e4db  1      OPC=nop             
  nop                                            #  84    0x7e4dc  1      OPC=nop             
  nop                                            #  85    0x7e4dd  1      OPC=nop             
  nop                                            #  86    0x7e4de  1      OPC=nop             
  nop                                            #  87    0x7e4df  1      OPC=nop             
  nop                                            #  88    0x7e4e0  1      OPC=nop             
  nop                                            #  89    0x7e4e1  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7e4e2  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb0EE16do_negative_signEv, .-_ZNKSt10moneypunctIcLb0EE16do_negative_signEv

