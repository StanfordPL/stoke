  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, @function

#! file-offset 0x1154a0
#! rip-offset  0xd54a0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_:  #        0xd54a0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd54a0  2      OPC=movl_r32_r32    
  movl %esi, %esi                            #  2     0xd54a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  3     0xd54a4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  4     0xd54a6  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                      #  5     0xd54aa  3      OPC=leal_r32_m16    
  movl %edx, %edx                            #  6     0xd54ad  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d                #  7     0xd54af  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                           #  8     0xd54b4  3      OPC=testl_r32_r32   
  js .L_d5500                                #  9     0xd54b7  2      OPC=js_label        
  nop                                        #  10    0xd54b9  1      OPC=nop             
  nop                                        #  11    0xd54ba  1      OPC=nop             
  nop                                        #  12    0xd54bb  1      OPC=nop             
  nop                                        #  13    0xd54bc  1      OPC=nop             
  nop                                        #  14    0xd54bd  1      OPC=nop             
  nop                                        #  15    0xd54be  1      OPC=nop             
  nop                                        #  16    0xd54bf  1      OPC=nop             
.L_d54c0:                                    #        0xd54c0  0      OPC=<label>         
  movl %esi, %esi                            #  17    0xd54c0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                   #  18    0xd54c2  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx                      #  19    0xd54c6  3      OPC=leal_r32_m16    
  movl %ecx, %ecx                            #  20    0xd54c9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rcx,1), %r8d                #  21    0xd54cb  5      OPC=movl_r32_m32    
  testl %r8d, %r8d                           #  22    0xd54d0  3      OPC=testl_r32_r32   
  jns .L_d54e0                               #  23    0xd54d3  2      OPC=jns_label       
  movl %ecx, %ecx                            #  24    0xd54d5  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rcx,1)                #  25    0xd54d7  9      OPC=movl_m32_imm32  
.L_d54e0:                                    #        0xd54e0  0      OPC=<label>         
  popq %r11                                  #  26    0xd54e0  2      OPC=popq_r64_1      
  movl %edi, %edi                            #  27    0xd54e2  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                   #  28    0xd54e4  4      OPC=movl_m32_r32    
  movl %esi, %esi                            #  29    0xd54e8  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)                   #  30    0xd54ea  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                    #  31    0xd54ee  7      OPC=andl_r32_imm32  
  nop                                        #  32    0xd54f5  1      OPC=nop             
  nop                                        #  33    0xd54f6  1      OPC=nop             
  nop                                        #  34    0xd54f7  1      OPC=nop             
  nop                                        #  35    0xd54f8  1      OPC=nop             
  addq %r15, %r11                            #  36    0xd54f9  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  37    0xd54fc  3      OPC=jmpq_r64        
  nop                                        #  38    0xd54ff  1      OPC=nop             
  nop                                        #  39    0xd5500  1      OPC=nop             
  nop                                        #  40    0xd5501  1      OPC=nop             
  nop                                        #  41    0xd5502  1      OPC=nop             
  nop                                        #  42    0xd5503  1      OPC=nop             
  nop                                        #  43    0xd5504  1      OPC=nop             
  nop                                        #  44    0xd5505  1      OPC=nop             
  nop                                        #  45    0xd5506  1      OPC=nop             
.L_d5500:                                    #        0xd5507  0      OPC=<label>         
  movl %edx, %edx                            #  46    0xd5507  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdx,1)                #  47    0xd5509  9      OPC=movl_m32_imm32  
  jmpq .L_d54c0                              #  48    0xd5512  2      OPC=jmpq_label      
  nop                                        #  49    0xd5514  1      OPC=nop             
  nop                                        #  50    0xd5515  1      OPC=nop             
  nop                                        #  51    0xd5516  1      OPC=nop             
  nop                                        #  52    0xd5517  1      OPC=nop             
  nop                                        #  53    0xd5518  1      OPC=nop             
  nop                                        #  54    0xd5519  1      OPC=nop             
  nop                                        #  55    0xd551a  1      OPC=nop             
  nop                                        #  56    0xd551b  1      OPC=nop             
  nop                                        #  57    0xd551c  1      OPC=nop             
  nop                                        #  58    0xd551d  1      OPC=nop             
  nop                                        #  59    0xd551e  1      OPC=nop             
  nop                                        #  60    0xd551f  1      OPC=nop             
  nop                                        #  61    0xd5520  1      OPC=nop             
  nop                                        #  62    0xd5521  1      OPC=nop             
  nop                                        #  63    0xd5522  1      OPC=nop             
  nop                                        #  64    0xd5523  1      OPC=nop             
  nop                                        #  65    0xd5524  1      OPC=nop             
  nop                                        #  66    0xd5525  1      OPC=nop             
  nop                                        #  67    0xd5526  1      OPC=nop             
                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, .-_ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_

