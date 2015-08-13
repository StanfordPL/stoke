  .text
  .globl __register_frame_table
  .type __register_frame_table, @function

#! file-offset 0x14fca0
#! rip-offset  0x10fca0
#! capacity    64 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__register_frame_table:             #        0x10fca0  0      OPC=<label>         
  pushq %rbx                         #  1     0x10fca0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0x10fca1  2      OPC=movl_r32_r32    
  movl $0x18, %edi                   #  3     0x10fca3  5      OPC=movl_r32_imm32  
  nop                                #  4     0x10fca8  1      OPC=nop             
  nop                                #  5     0x10fca9  1      OPC=nop             
  nop                                #  6     0x10fcaa  1      OPC=nop             
  nop                                #  7     0x10fcab  1      OPC=nop             
  nop                                #  8     0x10fcac  1      OPC=nop             
  nop                                #  9     0x10fcad  1      OPC=nop             
  nop                                #  10    0x10fcae  1      OPC=nop             
  nop                                #  11    0x10fcaf  1      OPC=nop             
  nop                                #  12    0x10fcb0  1      OPC=nop             
  nop                                #  13    0x10fcb1  1      OPC=nop             
  nop                                #  14    0x10fcb2  1      OPC=nop             
  nop                                #  15    0x10fcb3  1      OPC=nop             
  nop                                #  16    0x10fcb4  1      OPC=nop             
  nop                                #  17    0x10fcb5  1      OPC=nop             
  nop                                #  18    0x10fcb6  1      OPC=nop             
  nop                                #  19    0x10fcb7  1      OPC=nop             
  nop                                #  20    0x10fcb8  1      OPC=nop             
  nop                                #  21    0x10fcb9  1      OPC=nop             
  nop                                #  22    0x10fcba  1      OPC=nop             
  callq .malloc                      #  23    0x10fcbb  5      OPC=callq_label     
  movl %ebx, %edi                    #  24    0x10fcc0  2      OPC=movl_r32_r32    
  movl %eax, %esi                    #  25    0x10fcc2  2      OPC=movl_r32_r32    
  popq %rbx                          #  26    0x10fcc4  1      OPC=popq_r64_1      
  jmpq .__register_frame_info_table  #  27    0x10fcc5  5      OPC=jmpq_label_1    
  nop                                #  28    0x10fcca  1      OPC=nop             
  nop                                #  29    0x10fccb  1      OPC=nop             
  nop                                #  30    0x10fccc  1      OPC=nop             
  nop                                #  31    0x10fccd  1      OPC=nop             
  nop                                #  32    0x10fcce  1      OPC=nop             
  nop                                #  33    0x10fccf  1      OPC=nop             
  nop                                #  34    0x10fcd0  1      OPC=nop             
  nop                                #  35    0x10fcd1  1      OPC=nop             
  nop                                #  36    0x10fcd2  1      OPC=nop             
  nop                                #  37    0x10fcd3  1      OPC=nop             
  nop                                #  38    0x10fcd4  1      OPC=nop             
  nop                                #  39    0x10fcd5  1      OPC=nop             
  nop                                #  40    0x10fcd6  1      OPC=nop             
  nop                                #  41    0x10fcd7  1      OPC=nop             
  nop                                #  42    0x10fcd8  1      OPC=nop             
  nop                                #  43    0x10fcd9  1      OPC=nop             
  nop                                #  44    0x10fcda  1      OPC=nop             
  nop                                #  45    0x10fcdb  1      OPC=nop             
  nop                                #  46    0x10fcdc  1      OPC=nop             
  nop                                #  47    0x10fcdd  1      OPC=nop             
  nop                                #  48    0x10fcde  1      OPC=nop             
  nop                                #  49    0x10fcdf  1      OPC=nop             
                                                                                   
.size __register_frame_table, .-__register_frame_table

