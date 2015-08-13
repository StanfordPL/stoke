  .text
  .globl _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc
  .type _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc, @function

#! file-offset 0x124c80
#! rip-offset  0xe4c80
#! capacity    64 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE8do_widenEPKcS2_Pc:  #        0xe4c80  0      OPC=<label>         
  pushq %rbx                         #  1     0xe4c80  1      OPC=pushq_r64_1     
  movl %edx, %ebx                    #  2     0xe4c81  2      OPC=movl_r32_r32    
  movl %esi, %esi                    #  3     0xe4c83  2      OPC=movl_r32_r32    
  movl %ebx, %edx                    #  4     0xe4c85  2      OPC=movl_r32_r32    
  movl %ecx, %edi                    #  5     0xe4c87  2      OPC=movl_r32_r32    
  subl %esi, %edx                    #  6     0xe4c89  2      OPC=subl_r32_r32    
  nop                                #  7     0xe4c8b  1      OPC=nop             
  nop                                #  8     0xe4c8c  1      OPC=nop             
  nop                                #  9     0xe4c8d  1      OPC=nop             
  nop                                #  10    0xe4c8e  1      OPC=nop             
  nop                                #  11    0xe4c8f  1      OPC=nop             
  nop                                #  12    0xe4c90  1      OPC=nop             
  nop                                #  13    0xe4c91  1      OPC=nop             
  nop                                #  14    0xe4c92  1      OPC=nop             
  nop                                #  15    0xe4c93  1      OPC=nop             
  nop                                #  16    0xe4c94  1      OPC=nop             
  nop                                #  17    0xe4c95  1      OPC=nop             
  nop                                #  18    0xe4c96  1      OPC=nop             
  nop                                #  19    0xe4c97  1      OPC=nop             
  nop                                #  20    0xe4c98  1      OPC=nop             
  nop                                #  21    0xe4c99  1      OPC=nop             
  nop                                #  22    0xe4c9a  1      OPC=nop             
  callq .memcpy                      #  23    0xe4c9b  5      OPC=callq_label     
  movl %ebx, %eax                    #  24    0xe4ca0  2      OPC=movl_r32_r32    
  popq %rbx                          #  25    0xe4ca2  1      OPC=popq_r64_1      
  popq %r11                          #  26    0xe4ca3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  27    0xe4ca5  7      OPC=andl_r32_imm32  
  nop                                #  28    0xe4cac  1      OPC=nop             
  nop                                #  29    0xe4cad  1      OPC=nop             
  nop                                #  30    0xe4cae  1      OPC=nop             
  nop                                #  31    0xe4caf  1      OPC=nop             
  addq %r15, %r11                    #  32    0xe4cb0  3      OPC=addq_r64_r64    
  jmpq %r11                          #  33    0xe4cb3  3      OPC=jmpq_r64        
  nop                                #  34    0xe4cb6  1      OPC=nop             
  nop                                #  35    0xe4cb7  1      OPC=nop             
  nop                                #  36    0xe4cb8  1      OPC=nop             
  nop                                #  37    0xe4cb9  1      OPC=nop             
  nop                                #  38    0xe4cba  1      OPC=nop             
  nop                                #  39    0xe4cbb  1      OPC=nop             
  nop                                #  40    0xe4cbc  1      OPC=nop             
  nop                                #  41    0xe4cbd  1      OPC=nop             
  nop                                #  42    0xe4cbe  1      OPC=nop             
  nop                                #  43    0xe4cbf  1      OPC=nop             
  nop                                #  44    0xe4cc0  1      OPC=nop             
  nop                                #  45    0xe4cc1  1      OPC=nop             
  nop                                #  46    0xe4cc2  1      OPC=nop             
  nop                                #  47    0xe4cc3  1      OPC=nop             
  nop                                #  48    0xe4cc4  1      OPC=nop             
  nop                                #  49    0xe4cc5  1      OPC=nop             
  nop                                #  50    0xe4cc6  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc, .-_ZNKSt5ctypeIcE8do_widenEPKcS2_Pc

