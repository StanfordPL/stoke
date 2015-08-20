  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv, @function

#! file-offset 0x12a080
#! rip-offset  0xea080
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv:  #        0xea080  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xea080  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                #  2     0xea082  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x6c(%r15,%rdi,1)                                   #  3     0xea084  6      OPC=cmpb_m8_imm8    
  je .L_ea0e0                                                    #  4     0xea08a  2      OPC=je_label        
  movl %edi, %edi                                                #  5     0xea08c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  6     0xea08e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  7     0xea093  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %eax                                    #  8     0xea095  5      OPC=cmpl_r32_m32    
  nop                                                            #  9     0xea09a  1      OPC=nop             
  nop                                                            #  10    0xea09b  1      OPC=nop             
  nop                                                            #  11    0xea09c  1      OPC=nop             
  nop                                                            #  12    0xea09d  1      OPC=nop             
  nop                                                            #  13    0xea09e  1      OPC=nop             
  nop                                                            #  14    0xea09f  1      OPC=nop             
  movl %edi, %edi                                                #  15    0xea0a0  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rdi,1), %edx                                   #  16    0xea0a2  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  17    0xea0a7  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %ecx                                   #  18    0xea0a9  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  19    0xea0ae  2      OPC=movl_r32_r32    
  movb $0x0, 0x6c(%r15,%rdi,1)                                   #  20    0xea0b0  6      OPC=movb_m8_imm8    
  setne %al                                                      #  21    0xea0b6  3      OPC=setne_r8        
  movl %edi, %edi                                                #  22    0xea0b9  2      OPC=movl_r32_r32    
  movl %ecx, 0x4(%r15,%rdi,1)                                    #  23    0xea0bb  5      OPC=movl_m32_r32    
  movzbl %al, %eax                                               #  24    0xea0c0  3      OPC=movzbl_r32_r8   
  movl %edi, %edi                                                #  25    0xea0c3  2      OPC=movl_r32_r32    
  addl 0x64(%r15,%rdi,1), %eax                                   #  26    0xea0c5  5      OPC=addl_r32_m32    
  movl %edi, %edi                                                #  27    0xea0ca  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rdi,1)                                    #  28    0xea0cc  5      OPC=movl_m32_r32    
  movl %edi, %edi                                                #  29    0xea0d1  2      OPC=movl_r32_r32    
  movl %eax, 0x64(%r15,%rdi,1)                                   #  30    0xea0d3  5      OPC=movl_m32_r32    
  movl %edi, %edi                                                #  31    0xea0d8  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                    #  32    0xea0da  5      OPC=movl_m32_r32    
  nop                                                            #  33    0xea0df  1      OPC=nop             
.L_ea0e0:                                                        #        0xea0e0  0      OPC=<label>         
  popq %r11                                                      #  34    0xea0e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  35    0xea0e2  7      OPC=andl_r32_imm32  
  nop                                                            #  36    0xea0e9  1      OPC=nop             
  nop                                                            #  37    0xea0ea  1      OPC=nop             
  nop                                                            #  38    0xea0eb  1      OPC=nop             
  nop                                                            #  39    0xea0ec  1      OPC=nop             
  addq %r15, %r11                                                #  40    0xea0ed  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  41    0xea0f0  3      OPC=jmpq_r64        
  nop                                                            #  42    0xea0f3  1      OPC=nop             
  nop                                                            #  43    0xea0f4  1      OPC=nop             
  nop                                                            #  44    0xea0f5  1      OPC=nop             
  nop                                                            #  45    0xea0f6  1      OPC=nop             
  nop                                                            #  46    0xea0f7  1      OPC=nop             
  nop                                                            #  47    0xea0f8  1      OPC=nop             
  nop                                                            #  48    0xea0f9  1      OPC=nop             
  nop                                                            #  49    0xea0fa  1      OPC=nop             
  nop                                                            #  50    0xea0fb  1      OPC=nop             
  nop                                                            #  51    0xea0fc  1      OPC=nop             
  nop                                                            #  52    0xea0fd  1      OPC=nop             
  nop                                                            #  53    0xea0fe  1      OPC=nop             
  nop                                                            #  54    0xea0ff  1      OPC=nop             
  nop                                                            #  55    0xea100  1      OPC=nop             
  nop                                                            #  56    0xea101  1      OPC=nop             
  nop                                                            #  57    0xea102  1      OPC=nop             
  nop                                                            #  58    0xea103  1      OPC=nop             
  nop                                                            #  59    0xea104  1      OPC=nop             
  nop                                                            #  60    0xea105  1      OPC=nop             
  nop                                                            #  61    0xea106  1      OPC=nop             
                                                                                                              
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE16_M_destroy_pbackEv

