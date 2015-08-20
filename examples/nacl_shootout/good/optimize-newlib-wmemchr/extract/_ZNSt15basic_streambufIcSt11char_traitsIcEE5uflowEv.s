  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, @function

#! file-offset 0xe8720
#! rip-offset  0xa8720
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv:  #        0xa8720  0      OPC=<label>         
  pushq %rbx                                           #  1     0xa8720  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xa8721  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  3     0xa8723  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  4     0xa8725  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                      #  5     0xa8729  2      OPC=movl_r32_r32    
  movl %eax, %eax                                      #  6     0xa872b  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa872d  5      OPC=movl_r32_m32    
  nop                                                  #  8     0xa8732  1      OPC=nop             
  nop                                                  #  9     0xa8733  1      OPC=nop             
  nop                                                  #  10    0xa8734  1      OPC=nop             
  nop                                                  #  11    0xa8735  1      OPC=nop             
  nop                                                  #  12    0xa8736  1      OPC=nop             
  nop                                                  #  13    0xa8737  1      OPC=nop             
  andl $0xffffffe0, %eax                               #  14    0xa8738  6      OPC=andl_r32_imm32  
  nop                                                  #  15    0xa873e  1      OPC=nop             
  nop                                                  #  16    0xa873f  1      OPC=nop             
  nop                                                  #  17    0xa8740  1      OPC=nop             
  addq %r15, %rax                                      #  18    0xa8741  3      OPC=addq_r64_r64    
  callq %rax                                           #  19    0xa8744  2      OPC=callq_r64       
  cmpl $0xffffffff, %eax                               #  20    0xa8746  6      OPC=cmpl_r32_imm32  
  nop                                                  #  21    0xa874c  1      OPC=nop             
  nop                                                  #  22    0xa874d  1      OPC=nop             
  nop                                                  #  23    0xa874e  1      OPC=nop             
  je .L_a8760                                          #  24    0xa874f  2      OPC=je_label        
  movl %ebx, %ebx                                      #  25    0xa8751  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edx                          #  26    0xa8753  5      OPC=movl_r32_m32    
  movl %edx, %edx                                      #  27    0xa8758  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax                           #  28    0xa875a  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx                                      #  29    0xa875f  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx                                      #  30    0xa8762  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rbx,1)                          #  31    0xa8764  5      OPC=movl_m32_r32    
  nop                                                  #  32    0xa8769  1      OPC=nop             
  nop                                                  #  33    0xa876a  1      OPC=nop             
  nop                                                  #  34    0xa876b  1      OPC=nop             
.L_a8760:                                              #        0xa876c  0      OPC=<label>         
  popq %rbx                                            #  35    0xa876c  1      OPC=popq_r64_1      
  popq %r11                                            #  36    0xa876d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  37    0xa876f  7      OPC=andl_r32_imm32  
  nop                                                  #  38    0xa8776  1      OPC=nop             
  nop                                                  #  39    0xa8777  1      OPC=nop             
  nop                                                  #  40    0xa8778  1      OPC=nop             
  nop                                                  #  41    0xa8779  1      OPC=nop             
  addq %r15, %r11                                      #  42    0xa877a  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  43    0xa877d  3      OPC=jmpq_r64        
  nop                                                  #  44    0xa8780  1      OPC=nop             
  nop                                                  #  45    0xa8781  1      OPC=nop             
  nop                                                  #  46    0xa8782  1      OPC=nop             
  nop                                                  #  47    0xa8783  1      OPC=nop             
  nop                                                  #  48    0xa8784  1      OPC=nop             
  nop                                                  #  49    0xa8785  1      OPC=nop             
  nop                                                  #  50    0xa8786  1      OPC=nop             
  nop                                                  #  51    0xa8787  1      OPC=nop             
  nop                                                  #  52    0xa8788  1      OPC=nop             
  nop                                                  #  53    0xa8789  1      OPC=nop             
  nop                                                  #  54    0xa878a  1      OPC=nop             
  nop                                                  #  55    0xa878b  1      OPC=nop             
  nop                                                  #  56    0xa878c  1      OPC=nop             
  nop                                                  #  57    0xa878d  1      OPC=nop             
  nop                                                  #  58    0xa878e  1      OPC=nop             
  nop                                                  #  59    0xa878f  1      OPC=nop             
  nop                                                  #  60    0xa8790  1      OPC=nop             
  nop                                                  #  61    0xa8791  1      OPC=nop             
  nop                                                  #  62    0xa8792  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv

