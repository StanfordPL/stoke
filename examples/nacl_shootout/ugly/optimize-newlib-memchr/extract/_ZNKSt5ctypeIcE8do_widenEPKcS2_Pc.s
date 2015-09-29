  .text
  .globl _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc
  .type _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc, @function

#! file-offset 0x1256a0
#! rip-offset  0xe56a0
#! capacity    64 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE8do_widenEPKcS2_Pc:  #        0xe56a0  0      OPC=<label>         
  pushq %rbx                         #  1     0xe56a0  1      OPC=pushq_r64_1     
  movl %edx, %ebx                    #  2     0xe56a1  2      OPC=movl_r32_r32    
  movl %esi, %esi                    #  3     0xe56a3  2      OPC=movl_r32_r32    
  movl %ebx, %edx                    #  4     0xe56a5  2      OPC=movl_r32_r32    
  movl %ecx, %edi                    #  5     0xe56a7  2      OPC=movl_r32_r32    
  subl %esi, %edx                    #  6     0xe56a9  2      OPC=subl_r32_r32    
  nop                                #  7     0xe56ab  1      OPC=nop             
  nop                                #  8     0xe56ac  1      OPC=nop             
  nop                                #  9     0xe56ad  1      OPC=nop             
  nop                                #  10    0xe56ae  1      OPC=nop             
  nop                                #  11    0xe56af  1      OPC=nop             
  nop                                #  12    0xe56b0  1      OPC=nop             
  nop                                #  13    0xe56b1  1      OPC=nop             
  nop                                #  14    0xe56b2  1      OPC=nop             
  nop                                #  15    0xe56b3  1      OPC=nop             
  nop                                #  16    0xe56b4  1      OPC=nop             
  nop                                #  17    0xe56b5  1      OPC=nop             
  nop                                #  18    0xe56b6  1      OPC=nop             
  nop                                #  19    0xe56b7  1      OPC=nop             
  nop                                #  20    0xe56b8  1      OPC=nop             
  nop                                #  21    0xe56b9  1      OPC=nop             
  nop                                #  22    0xe56ba  1      OPC=nop             
  callq .memcpy                      #  23    0xe56bb  5      OPC=callq_label     
  movl %ebx, %eax                    #  24    0xe56c0  2      OPC=movl_r32_r32    
  popq %rbx                          #  25    0xe56c2  1      OPC=popq_r64_1      
  popq %r11                          #  26    0xe56c3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  27    0xe56c5  7      OPC=andl_r32_imm32  
  nop                                #  28    0xe56cc  1      OPC=nop             
  nop                                #  29    0xe56cd  1      OPC=nop             
  nop                                #  30    0xe56ce  1      OPC=nop             
  nop                                #  31    0xe56cf  1      OPC=nop             
  addq %r15, %r11                    #  32    0xe56d0  3      OPC=addq_r64_r64    
  jmpq %r11                          #  33    0xe56d3  3      OPC=jmpq_r64        
  nop                                #  34    0xe56d6  1      OPC=nop             
  nop                                #  35    0xe56d7  1      OPC=nop             
  nop                                #  36    0xe56d8  1      OPC=nop             
  nop                                #  37    0xe56d9  1      OPC=nop             
  nop                                #  38    0xe56da  1      OPC=nop             
  nop                                #  39    0xe56db  1      OPC=nop             
  nop                                #  40    0xe56dc  1      OPC=nop             
  nop                                #  41    0xe56dd  1      OPC=nop             
  nop                                #  42    0xe56de  1      OPC=nop             
  nop                                #  43    0xe56df  1      OPC=nop             
  nop                                #  44    0xe56e0  1      OPC=nop             
  nop                                #  45    0xe56e1  1      OPC=nop             
  nop                                #  46    0xe56e2  1      OPC=nop             
  nop                                #  47    0xe56e3  1      OPC=nop             
  nop                                #  48    0xe56e4  1      OPC=nop             
  nop                                #  49    0xe56e5  1      OPC=nop             
  nop                                #  50    0xe56e6  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc, .-_ZNKSt5ctypeIcE8do_widenEPKcS2_Pc

