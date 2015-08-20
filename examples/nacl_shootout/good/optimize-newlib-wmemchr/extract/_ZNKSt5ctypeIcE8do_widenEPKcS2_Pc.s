  .text
  .globl _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc
  .type _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc, @function

#! file-offset 0x124f80
#! rip-offset  0xe4f80
#! capacity    64 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE8do_widenEPKcS2_Pc:  #        0xe4f80  0      OPC=<label>         
  pushq %rbx                         #  1     0xe4f80  1      OPC=pushq_r64_1     
  movl %edx, %ebx                    #  2     0xe4f81  2      OPC=movl_r32_r32    
  movl %esi, %esi                    #  3     0xe4f83  2      OPC=movl_r32_r32    
  movl %ebx, %edx                    #  4     0xe4f85  2      OPC=movl_r32_r32    
  movl %ecx, %edi                    #  5     0xe4f87  2      OPC=movl_r32_r32    
  subl %esi, %edx                    #  6     0xe4f89  2      OPC=subl_r32_r32    
  nop                                #  7     0xe4f8b  1      OPC=nop             
  nop                                #  8     0xe4f8c  1      OPC=nop             
  nop                                #  9     0xe4f8d  1      OPC=nop             
  nop                                #  10    0xe4f8e  1      OPC=nop             
  nop                                #  11    0xe4f8f  1      OPC=nop             
  nop                                #  12    0xe4f90  1      OPC=nop             
  nop                                #  13    0xe4f91  1      OPC=nop             
  nop                                #  14    0xe4f92  1      OPC=nop             
  nop                                #  15    0xe4f93  1      OPC=nop             
  nop                                #  16    0xe4f94  1      OPC=nop             
  nop                                #  17    0xe4f95  1      OPC=nop             
  nop                                #  18    0xe4f96  1      OPC=nop             
  nop                                #  19    0xe4f97  1      OPC=nop             
  nop                                #  20    0xe4f98  1      OPC=nop             
  nop                                #  21    0xe4f99  1      OPC=nop             
  nop                                #  22    0xe4f9a  1      OPC=nop             
  callq .memcpy                      #  23    0xe4f9b  5      OPC=callq_label     
  movl %ebx, %eax                    #  24    0xe4fa0  2      OPC=movl_r32_r32    
  popq %rbx                          #  25    0xe4fa2  1      OPC=popq_r64_1      
  popq %r11                          #  26    0xe4fa3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  27    0xe4fa5  7      OPC=andl_r32_imm32  
  nop                                #  28    0xe4fac  1      OPC=nop             
  nop                                #  29    0xe4fad  1      OPC=nop             
  nop                                #  30    0xe4fae  1      OPC=nop             
  nop                                #  31    0xe4faf  1      OPC=nop             
  addq %r15, %r11                    #  32    0xe4fb0  3      OPC=addq_r64_r64    
  jmpq %r11                          #  33    0xe4fb3  3      OPC=jmpq_r64        
  nop                                #  34    0xe4fb6  1      OPC=nop             
  nop                                #  35    0xe4fb7  1      OPC=nop             
  nop                                #  36    0xe4fb8  1      OPC=nop             
  nop                                #  37    0xe4fb9  1      OPC=nop             
  nop                                #  38    0xe4fba  1      OPC=nop             
  nop                                #  39    0xe4fbb  1      OPC=nop             
  nop                                #  40    0xe4fbc  1      OPC=nop             
  nop                                #  41    0xe4fbd  1      OPC=nop             
  nop                                #  42    0xe4fbe  1      OPC=nop             
  nop                                #  43    0xe4fbf  1      OPC=nop             
  nop                                #  44    0xe4fc0  1      OPC=nop             
  nop                                #  45    0xe4fc1  1      OPC=nop             
  nop                                #  46    0xe4fc2  1      OPC=nop             
  nop                                #  47    0xe4fc3  1      OPC=nop             
  nop                                #  48    0xe4fc4  1      OPC=nop             
  nop                                #  49    0xe4fc5  1      OPC=nop             
  nop                                #  50    0xe4fc6  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc, .-_ZNKSt5ctypeIcE8do_widenEPKcS2_Pc

