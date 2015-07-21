  .text
  .globl __register_frame_table
  .type __register_frame_table, @function

#! file-offset 0x14f760
#! rip-offset  0x10f760
#! capacity    64 bytes

# Text                               #  Line  RIP       Bytes  Opcode    
.__register_frame_table:             #        0x10f760  0      OPC=0     
  pushq %rbx                         #  1     0x10f760  1      OPC=1861  
  movl %edi, %ebx                    #  2     0x10f761  2      OPC=1157  
  movl $0x18, %edi                   #  3     0x10f763  5      OPC=1154  
  nop                                #  4     0x10f768  1      OPC=1343  
  nop                                #  5     0x10f769  1      OPC=1343  
  nop                                #  6     0x10f76a  1      OPC=1343  
  nop                                #  7     0x10f76b  1      OPC=1343  
  nop                                #  8     0x10f76c  1      OPC=1343  
  nop                                #  9     0x10f76d  1      OPC=1343  
  nop                                #  10    0x10f76e  1      OPC=1343  
  nop                                #  11    0x10f76f  1      OPC=1343  
  nop                                #  12    0x10f770  1      OPC=1343  
  nop                                #  13    0x10f771  1      OPC=1343  
  nop                                #  14    0x10f772  1      OPC=1343  
  nop                                #  15    0x10f773  1      OPC=1343  
  nop                                #  16    0x10f774  1      OPC=1343  
  nop                                #  17    0x10f775  1      OPC=1343  
  nop                                #  18    0x10f776  1      OPC=1343  
  nop                                #  19    0x10f777  1      OPC=1343  
  nop                                #  20    0x10f778  1      OPC=1343  
  nop                                #  21    0x10f779  1      OPC=1343  
  nop                                #  22    0x10f77a  1      OPC=1343  
  callq .malloc                      #  23    0x10f77b  5      OPC=260   
  movl %ebx, %edi                    #  24    0x10f780  2      OPC=1157  
  movl %eax, %esi                    #  25    0x10f782  2      OPC=1157  
  popq %rbx                          #  26    0x10f784  1      OPC=1694  
  jmpq .__register_frame_info_table  #  27    0x10f785  5      OPC=930   
  nop                                #  28    0x10f78a  1      OPC=1343  
  nop                                #  29    0x10f78b  1      OPC=1343  
  nop                                #  30    0x10f78c  1      OPC=1343  
  nop                                #  31    0x10f78d  1      OPC=1343  
  nop                                #  32    0x10f78e  1      OPC=1343  
  nop                                #  33    0x10f78f  1      OPC=1343  
  nop                                #  34    0x10f790  1      OPC=1343  
  nop                                #  35    0x10f791  1      OPC=1343  
  nop                                #  36    0x10f792  1      OPC=1343  
  nop                                #  37    0x10f793  1      OPC=1343  
  nop                                #  38    0x10f794  1      OPC=1343  
  nop                                #  39    0x10f795  1      OPC=1343  
  nop                                #  40    0x10f796  1      OPC=1343  
  nop                                #  41    0x10f797  1      OPC=1343  
  nop                                #  42    0x10f798  1      OPC=1343  
  nop                                #  43    0x10f799  1      OPC=1343  
  nop                                #  44    0x10f79a  1      OPC=1343  
  nop                                #  45    0x10f79b  1      OPC=1343  
  nop                                #  46    0x10f79c  1      OPC=1343  
  nop                                #  47    0x10f79d  1      OPC=1343  
  nop                                #  48    0x10f79e  1      OPC=1343  
  nop                                #  49    0x10f79f  1      OPC=1343  
                                                                         
.size __register_frame_table, .-__register_frame_table

