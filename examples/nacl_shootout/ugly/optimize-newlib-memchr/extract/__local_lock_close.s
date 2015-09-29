  .text
  .globl __local_lock_close
  .type __local_lock_close, @function

#! file-offset 0x6ebe0
#! rip-offset  0x2ebe0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_close:           #        0x2ebe0  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2ebe0  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  2     0x2ebe2  3      OPC=testq_r64_r64   
  je .L_2ec00                  #  3     0x2ebe5  2      OPC=je_label        
  jmpq .pthread_mutex_destroy  #  4     0x2ebe7  5      OPC=jmpq_label_1    
  nop                          #  5     0x2ebec  1      OPC=nop             
  nop                          #  6     0x2ebed  1      OPC=nop             
  nop                          #  7     0x2ebee  1      OPC=nop             
  nop                          #  8     0x2ebef  1      OPC=nop             
  nop                          #  9     0x2ebf0  1      OPC=nop             
  nop                          #  10    0x2ebf1  1      OPC=nop             
  nop                          #  11    0x2ebf2  1      OPC=nop             
  nop                          #  12    0x2ebf3  1      OPC=nop             
  nop                          #  13    0x2ebf4  1      OPC=nop             
  nop                          #  14    0x2ebf5  1      OPC=nop             
  nop                          #  15    0x2ebf6  1      OPC=nop             
  nop                          #  16    0x2ebf7  1      OPC=nop             
  nop                          #  17    0x2ebf8  1      OPC=nop             
  nop                          #  18    0x2ebf9  1      OPC=nop             
  nop                          #  19    0x2ebfa  1      OPC=nop             
  nop                          #  20    0x2ebfb  1      OPC=nop             
  nop                          #  21    0x2ebfc  1      OPC=nop             
  nop                          #  22    0x2ebfd  1      OPC=nop             
  nop                          #  23    0x2ebfe  1      OPC=nop             
  nop                          #  24    0x2ebff  1      OPC=nop             
.L_2ec00:                      #        0x2ec00  0      OPC=<label>         
  popq %r11                    #  25    0x2ec00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  26    0x2ec02  7      OPC=andl_r32_imm32  
  nop                          #  27    0x2ec09  1      OPC=nop             
  nop                          #  28    0x2ec0a  1      OPC=nop             
  nop                          #  29    0x2ec0b  1      OPC=nop             
  nop                          #  30    0x2ec0c  1      OPC=nop             
  addq %r15, %r11              #  31    0x2ec0d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  32    0x2ec10  3      OPC=jmpq_r64        
  nop                          #  33    0x2ec13  1      OPC=nop             
  nop                          #  34    0x2ec14  1      OPC=nop             
  nop                          #  35    0x2ec15  1      OPC=nop             
  nop                          #  36    0x2ec16  1      OPC=nop             
  nop                          #  37    0x2ec17  1      OPC=nop             
  nop                          #  38    0x2ec18  1      OPC=nop             
  nop                          #  39    0x2ec19  1      OPC=nop             
  nop                          #  40    0x2ec1a  1      OPC=nop             
  nop                          #  41    0x2ec1b  1      OPC=nop             
  nop                          #  42    0x2ec1c  1      OPC=nop             
  nop                          #  43    0x2ec1d  1      OPC=nop             
  nop                          #  44    0x2ec1e  1      OPC=nop             
  nop                          #  45    0x2ec1f  1      OPC=nop             
  nop                          #  46    0x2ec20  1      OPC=nop             
  nop                          #  47    0x2ec21  1      OPC=nop             
  nop                          #  48    0x2ec22  1      OPC=nop             
  nop                          #  49    0x2ec23  1      OPC=nop             
  nop                          #  50    0x2ec24  1      OPC=nop             
  nop                          #  51    0x2ec25  1      OPC=nop             
  nop                          #  52    0x2ec26  1      OPC=nop             
                                                                            
.size __local_lock_close, .-__local_lock_close

