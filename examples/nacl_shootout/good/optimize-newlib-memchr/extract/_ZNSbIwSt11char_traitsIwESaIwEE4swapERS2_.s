  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, @function

#! file-offset 0x115ec0
#! rip-offset  0xd5ec0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_:  #        0xd5ec0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd5ec0  2      OPC=movl_r32_r32    
  movl %esi, %esi                            #  2     0xd5ec2  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  3     0xd5ec4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  4     0xd5ec6  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                      #  5     0xd5eca  3      OPC=leal_r32_m16    
  movl %edx, %edx                            #  6     0xd5ecd  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d                #  7     0xd5ecf  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                           #  8     0xd5ed4  3      OPC=testl_r32_r32   
  js .L_d5f20                                #  9     0xd5ed7  2      OPC=js_label        
  nop                                        #  10    0xd5ed9  1      OPC=nop             
  nop                                        #  11    0xd5eda  1      OPC=nop             
  nop                                        #  12    0xd5edb  1      OPC=nop             
  nop                                        #  13    0xd5edc  1      OPC=nop             
  nop                                        #  14    0xd5edd  1      OPC=nop             
  nop                                        #  15    0xd5ede  1      OPC=nop             
  nop                                        #  16    0xd5edf  1      OPC=nop             
.L_d5ee0:                                    #        0xd5ee0  0      OPC=<label>         
  movl %esi, %esi                            #  17    0xd5ee0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                   #  18    0xd5ee2  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx                      #  19    0xd5ee6  3      OPC=leal_r32_m16    
  movl %ecx, %ecx                            #  20    0xd5ee9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rcx,1), %r8d                #  21    0xd5eeb  5      OPC=movl_r32_m32    
  testl %r8d, %r8d                           #  22    0xd5ef0  3      OPC=testl_r32_r32   
  jns .L_d5f00                               #  23    0xd5ef3  2      OPC=jns_label       
  movl %ecx, %ecx                            #  24    0xd5ef5  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rcx,1)                #  25    0xd5ef7  9      OPC=movl_m32_imm32  
.L_d5f00:                                    #        0xd5f00  0      OPC=<label>         
  popq %r11                                  #  26    0xd5f00  2      OPC=popq_r64_1      
  movl %edi, %edi                            #  27    0xd5f02  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                   #  28    0xd5f04  4      OPC=movl_m32_r32    
  movl %esi, %esi                            #  29    0xd5f08  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)                   #  30    0xd5f0a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                    #  31    0xd5f0e  7      OPC=andl_r32_imm32  
  nop                                        #  32    0xd5f15  1      OPC=nop             
  nop                                        #  33    0xd5f16  1      OPC=nop             
  nop                                        #  34    0xd5f17  1      OPC=nop             
  nop                                        #  35    0xd5f18  1      OPC=nop             
  addq %r15, %r11                            #  36    0xd5f19  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  37    0xd5f1c  3      OPC=jmpq_r64        
  nop                                        #  38    0xd5f1f  1      OPC=nop             
  nop                                        #  39    0xd5f20  1      OPC=nop             
  nop                                        #  40    0xd5f21  1      OPC=nop             
  nop                                        #  41    0xd5f22  1      OPC=nop             
  nop                                        #  42    0xd5f23  1      OPC=nop             
  nop                                        #  43    0xd5f24  1      OPC=nop             
  nop                                        #  44    0xd5f25  1      OPC=nop             
  nop                                        #  45    0xd5f26  1      OPC=nop             
.L_d5f20:                                    #        0xd5f27  0      OPC=<label>         
  movl %edx, %edx                            #  46    0xd5f27  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdx,1)                #  47    0xd5f29  9      OPC=movl_m32_imm32  
  jmpq .L_d5ee0                              #  48    0xd5f32  2      OPC=jmpq_label      
  nop                                        #  49    0xd5f34  1      OPC=nop             
  nop                                        #  50    0xd5f35  1      OPC=nop             
  nop                                        #  51    0xd5f36  1      OPC=nop             
  nop                                        #  52    0xd5f37  1      OPC=nop             
  nop                                        #  53    0xd5f38  1      OPC=nop             
  nop                                        #  54    0xd5f39  1      OPC=nop             
  nop                                        #  55    0xd5f3a  1      OPC=nop             
  nop                                        #  56    0xd5f3b  1      OPC=nop             
  nop                                        #  57    0xd5f3c  1      OPC=nop             
  nop                                        #  58    0xd5f3d  1      OPC=nop             
  nop                                        #  59    0xd5f3e  1      OPC=nop             
  nop                                        #  60    0xd5f3f  1      OPC=nop             
  nop                                        #  61    0xd5f40  1      OPC=nop             
  nop                                        #  62    0xd5f41  1      OPC=nop             
  nop                                        #  63    0xd5f42  1      OPC=nop             
  nop                                        #  64    0xd5f43  1      OPC=nop             
  nop                                        #  65    0xd5f44  1      OPC=nop             
  nop                                        #  66    0xd5f45  1      OPC=nop             
  nop                                        #  67    0xd5f46  1      OPC=nop             
                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, .-_ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_

