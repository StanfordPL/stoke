  .text
  .globl get_cpu_count
  .type get_cpu_count, @function

#! file-offset 0x63ba0
#! rip-offset  0x23ba0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.get_cpu_count:            #        0x23ba0  0      OPC=<label>         
  movl $0x1, %eax          #  1     0x23ba0  5      OPC=movl_r32_imm32  
  popq %r11                #  2     0x23ba5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  3     0x23ba7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x23bae  1      OPC=nop             
  nop                      #  5     0x23baf  1      OPC=nop             
  nop                      #  6     0x23bb0  1      OPC=nop             
  nop                      #  7     0x23bb1  1      OPC=nop             
  addq %r15, %r11          #  8     0x23bb2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x23bb5  3      OPC=jmpq_r64        
  nop                      #  10    0x23bb8  1      OPC=nop             
  nop                      #  11    0x23bb9  1      OPC=nop             
  nop                      #  12    0x23bba  1      OPC=nop             
  nop                      #  13    0x23bbb  1      OPC=nop             
  nop                      #  14    0x23bbc  1      OPC=nop             
  nop                      #  15    0x23bbd  1      OPC=nop             
  nop                      #  16    0x23bbe  1      OPC=nop             
  nop                      #  17    0x23bbf  1      OPC=nop             
  nop                      #  18    0x23bc0  1      OPC=nop             
  nop                      #  19    0x23bc1  1      OPC=nop             
  nop                      #  20    0x23bc2  1      OPC=nop             
  nop                      #  21    0x23bc3  1      OPC=nop             
  nop                      #  22    0x23bc4  1      OPC=nop             
  nop                      #  23    0x23bc5  1      OPC=nop             
  nop                      #  24    0x23bc6  1      OPC=nop             
                                                                        
.size get_cpu_count, .-get_cpu_count

