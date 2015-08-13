  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv, @function

#! file-offset 0x129d80
#! rip-offset  0xe9d80
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv:  #        0xe9d80  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xe9d80  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                #  2     0xe9d82  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x6c(%r15,%rdi,1)                                   #  3     0xe9d84  6      OPC=cmpb_m8_imm8    
  je .L_e9de0                                                    #  4     0xe9d8a  2      OPC=je_label        
  movl %edi, %edi                                                #  5     0xe9d8c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  6     0xe9d8e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  7     0xe9d93  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %eax                                    #  8     0xe9d95  5      OPC=cmpl_r32_m32    
  nop                                                            #  9     0xe9d9a  1      OPC=nop             
  nop                                                            #  10    0xe9d9b  1      OPC=nop             
  nop                                                            #  11    0xe9d9c  1      OPC=nop             
  nop                                                            #  12    0xe9d9d  1      OPC=nop             
  nop                                                            #  13    0xe9d9e  1      OPC=nop             
  nop                                                            #  14    0xe9d9f  1      OPC=nop             
  movl %edi, %edi                                                #  15    0xe9da0  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rdi,1), %edx                                   #  16    0xe9da2  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  17    0xe9da7  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %ecx                                   #  18    0xe9da9  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  19    0xe9dae  2      OPC=movl_r32_r32    
  movb $0x0, 0x6c(%r15,%rdi,1)                                   #  20    0xe9db0  6      OPC=movb_m8_imm8    
  setne %al                                                      #  21    0xe9db6  3      OPC=setne_r8        
  movl %edi, %edi                                                #  22    0xe9db9  2      OPC=movl_r32_r32    
  movl %ecx, 0x4(%r15,%rdi,1)                                    #  23    0xe9dbb  5      OPC=movl_m32_r32    
  movzbl %al, %eax                                               #  24    0xe9dc0  3      OPC=movzbl_r32_r8   
  movl %edi, %edi                                                #  25    0xe9dc3  2      OPC=movl_r32_r32    
  addl 0x64(%r15,%rdi,1), %eax                                   #  26    0xe9dc5  5      OPC=addl_r32_m32    
  movl %edi, %edi                                                #  27    0xe9dca  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rdi,1)                                    #  28    0xe9dcc  5      OPC=movl_m32_r32    
  movl %edi, %edi                                                #  29    0xe9dd1  2      OPC=movl_r32_r32    
  movl %eax, 0x64(%r15,%rdi,1)                                   #  30    0xe9dd3  5      OPC=movl_m32_r32    
  movl %edi, %edi                                                #  31    0xe9dd8  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                    #  32    0xe9dda  5      OPC=movl_m32_r32    
  nop                                                            #  33    0xe9ddf  1      OPC=nop             
.L_e9de0:                                                        #        0xe9de0  0      OPC=<label>         
  popq %r11                                                      #  34    0xe9de0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  35    0xe9de2  7      OPC=andl_r32_imm32  
  nop                                                            #  36    0xe9de9  1      OPC=nop             
  nop                                                            #  37    0xe9dea  1      OPC=nop             
  nop                                                            #  38    0xe9deb  1      OPC=nop             
  nop                                                            #  39    0xe9dec  1      OPC=nop             
  addq %r15, %r11                                                #  40    0xe9ded  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  41    0xe9df0  3      OPC=jmpq_r64        
  nop                                                            #  42    0xe9df3  1      OPC=nop             
  nop                                                            #  43    0xe9df4  1      OPC=nop             
  nop                                                            #  44    0xe9df5  1      OPC=nop             
  nop                                                            #  45    0xe9df6  1      OPC=nop             
  nop                                                            #  46    0xe9df7  1      OPC=nop             
  nop                                                            #  47    0xe9df8  1      OPC=nop             
  nop                                                            #  48    0xe9df9  1      OPC=nop             
  nop                                                            #  49    0xe9dfa  1      OPC=nop             
  nop                                                            #  50    0xe9dfb  1      OPC=nop             
  nop                                                            #  51    0xe9dfc  1      OPC=nop             
  nop                                                            #  52    0xe9dfd  1      OPC=nop             
  nop                                                            #  53    0xe9dfe  1      OPC=nop             
  nop                                                            #  54    0xe9dff  1      OPC=nop             
  nop                                                            #  55    0xe9e00  1      OPC=nop             
  nop                                                            #  56    0xe9e01  1      OPC=nop             
  nop                                                            #  57    0xe9e02  1      OPC=nop             
  nop                                                            #  58    0xe9e03  1      OPC=nop             
  nop                                                            #  59    0xe9e04  1      OPC=nop             
  nop                                                            #  60    0xe9e05  1      OPC=nop             
  nop                                                            #  61    0xe9e06  1      OPC=nop             
                                                                                                              
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv

