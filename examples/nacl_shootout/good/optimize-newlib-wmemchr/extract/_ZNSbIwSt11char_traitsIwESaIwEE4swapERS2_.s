  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, @function

#! file-offset 0x1157a0
#! rip-offset  0xd57a0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_:  #        0xd57a0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd57a0  2      OPC=movl_r32_r32    
  movl %esi, %esi                            #  2     0xd57a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  3     0xd57a4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  4     0xd57a6  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                      #  5     0xd57aa  3      OPC=leal_r32_m16    
  movl %edx, %edx                            #  6     0xd57ad  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d                #  7     0xd57af  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                           #  8     0xd57b4  3      OPC=testl_r32_r32   
  js .L_d5800                                #  9     0xd57b7  2      OPC=js_label        
  nop                                        #  10    0xd57b9  1      OPC=nop             
  nop                                        #  11    0xd57ba  1      OPC=nop             
  nop                                        #  12    0xd57bb  1      OPC=nop             
  nop                                        #  13    0xd57bc  1      OPC=nop             
  nop                                        #  14    0xd57bd  1      OPC=nop             
  nop                                        #  15    0xd57be  1      OPC=nop             
  nop                                        #  16    0xd57bf  1      OPC=nop             
.L_d57c0:                                    #        0xd57c0  0      OPC=<label>         
  movl %esi, %esi                            #  17    0xd57c0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx                   #  18    0xd57c2  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx                      #  19    0xd57c6  3      OPC=leal_r32_m16    
  movl %ecx, %ecx                            #  20    0xd57c9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rcx,1), %r8d                #  21    0xd57cb  5      OPC=movl_r32_m32    
  testl %r8d, %r8d                           #  22    0xd57d0  3      OPC=testl_r32_r32   
  jns .L_d57e0                               #  23    0xd57d3  2      OPC=jns_label       
  movl %ecx, %ecx                            #  24    0xd57d5  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rcx,1)                #  25    0xd57d7  9      OPC=movl_m32_imm32  
.L_d57e0:                                    #        0xd57e0  0      OPC=<label>         
  popq %r11                                  #  26    0xd57e0  2      OPC=popq_r64_1      
  movl %edi, %edi                            #  27    0xd57e2  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                   #  28    0xd57e4  4      OPC=movl_m32_r32    
  movl %esi, %esi                            #  29    0xd57e8  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)                   #  30    0xd57ea  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                    #  31    0xd57ee  7      OPC=andl_r32_imm32  
  nop                                        #  32    0xd57f5  1      OPC=nop             
  nop                                        #  33    0xd57f6  1      OPC=nop             
  nop                                        #  34    0xd57f7  1      OPC=nop             
  nop                                        #  35    0xd57f8  1      OPC=nop             
  addq %r15, %r11                            #  36    0xd57f9  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  37    0xd57fc  3      OPC=jmpq_r64        
  nop                                        #  38    0xd57ff  1      OPC=nop             
  nop                                        #  39    0xd5800  1      OPC=nop             
  nop                                        #  40    0xd5801  1      OPC=nop             
  nop                                        #  41    0xd5802  1      OPC=nop             
  nop                                        #  42    0xd5803  1      OPC=nop             
  nop                                        #  43    0xd5804  1      OPC=nop             
  nop                                        #  44    0xd5805  1      OPC=nop             
  nop                                        #  45    0xd5806  1      OPC=nop             
.L_d5800:                                    #        0xd5807  0      OPC=<label>         
  movl %edx, %edx                            #  46    0xd5807  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdx,1)                #  47    0xd5809  9      OPC=movl_m32_imm32  
  jmpq .L_d57c0                              #  48    0xd5812  2      OPC=jmpq_label      
  nop                                        #  49    0xd5814  1      OPC=nop             
  nop                                        #  50    0xd5815  1      OPC=nop             
  nop                                        #  51    0xd5816  1      OPC=nop             
  nop                                        #  52    0xd5817  1      OPC=nop             
  nop                                        #  53    0xd5818  1      OPC=nop             
  nop                                        #  54    0xd5819  1      OPC=nop             
  nop                                        #  55    0xd581a  1      OPC=nop             
  nop                                        #  56    0xd581b  1      OPC=nop             
  nop                                        #  57    0xd581c  1      OPC=nop             
  nop                                        #  58    0xd581d  1      OPC=nop             
  nop                                        #  59    0xd581e  1      OPC=nop             
  nop                                        #  60    0xd581f  1      OPC=nop             
  nop                                        #  61    0xd5820  1      OPC=nop             
  nop                                        #  62    0xd5821  1      OPC=nop             
  nop                                        #  63    0xd5822  1      OPC=nop             
  nop                                        #  64    0xd5823  1      OPC=nop             
  nop                                        #  65    0xd5824  1      OPC=nop             
  nop                                        #  66    0xd5825  1      OPC=nop             
  nop                                        #  67    0xd5826  1      OPC=nop             
                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, .-_ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_

