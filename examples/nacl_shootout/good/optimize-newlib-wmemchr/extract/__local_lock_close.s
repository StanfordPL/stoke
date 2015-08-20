  .text
  .globl __local_lock_close
  .type __local_lock_close, @function

#! file-offset 0x6e4c0
#! rip-offset  0x2e4c0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_close:           #        0x2e4c0  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2e4c0  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  2     0x2e4c2  3      OPC=testq_r64_r64   
  je .L_2e4e0                  #  3     0x2e4c5  2      OPC=je_label        
  jmpq .pthread_mutex_destroy  #  4     0x2e4c7  5      OPC=jmpq_label_1    
  nop                          #  5     0x2e4cc  1      OPC=nop             
  nop                          #  6     0x2e4cd  1      OPC=nop             
  nop                          #  7     0x2e4ce  1      OPC=nop             
  nop                          #  8     0x2e4cf  1      OPC=nop             
  nop                          #  9     0x2e4d0  1      OPC=nop             
  nop                          #  10    0x2e4d1  1      OPC=nop             
  nop                          #  11    0x2e4d2  1      OPC=nop             
  nop                          #  12    0x2e4d3  1      OPC=nop             
  nop                          #  13    0x2e4d4  1      OPC=nop             
  nop                          #  14    0x2e4d5  1      OPC=nop             
  nop                          #  15    0x2e4d6  1      OPC=nop             
  nop                          #  16    0x2e4d7  1      OPC=nop             
  nop                          #  17    0x2e4d8  1      OPC=nop             
  nop                          #  18    0x2e4d9  1      OPC=nop             
  nop                          #  19    0x2e4da  1      OPC=nop             
  nop                          #  20    0x2e4db  1      OPC=nop             
  nop                          #  21    0x2e4dc  1      OPC=nop             
  nop                          #  22    0x2e4dd  1      OPC=nop             
  nop                          #  23    0x2e4de  1      OPC=nop             
  nop                          #  24    0x2e4df  1      OPC=nop             
.L_2e4e0:                      #        0x2e4e0  0      OPC=<label>         
  popq %r11                    #  25    0x2e4e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  26    0x2e4e2  7      OPC=andl_r32_imm32  
  nop                          #  27    0x2e4e9  1      OPC=nop             
  nop                          #  28    0x2e4ea  1      OPC=nop             
  nop                          #  29    0x2e4eb  1      OPC=nop             
  nop                          #  30    0x2e4ec  1      OPC=nop             
  addq %r15, %r11              #  31    0x2e4ed  3      OPC=addq_r64_r64    
  jmpq %r11                    #  32    0x2e4f0  3      OPC=jmpq_r64        
  nop                          #  33    0x2e4f3  1      OPC=nop             
  nop                          #  34    0x2e4f4  1      OPC=nop             
  nop                          #  35    0x2e4f5  1      OPC=nop             
  nop                          #  36    0x2e4f6  1      OPC=nop             
  nop                          #  37    0x2e4f7  1      OPC=nop             
  nop                          #  38    0x2e4f8  1      OPC=nop             
  nop                          #  39    0x2e4f9  1      OPC=nop             
  nop                          #  40    0x2e4fa  1      OPC=nop             
  nop                          #  41    0x2e4fb  1      OPC=nop             
  nop                          #  42    0x2e4fc  1      OPC=nop             
  nop                          #  43    0x2e4fd  1      OPC=nop             
  nop                          #  44    0x2e4fe  1      OPC=nop             
  nop                          #  45    0x2e4ff  1      OPC=nop             
  nop                          #  46    0x2e500  1      OPC=nop             
  nop                          #  47    0x2e501  1      OPC=nop             
  nop                          #  48    0x2e502  1      OPC=nop             
  nop                          #  49    0x2e503  1      OPC=nop             
  nop                          #  50    0x2e504  1      OPC=nop             
  nop                          #  51    0x2e505  1      OPC=nop             
  nop                          #  52    0x2e506  1      OPC=nop             
                                                                            
.size __local_lock_close, .-__local_lock_close

