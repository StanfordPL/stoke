  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, @function

#! file-offset 0xe9340
#! rip-offset  0xa9340
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv:  #        0xa9340  0      OPC=<label>         
  pushq %rbx                                           #  1     0xa9340  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xa9341  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  3     0xa9343  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  4     0xa9345  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                      #  5     0xa9349  2      OPC=movl_r32_r32    
  movl %eax, %eax                                      #  6     0xa934b  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa934d  5      OPC=movl_r32_m32    
  nop                                                  #  8     0xa9352  1      OPC=nop             
  nop                                                  #  9     0xa9353  1      OPC=nop             
  nop                                                  #  10    0xa9354  1      OPC=nop             
  nop                                                  #  11    0xa9355  1      OPC=nop             
  nop                                                  #  12    0xa9356  1      OPC=nop             
  nop                                                  #  13    0xa9357  1      OPC=nop             
  andl $0xffffffe0, %eax                               #  14    0xa9358  6      OPC=andl_r32_imm32  
  nop                                                  #  15    0xa935e  1      OPC=nop             
  nop                                                  #  16    0xa935f  1      OPC=nop             
  nop                                                  #  17    0xa9360  1      OPC=nop             
  addq %r15, %rax                                      #  18    0xa9361  3      OPC=addq_r64_r64    
  callq %rax                                           #  19    0xa9364  2      OPC=callq_r64       
  cmpl $0xffffffff, %eax                               #  20    0xa9366  6      OPC=cmpl_r32_imm32  
  nop                                                  #  21    0xa936c  1      OPC=nop             
  nop                                                  #  22    0xa936d  1      OPC=nop             
  nop                                                  #  23    0xa936e  1      OPC=nop             
  je .L_a9380                                          #  24    0xa936f  2      OPC=je_label        
  movl %ebx, %ebx                                      #  25    0xa9371  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edx                          #  26    0xa9373  5      OPC=movl_r32_m32    
  movl %edx, %edx                                      #  27    0xa9378  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax                             #  28    0xa937a  4      OPC=movl_r32_m32    
  addl $0x4, %edx                                      #  29    0xa937e  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx                                      #  30    0xa9381  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rbx,1)                          #  31    0xa9383  5      OPC=movl_m32_r32    
  nop                                                  #  32    0xa9388  1      OPC=nop             
  nop                                                  #  33    0xa9389  1      OPC=nop             
  nop                                                  #  34    0xa938a  1      OPC=nop             
  nop                                                  #  35    0xa938b  1      OPC=nop             
.L_a9380:                                              #        0xa938c  0      OPC=<label>         
  popq %rbx                                            #  36    0xa938c  1      OPC=popq_r64_1      
  popq %r11                                            #  37    0xa938d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  38    0xa938f  7      OPC=andl_r32_imm32  
  nop                                                  #  39    0xa9396  1      OPC=nop             
  nop                                                  #  40    0xa9397  1      OPC=nop             
  nop                                                  #  41    0xa9398  1      OPC=nop             
  nop                                                  #  42    0xa9399  1      OPC=nop             
  addq %r15, %r11                                      #  43    0xa939a  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  44    0xa939d  3      OPC=jmpq_r64        
  nop                                                  #  45    0xa93a0  1      OPC=nop             
  nop                                                  #  46    0xa93a1  1      OPC=nop             
  nop                                                  #  47    0xa93a2  1      OPC=nop             
  nop                                                  #  48    0xa93a3  1      OPC=nop             
  nop                                                  #  49    0xa93a4  1      OPC=nop             
  nop                                                  #  50    0xa93a5  1      OPC=nop             
  nop                                                  #  51    0xa93a6  1      OPC=nop             
  nop                                                  #  52    0xa93a7  1      OPC=nop             
  nop                                                  #  53    0xa93a8  1      OPC=nop             
  nop                                                  #  54    0xa93a9  1      OPC=nop             
  nop                                                  #  55    0xa93aa  1      OPC=nop             
  nop                                                  #  56    0xa93ab  1      OPC=nop             
  nop                                                  #  57    0xa93ac  1      OPC=nop             
  nop                                                  #  58    0xa93ad  1      OPC=nop             
  nop                                                  #  59    0xa93ae  1      OPC=nop             
  nop                                                  #  60    0xa93af  1      OPC=nop             
  nop                                                  #  61    0xa93b0  1      OPC=nop             
  nop                                                  #  62    0xa93b1  1      OPC=nop             
  nop                                                  #  63    0xa93b2  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv

