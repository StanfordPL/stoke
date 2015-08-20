  .text
  .globl __register_frame_table
  .type __register_frame_table, @function

#! file-offset 0x14ffa0
#! rip-offset  0x10ffa0
#! capacity    64 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__register_frame_table:             #        0x10ffa0  0      OPC=<label>         
  pushq %rbx                         #  1     0x10ffa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0x10ffa1  2      OPC=movl_r32_r32    
  movl $0x18, %edi                   #  3     0x10ffa3  5      OPC=movl_r32_imm32  
  nop                                #  4     0x10ffa8  1      OPC=nop             
  nop                                #  5     0x10ffa9  1      OPC=nop             
  nop                                #  6     0x10ffaa  1      OPC=nop             
  nop                                #  7     0x10ffab  1      OPC=nop             
  nop                                #  8     0x10ffac  1      OPC=nop             
  nop                                #  9     0x10ffad  1      OPC=nop             
  nop                                #  10    0x10ffae  1      OPC=nop             
  nop                                #  11    0x10ffaf  1      OPC=nop             
  nop                                #  12    0x10ffb0  1      OPC=nop             
  nop                                #  13    0x10ffb1  1      OPC=nop             
  nop                                #  14    0x10ffb2  1      OPC=nop             
  nop                                #  15    0x10ffb3  1      OPC=nop             
  nop                                #  16    0x10ffb4  1      OPC=nop             
  nop                                #  17    0x10ffb5  1      OPC=nop             
  nop                                #  18    0x10ffb6  1      OPC=nop             
  nop                                #  19    0x10ffb7  1      OPC=nop             
  nop                                #  20    0x10ffb8  1      OPC=nop             
  nop                                #  21    0x10ffb9  1      OPC=nop             
  nop                                #  22    0x10ffba  1      OPC=nop             
  callq .malloc                      #  23    0x10ffbb  5      OPC=callq_label     
  movl %ebx, %edi                    #  24    0x10ffc0  2      OPC=movl_r32_r32    
  movl %eax, %esi                    #  25    0x10ffc2  2      OPC=movl_r32_r32    
  popq %rbx                          #  26    0x10ffc4  1      OPC=popq_r64_1      
  jmpq .__register_frame_info_table  #  27    0x10ffc5  5      OPC=jmpq_label_1    
  nop                                #  28    0x10ffca  1      OPC=nop             
  nop                                #  29    0x10ffcb  1      OPC=nop             
  nop                                #  30    0x10ffcc  1      OPC=nop             
  nop                                #  31    0x10ffcd  1      OPC=nop             
  nop                                #  32    0x10ffce  1      OPC=nop             
  nop                                #  33    0x10ffcf  1      OPC=nop             
  nop                                #  34    0x10ffd0  1      OPC=nop             
  nop                                #  35    0x10ffd1  1      OPC=nop             
  nop                                #  36    0x10ffd2  1      OPC=nop             
  nop                                #  37    0x10ffd3  1      OPC=nop             
  nop                                #  38    0x10ffd4  1      OPC=nop             
  nop                                #  39    0x10ffd5  1      OPC=nop             
  nop                                #  40    0x10ffd6  1      OPC=nop             
  nop                                #  41    0x10ffd7  1      OPC=nop             
  nop                                #  42    0x10ffd8  1      OPC=nop             
  nop                                #  43    0x10ffd9  1      OPC=nop             
  nop                                #  44    0x10ffda  1      OPC=nop             
  nop                                #  45    0x10ffdb  1      OPC=nop             
  nop                                #  46    0x10ffdc  1      OPC=nop             
  nop                                #  47    0x10ffdd  1      OPC=nop             
  nop                                #  48    0x10ffde  1      OPC=nop             
  nop                                #  49    0x10ffdf  1      OPC=nop             
                                                                                   
.size __register_frame_table, .-__register_frame_table

