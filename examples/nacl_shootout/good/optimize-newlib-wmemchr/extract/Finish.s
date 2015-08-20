  .text
  .globl Finish
  .type Finish, @function

#! file-offset 0x66b60
#! rip-offset  0x26b60
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Finish:                       #        0x26b60  0      OPC=<label>         
  pushq %rbx                   #  1     0x26b60  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x26b61  2      OPC=movl_r32_r32    
  xorl %eax, %eax              #  3     0x26b63  2      OPC=xorl_r32_r32    
  nop                          #  4     0x26b65  1      OPC=nop             
  nop                          #  5     0x26b66  1      OPC=nop             
  nop                          #  6     0x26b67  1      OPC=nop             
  nop                          #  7     0x26b68  1      OPC=nop             
  nop                          #  8     0x26b69  1      OPC=nop             
  nop                          #  9     0x26b6a  1      OPC=nop             
  nop                          #  10    0x26b6b  1      OPC=nop             
  nop                          #  11    0x26b6c  1      OPC=nop             
  nop                          #  12    0x26b6d  1      OPC=nop             
  nop                          #  13    0x26b6e  1      OPC=nop             
  nop                          #  14    0x26b6f  1      OPC=nop             
  nop                          #  15    0x26b70  1      OPC=nop             
  nop                          #  16    0x26b71  1      OPC=nop             
  nop                          #  17    0x26b72  1      OPC=nop             
  nop                          #  18    0x26b73  1      OPC=nop             
  nop                          #  19    0x26b74  1      OPC=nop             
  nop                          #  20    0x26b75  1      OPC=nop             
  nop                          #  21    0x26b76  1      OPC=nop             
  nop                          #  22    0x26b77  1      OPC=nop             
  nop                          #  23    0x26b78  1      OPC=nop             
  nop                          #  24    0x26b79  1      OPC=nop             
  nop                          #  25    0x26b7a  1      OPC=nop             
  callq .Milliseconds          #  26    0x26b7b  5      OPC=callq_label     
  subl 0x10052636(%rip), %eax  #  27    0x26b80  6      OPC=subl_r32_m32    
  movl %ebx, %ebx              #  28    0x26b86  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)     #  29    0x26b88  4      OPC=movl_m32_r32    
  popq %rbx                    #  30    0x26b8c  1      OPC=popq_r64_1      
  popq %r11                    #  31    0x26b8d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  32    0x26b8f  7      OPC=andl_r32_imm32  
  nop                          #  33    0x26b96  1      OPC=nop             
  nop                          #  34    0x26b97  1      OPC=nop             
  nop                          #  35    0x26b98  1      OPC=nop             
  nop                          #  36    0x26b99  1      OPC=nop             
  addq %r15, %r11              #  37    0x26b9a  3      OPC=addq_r64_r64    
  jmpq %r11                    #  38    0x26b9d  3      OPC=jmpq_r64        
  nop                          #  39    0x26ba0  1      OPC=nop             
  nop                          #  40    0x26ba1  1      OPC=nop             
  nop                          #  41    0x26ba2  1      OPC=nop             
  nop                          #  42    0x26ba3  1      OPC=nop             
  nop                          #  43    0x26ba4  1      OPC=nop             
  nop                          #  44    0x26ba5  1      OPC=nop             
  nop                          #  45    0x26ba6  1      OPC=nop             
                                                                            
.size Finish, .-Finish

