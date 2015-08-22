  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv, @function

#! file-offset 0x12a7a0
#! rip-offset  0xea7a0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv:  #        0xea7a0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xea7a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                #  2     0xea7a2  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x6c(%r15,%rdi,1)                                   #  3     0xea7a4  6      OPC=cmpb_m8_imm8    
  je .L_ea800                                                    #  4     0xea7aa  2      OPC=je_label        
  movl %edi, %edi                                                #  5     0xea7ac  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  6     0xea7ae  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  7     0xea7b3  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %eax                                    #  8     0xea7b5  5      OPC=cmpl_r32_m32    
  nop                                                            #  9     0xea7ba  1      OPC=nop             
  nop                                                            #  10    0xea7bb  1      OPC=nop             
  nop                                                            #  11    0xea7bc  1      OPC=nop             
  nop                                                            #  12    0xea7bd  1      OPC=nop             
  nop                                                            #  13    0xea7be  1      OPC=nop             
  nop                                                            #  14    0xea7bf  1      OPC=nop             
  movl %edi, %edi                                                #  15    0xea7c0  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rdi,1), %edx                                   #  16    0xea7c2  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  17    0xea7c7  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %ecx                                   #  18    0xea7c9  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  19    0xea7ce  2      OPC=movl_r32_r32    
  movb $0x0, 0x6c(%r15,%rdi,1)                                   #  20    0xea7d0  6      OPC=movb_m8_imm8    
  setne %al                                                      #  21    0xea7d6  3      OPC=setne_r8        
  movl %edi, %edi                                                #  22    0xea7d9  2      OPC=movl_r32_r32    
  movl %ecx, 0x4(%r15,%rdi,1)                                    #  23    0xea7db  5      OPC=movl_m32_r32    
  movzbl %al, %eax                                               #  24    0xea7e0  3      OPC=movzbl_r32_r8   
  movl %edi, %edi                                                #  25    0xea7e3  2      OPC=movl_r32_r32    
  addl 0x64(%r15,%rdi,1), %eax                                   #  26    0xea7e5  5      OPC=addl_r32_m32    
  movl %edi, %edi                                                #  27    0xea7ea  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rdi,1)                                    #  28    0xea7ec  5      OPC=movl_m32_r32    
  movl %edi, %edi                                                #  29    0xea7f1  2      OPC=movl_r32_r32    
  movl %eax, 0x64(%r15,%rdi,1)                                   #  30    0xea7f3  5      OPC=movl_m32_r32    
  movl %edi, %edi                                                #  31    0xea7f8  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                    #  32    0xea7fa  5      OPC=movl_m32_r32    
  nop                                                            #  33    0xea7ff  1      OPC=nop             
.L_ea800:                                                        #        0xea800  0      OPC=<label>         
  popq %r11                                                      #  34    0xea800  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  35    0xea802  7      OPC=andl_r32_imm32  
  nop                                                            #  36    0xea809  1      OPC=nop             
  nop                                                            #  37    0xea80a  1      OPC=nop             
  nop                                                            #  38    0xea80b  1      OPC=nop             
  nop                                                            #  39    0xea80c  1      OPC=nop             
  addq %r15, %r11                                                #  40    0xea80d  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  41    0xea810  3      OPC=jmpq_r64        
  nop                                                            #  42    0xea813  1      OPC=nop             
  nop                                                            #  43    0xea814  1      OPC=nop             
  nop                                                            #  44    0xea815  1      OPC=nop             
  nop                                                            #  45    0xea816  1      OPC=nop             
  nop                                                            #  46    0xea817  1      OPC=nop             
  nop                                                            #  47    0xea818  1      OPC=nop             
  nop                                                            #  48    0xea819  1      OPC=nop             
  nop                                                            #  49    0xea81a  1      OPC=nop             
  nop                                                            #  50    0xea81b  1      OPC=nop             
  nop                                                            #  51    0xea81c  1      OPC=nop             
  nop                                                            #  52    0xea81d  1      OPC=nop             
  nop                                                            #  53    0xea81e  1      OPC=nop             
  nop                                                            #  54    0xea81f  1      OPC=nop             
  nop                                                            #  55    0xea820  1      OPC=nop             
  nop                                                            #  56    0xea821  1      OPC=nop             
  nop                                                            #  57    0xea822  1      OPC=nop             
  nop                                                            #  58    0xea823  1      OPC=nop             
  nop                                                            #  59    0xea824  1      OPC=nop             
  nop                                                            #  60    0xea825  1      OPC=nop             
  nop                                                            #  61    0xea826  1      OPC=nop             
                                                                                                              
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv

