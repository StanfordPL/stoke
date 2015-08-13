  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_positive_signEv
  .type _ZNKSt10moneypunctIwLb1EE16do_positive_signEv, @function

#! file-offset 0xf6a80
#! rip-offset  0xb6a80
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_positive_signEv:      #        0xb6a80  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb6a80  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb6a81  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb6a83  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb6a85  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb6a87  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb6a8a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb6a8d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb6a8f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb6a94  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb6a98  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %esi                       #  11    0xb6a9a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb6a9f  1      OPC=nop             
  nop                                                #  13    0xb6aa0  1      OPC=nop             
  nop                                                #  14    0xb6aa1  1      OPC=nop             
  nop                                                #  15    0xb6aa2  1      OPC=nop             
  nop                                                #  16    0xb6aa3  1      OPC=nop             
  nop                                                #  17    0xb6aa4  1      OPC=nop             
  nop                                                #  18    0xb6aa5  1      OPC=nop             
  nop                                                #  19    0xb6aa6  1      OPC=nop             
  nop                                                #  20    0xb6aa7  1      OPC=nop             
  nop                                                #  21    0xb6aa8  1      OPC=nop             
  nop                                                #  22    0xb6aa9  1      OPC=nop             
  nop                                                #  23    0xb6aaa  1      OPC=nop             
  nop                                                #  24    0xb6aab  1      OPC=nop             
  nop                                                #  25    0xb6aac  1      OPC=nop             
  nop                                                #  26    0xb6aad  1      OPC=nop             
  nop                                                #  27    0xb6aae  1      OPC=nop             
  nop                                                #  28    0xb6aaf  1      OPC=nop             
  nop                                                #  29    0xb6ab0  1      OPC=nop             
  nop                                                #  30    0xb6ab1  1      OPC=nop             
  nop                                                #  31    0xb6ab2  1      OPC=nop             
  nop                                                #  32    0xb6ab3  1      OPC=nop             
  nop                                                #  33    0xb6ab4  1      OPC=nop             
  nop                                                #  34    0xb6ab5  1      OPC=nop             
  nop                                                #  35    0xb6ab6  1      OPC=nop             
  nop                                                #  36    0xb6ab7  1      OPC=nop             
  nop                                                #  37    0xb6ab8  1      OPC=nop             
  nop                                                #  38    0xb6ab9  1      OPC=nop             
  nop                                                #  39    0xb6aba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb6abb  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb6ac0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb6ac2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb6ac5  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb6ac8  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb6ac9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb6acb  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb6ad2  1      OPC=nop             
  nop                                                #  48    0xb6ad3  1      OPC=nop             
  nop                                                #  49    0xb6ad4  1      OPC=nop             
  nop                                                #  50    0xb6ad5  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb6ad6  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb6ad9  3      OPC=jmpq_r64        
  nop                                                #  53    0xb6adc  1      OPC=nop             
  nop                                                #  54    0xb6add  1      OPC=nop             
  nop                                                #  55    0xb6ade  1      OPC=nop             
  nop                                                #  56    0xb6adf  1      OPC=nop             
  nop                                                #  57    0xb6ae0  1      OPC=nop             
  nop                                                #  58    0xb6ae1  1      OPC=nop             
  nop                                                #  59    0xb6ae2  1      OPC=nop             
  nop                                                #  60    0xb6ae3  1      OPC=nop             
  nop                                                #  61    0xb6ae4  1      OPC=nop             
  nop                                                #  62    0xb6ae5  1      OPC=nop             
  nop                                                #  63    0xb6ae6  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb6ae7  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb6ae9  1      OPC=nop             
  nop                                                #  66    0xb6aea  1      OPC=nop             
  nop                                                #  67    0xb6aeb  1      OPC=nop             
  nop                                                #  68    0xb6aec  1      OPC=nop             
  nop                                                #  69    0xb6aed  1      OPC=nop             
  nop                                                #  70    0xb6aee  1      OPC=nop             
  nop                                                #  71    0xb6aef  1      OPC=nop             
  nop                                                #  72    0xb6af0  1      OPC=nop             
  nop                                                #  73    0xb6af1  1      OPC=nop             
  nop                                                #  74    0xb6af2  1      OPC=nop             
  nop                                                #  75    0xb6af3  1      OPC=nop             
  nop                                                #  76    0xb6af4  1      OPC=nop             
  nop                                                #  77    0xb6af5  1      OPC=nop             
  nop                                                #  78    0xb6af6  1      OPC=nop             
  nop                                                #  79    0xb6af7  1      OPC=nop             
  nop                                                #  80    0xb6af8  1      OPC=nop             
  nop                                                #  81    0xb6af9  1      OPC=nop             
  nop                                                #  82    0xb6afa  1      OPC=nop             
  nop                                                #  83    0xb6afb  1      OPC=nop             
  nop                                                #  84    0xb6afc  1      OPC=nop             
  nop                                                #  85    0xb6afd  1      OPC=nop             
  nop                                                #  86    0xb6afe  1      OPC=nop             
  nop                                                #  87    0xb6aff  1      OPC=nop             
  nop                                                #  88    0xb6b00  1      OPC=nop             
  nop                                                #  89    0xb6b01  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb6b02  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb1EE16do_positive_signEv, .-_ZNKSt10moneypunctIwLb1EE16do_positive_signEv

