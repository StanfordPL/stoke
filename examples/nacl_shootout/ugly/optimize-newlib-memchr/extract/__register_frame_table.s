  .text
  .globl __register_frame_table
  .type __register_frame_table, @function

#! file-offset 0x1506c0
#! rip-offset  0x1106c0
#! capacity    64 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__register_frame_table:             #        0x1106c0  0      OPC=<label>         
  pushq %rbx                         #  1     0x1106c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0x1106c1  2      OPC=movl_r32_r32    
  movl $0x18, %edi                   #  3     0x1106c3  5      OPC=movl_r32_imm32  
  nop                                #  4     0x1106c8  1      OPC=nop             
  nop                                #  5     0x1106c9  1      OPC=nop             
  nop                                #  6     0x1106ca  1      OPC=nop             
  nop                                #  7     0x1106cb  1      OPC=nop             
  nop                                #  8     0x1106cc  1      OPC=nop             
  nop                                #  9     0x1106cd  1      OPC=nop             
  nop                                #  10    0x1106ce  1      OPC=nop             
  nop                                #  11    0x1106cf  1      OPC=nop             
  nop                                #  12    0x1106d0  1      OPC=nop             
  nop                                #  13    0x1106d1  1      OPC=nop             
  nop                                #  14    0x1106d2  1      OPC=nop             
  nop                                #  15    0x1106d3  1      OPC=nop             
  nop                                #  16    0x1106d4  1      OPC=nop             
  nop                                #  17    0x1106d5  1      OPC=nop             
  nop                                #  18    0x1106d6  1      OPC=nop             
  nop                                #  19    0x1106d7  1      OPC=nop             
  nop                                #  20    0x1106d8  1      OPC=nop             
  nop                                #  21    0x1106d9  1      OPC=nop             
  nop                                #  22    0x1106da  1      OPC=nop             
  callq .malloc                      #  23    0x1106db  5      OPC=callq_label     
  movl %ebx, %edi                    #  24    0x1106e0  2      OPC=movl_r32_r32    
  movl %eax, %esi                    #  25    0x1106e2  2      OPC=movl_r32_r32    
  popq %rbx                          #  26    0x1106e4  1      OPC=popq_r64_1      
  jmpq .__register_frame_info_table  #  27    0x1106e5  5      OPC=jmpq_label_1    
  nop                                #  28    0x1106ea  1      OPC=nop             
  nop                                #  29    0x1106eb  1      OPC=nop             
  nop                                #  30    0x1106ec  1      OPC=nop             
  nop                                #  31    0x1106ed  1      OPC=nop             
  nop                                #  32    0x1106ee  1      OPC=nop             
  nop                                #  33    0x1106ef  1      OPC=nop             
  nop                                #  34    0x1106f0  1      OPC=nop             
  nop                                #  35    0x1106f1  1      OPC=nop             
  nop                                #  36    0x1106f2  1      OPC=nop             
  nop                                #  37    0x1106f3  1      OPC=nop             
  nop                                #  38    0x1106f4  1      OPC=nop             
  nop                                #  39    0x1106f5  1      OPC=nop             
  nop                                #  40    0x1106f6  1      OPC=nop             
  nop                                #  41    0x1106f7  1      OPC=nop             
  nop                                #  42    0x1106f8  1      OPC=nop             
  nop                                #  43    0x1106f9  1      OPC=nop             
  nop                                #  44    0x1106fa  1      OPC=nop             
  nop                                #  45    0x1106fb  1      OPC=nop             
  nop                                #  46    0x1106fc  1      OPC=nop             
  nop                                #  47    0x1106fd  1      OPC=nop             
  nop                                #  48    0x1106fe  1      OPC=nop             
  nop                                #  49    0x1106ff  1      OPC=nop             
                                                                                   
.size __register_frame_table, .-__register_frame_table

