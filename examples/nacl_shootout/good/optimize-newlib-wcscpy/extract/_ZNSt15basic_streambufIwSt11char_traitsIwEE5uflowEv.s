  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, @function

#! file-offset 0xe8920
#! rip-offset  0xa8920
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv:  #        0xa8920  0      OPC=<label>         
  pushq %rbx                                           #  1     0xa8920  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xa8921  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  3     0xa8923  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  4     0xa8925  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                      #  5     0xa8929  2      OPC=movl_r32_r32    
  movl %eax, %eax                                      #  6     0xa892b  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa892d  5      OPC=movl_r32_m32    
  nop                                                  #  8     0xa8932  1      OPC=nop             
  nop                                                  #  9     0xa8933  1      OPC=nop             
  nop                                                  #  10    0xa8934  1      OPC=nop             
  nop                                                  #  11    0xa8935  1      OPC=nop             
  nop                                                  #  12    0xa8936  1      OPC=nop             
  nop                                                  #  13    0xa8937  1      OPC=nop             
  andl $0xffffffe0, %eax                               #  14    0xa8938  6      OPC=andl_r32_imm32  
  nop                                                  #  15    0xa893e  1      OPC=nop             
  nop                                                  #  16    0xa893f  1      OPC=nop             
  nop                                                  #  17    0xa8940  1      OPC=nop             
  addq %r15, %rax                                      #  18    0xa8941  3      OPC=addq_r64_r64    
  callq %rax                                           #  19    0xa8944  2      OPC=callq_r64       
  cmpl $0xffffffff, %eax                               #  20    0xa8946  6      OPC=cmpl_r32_imm32  
  nop                                                  #  21    0xa894c  1      OPC=nop             
  nop                                                  #  22    0xa894d  1      OPC=nop             
  nop                                                  #  23    0xa894e  1      OPC=nop             
  je .L_a8960                                          #  24    0xa894f  2      OPC=je_label        
  movl %ebx, %ebx                                      #  25    0xa8951  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edx                          #  26    0xa8953  5      OPC=movl_r32_m32    
  movl %edx, %edx                                      #  27    0xa8958  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax                             #  28    0xa895a  4      OPC=movl_r32_m32    
  addl $0x4, %edx                                      #  29    0xa895e  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx                                      #  30    0xa8961  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rbx,1)                          #  31    0xa8963  5      OPC=movl_m32_r32    
  nop                                                  #  32    0xa8968  1      OPC=nop             
  nop                                                  #  33    0xa8969  1      OPC=nop             
  nop                                                  #  34    0xa896a  1      OPC=nop             
  nop                                                  #  35    0xa896b  1      OPC=nop             
.L_a8960:                                              #        0xa896c  0      OPC=<label>         
  popq %rbx                                            #  36    0xa896c  1      OPC=popq_r64_1      
  popq %r11                                            #  37    0xa896d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  38    0xa896f  7      OPC=andl_r32_imm32  
  nop                                                  #  39    0xa8976  1      OPC=nop             
  nop                                                  #  40    0xa8977  1      OPC=nop             
  nop                                                  #  41    0xa8978  1      OPC=nop             
  nop                                                  #  42    0xa8979  1      OPC=nop             
  addq %r15, %r11                                      #  43    0xa897a  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  44    0xa897d  3      OPC=jmpq_r64        
  nop                                                  #  45    0xa8980  1      OPC=nop             
  nop                                                  #  46    0xa8981  1      OPC=nop             
  nop                                                  #  47    0xa8982  1      OPC=nop             
  nop                                                  #  48    0xa8983  1      OPC=nop             
  nop                                                  #  49    0xa8984  1      OPC=nop             
  nop                                                  #  50    0xa8985  1      OPC=nop             
  nop                                                  #  51    0xa8986  1      OPC=nop             
  nop                                                  #  52    0xa8987  1      OPC=nop             
  nop                                                  #  53    0xa8988  1      OPC=nop             
  nop                                                  #  54    0xa8989  1      OPC=nop             
  nop                                                  #  55    0xa898a  1      OPC=nop             
  nop                                                  #  56    0xa898b  1      OPC=nop             
  nop                                                  #  57    0xa898c  1      OPC=nop             
  nop                                                  #  58    0xa898d  1      OPC=nop             
  nop                                                  #  59    0xa898e  1      OPC=nop             
  nop                                                  #  60    0xa898f  1      OPC=nop             
  nop                                                  #  61    0xa8990  1      OPC=nop             
  nop                                                  #  62    0xa8991  1      OPC=nop             
  nop                                                  #  63    0xa8992  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv

