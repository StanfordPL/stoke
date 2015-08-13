  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, @function

#! file-offset 0xe8420
#! rip-offset  0xa8420
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv:  #        0xa8420  0      OPC=<label>         
  pushq %rbx                                           #  1     0xa8420  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xa8421  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  3     0xa8423  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  4     0xa8425  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                      #  5     0xa8429  2      OPC=movl_r32_r32    
  movl %eax, %eax                                      #  6     0xa842b  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa842d  5      OPC=movl_r32_m32    
  nop                                                  #  8     0xa8432  1      OPC=nop             
  nop                                                  #  9     0xa8433  1      OPC=nop             
  nop                                                  #  10    0xa8434  1      OPC=nop             
  nop                                                  #  11    0xa8435  1      OPC=nop             
  nop                                                  #  12    0xa8436  1      OPC=nop             
  nop                                                  #  13    0xa8437  1      OPC=nop             
  andl $0xffffffe0, %eax                               #  14    0xa8438  6      OPC=andl_r32_imm32  
  nop                                                  #  15    0xa843e  1      OPC=nop             
  nop                                                  #  16    0xa843f  1      OPC=nop             
  nop                                                  #  17    0xa8440  1      OPC=nop             
  addq %r15, %rax                                      #  18    0xa8441  3      OPC=addq_r64_r64    
  callq %rax                                           #  19    0xa8444  2      OPC=callq_r64       
  cmpl $0xffffffff, %eax                               #  20    0xa8446  6      OPC=cmpl_r32_imm32  
  nop                                                  #  21    0xa844c  1      OPC=nop             
  nop                                                  #  22    0xa844d  1      OPC=nop             
  nop                                                  #  23    0xa844e  1      OPC=nop             
  je .L_a8460                                          #  24    0xa844f  2      OPC=je_label        
  movl %ebx, %ebx                                      #  25    0xa8451  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edx                          #  26    0xa8453  5      OPC=movl_r32_m32    
  movl %edx, %edx                                      #  27    0xa8458  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax                           #  28    0xa845a  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx                                      #  29    0xa845f  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx                                      #  30    0xa8462  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rbx,1)                          #  31    0xa8464  5      OPC=movl_m32_r32    
  nop                                                  #  32    0xa8469  1      OPC=nop             
  nop                                                  #  33    0xa846a  1      OPC=nop             
  nop                                                  #  34    0xa846b  1      OPC=nop             
.L_a8460:                                              #        0xa846c  0      OPC=<label>         
  popq %rbx                                            #  35    0xa846c  1      OPC=popq_r64_1      
  popq %r11                                            #  36    0xa846d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  37    0xa846f  7      OPC=andl_r32_imm32  
  nop                                                  #  38    0xa8476  1      OPC=nop             
  nop                                                  #  39    0xa8477  1      OPC=nop             
  nop                                                  #  40    0xa8478  1      OPC=nop             
  nop                                                  #  41    0xa8479  1      OPC=nop             
  addq %r15, %r11                                      #  42    0xa847a  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  43    0xa847d  3      OPC=jmpq_r64        
  nop                                                  #  44    0xa8480  1      OPC=nop             
  nop                                                  #  45    0xa8481  1      OPC=nop             
  nop                                                  #  46    0xa8482  1      OPC=nop             
  nop                                                  #  47    0xa8483  1      OPC=nop             
  nop                                                  #  48    0xa8484  1      OPC=nop             
  nop                                                  #  49    0xa8485  1      OPC=nop             
  nop                                                  #  50    0xa8486  1      OPC=nop             
  nop                                                  #  51    0xa8487  1      OPC=nop             
  nop                                                  #  52    0xa8488  1      OPC=nop             
  nop                                                  #  53    0xa8489  1      OPC=nop             
  nop                                                  #  54    0xa848a  1      OPC=nop             
  nop                                                  #  55    0xa848b  1      OPC=nop             
  nop                                                  #  56    0xa848c  1      OPC=nop             
  nop                                                  #  57    0xa848d  1      OPC=nop             
  nop                                                  #  58    0xa848e  1      OPC=nop             
  nop                                                  #  59    0xa848f  1      OPC=nop             
  nop                                                  #  60    0xa8490  1      OPC=nop             
  nop                                                  #  61    0xa8491  1      OPC=nop             
  nop                                                  #  62    0xa8492  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv

