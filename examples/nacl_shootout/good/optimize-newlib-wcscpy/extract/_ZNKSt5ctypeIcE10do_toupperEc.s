  .text
  .globl _ZNKSt5ctypeIcE10do_toupperEc
  .type _ZNKSt5ctypeIcE10do_toupperEc, @function

#! file-offset 0x124aa0
#! rip-offset  0xe4aa0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_toupperEc:  #        0xe4aa0  0      OPC=<label>         
  movl %edi, %edi                #  1     0xe4aa0  2      OPC=movl_r32_r32    
  movzbl %sil, %edx              #  2     0xe4aa2  4      OPC=movzbl_r32_r8   
  movl %esi, %eax                #  3     0xe4aa6  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xe4aa8  2      OPC=movl_r32_r32    
  addl 0x18(%r15,%rdi,1), %edx   #  5     0xe4aaa  5      OPC=addl_r32_m32    
  movl %edx, %edx                #  6     0xe4aaf  2      OPC=movl_r32_r32    
  testb $0x2, (%r15,%rdx,1)      #  7     0xe4ab1  5      OPC=testb_m8_imm8   
  je .L_e4ac0                    #  8     0xe4ab6  2      OPC=je_label        
  subl $0x20, %eax               #  9     0xe4ab8  3      OPC=subl_r32_imm8   
  nop                            #  10    0xe4abb  1      OPC=nop             
  nop                            #  11    0xe4abc  1      OPC=nop             
  nop                            #  12    0xe4abd  1      OPC=nop             
  nop                            #  13    0xe4abe  1      OPC=nop             
  nop                            #  14    0xe4abf  1      OPC=nop             
.L_e4ac0:                        #        0xe4ac0  0      OPC=<label>         
  popq %r11                      #  15    0xe4ac0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  16    0xe4ac2  7      OPC=andl_r32_imm32  
  nop                            #  17    0xe4ac9  1      OPC=nop             
  nop                            #  18    0xe4aca  1      OPC=nop             
  nop                            #  19    0xe4acb  1      OPC=nop             
  nop                            #  20    0xe4acc  1      OPC=nop             
  addq %r15, %r11                #  21    0xe4acd  3      OPC=addq_r64_r64    
  jmpq %r11                      #  22    0xe4ad0  3      OPC=jmpq_r64        
  nop                            #  23    0xe4ad3  1      OPC=nop             
  nop                            #  24    0xe4ad4  1      OPC=nop             
  nop                            #  25    0xe4ad5  1      OPC=nop             
  nop                            #  26    0xe4ad6  1      OPC=nop             
  nop                            #  27    0xe4ad7  1      OPC=nop             
  nop                            #  28    0xe4ad8  1      OPC=nop             
  nop                            #  29    0xe4ad9  1      OPC=nop             
  nop                            #  30    0xe4ada  1      OPC=nop             
  nop                            #  31    0xe4adb  1      OPC=nop             
  nop                            #  32    0xe4adc  1      OPC=nop             
  nop                            #  33    0xe4add  1      OPC=nop             
  nop                            #  34    0xe4ade  1      OPC=nop             
  nop                            #  35    0xe4adf  1      OPC=nop             
  nop                            #  36    0xe4ae0  1      OPC=nop             
  nop                            #  37    0xe4ae1  1      OPC=nop             
  nop                            #  38    0xe4ae2  1      OPC=nop             
  nop                            #  39    0xe4ae3  1      OPC=nop             
  nop                            #  40    0xe4ae4  1      OPC=nop             
  nop                            #  41    0xe4ae5  1      OPC=nop             
  nop                            #  42    0xe4ae6  1      OPC=nop             
                                                                              
.size _ZNKSt5ctypeIcE10do_toupperEc, .-_ZNKSt5ctypeIcE10do_toupperEc

