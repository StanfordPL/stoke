  .text
  .globl Finish
  .type Finish, @function

#! file-offset 0x66b40
#! rip-offset  0x26b40
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Finish:                       #        0x26b40  0      OPC=<label>         
  pushq %rbx                   #  1     0x26b40  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x26b41  2      OPC=movl_r32_r32    
  xorl %eax, %eax              #  3     0x26b43  2      OPC=xorl_r32_r32    
  nop                          #  4     0x26b45  1      OPC=nop             
  nop                          #  5     0x26b46  1      OPC=nop             
  nop                          #  6     0x26b47  1      OPC=nop             
  nop                          #  7     0x26b48  1      OPC=nop             
  nop                          #  8     0x26b49  1      OPC=nop             
  nop                          #  9     0x26b4a  1      OPC=nop             
  nop                          #  10    0x26b4b  1      OPC=nop             
  nop                          #  11    0x26b4c  1      OPC=nop             
  nop                          #  12    0x26b4d  1      OPC=nop             
  nop                          #  13    0x26b4e  1      OPC=nop             
  nop                          #  14    0x26b4f  1      OPC=nop             
  nop                          #  15    0x26b50  1      OPC=nop             
  nop                          #  16    0x26b51  1      OPC=nop             
  nop                          #  17    0x26b52  1      OPC=nop             
  nop                          #  18    0x26b53  1      OPC=nop             
  nop                          #  19    0x26b54  1      OPC=nop             
  nop                          #  20    0x26b55  1      OPC=nop             
  nop                          #  21    0x26b56  1      OPC=nop             
  nop                          #  22    0x26b57  1      OPC=nop             
  nop                          #  23    0x26b58  1      OPC=nop             
  nop                          #  24    0x26b59  1      OPC=nop             
  nop                          #  25    0x26b5a  1      OPC=nop             
  callq .Milliseconds          #  26    0x26b5b  5      OPC=callq_label     
  subl 0x10052656(%rip), %eax  #  27    0x26b60  6      OPC=subl_r32_m32    
  movl %ebx, %ebx              #  28    0x26b66  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)     #  29    0x26b68  4      OPC=movl_m32_r32    
  popq %rbx                    #  30    0x26b6c  1      OPC=popq_r64_1      
  popq %r11                    #  31    0x26b6d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  32    0x26b6f  7      OPC=andl_r32_imm32  
  nop                          #  33    0x26b76  1      OPC=nop             
  nop                          #  34    0x26b77  1      OPC=nop             
  nop                          #  35    0x26b78  1      OPC=nop             
  nop                          #  36    0x26b79  1      OPC=nop             
  addq %r15, %r11              #  37    0x26b7a  3      OPC=addq_r64_r64    
  jmpq %r11                    #  38    0x26b7d  3      OPC=jmpq_r64        
  nop                          #  39    0x26b80  1      OPC=nop             
  nop                          #  40    0x26b81  1      OPC=nop             
  nop                          #  41    0x26b82  1      OPC=nop             
  nop                          #  42    0x26b83  1      OPC=nop             
  nop                          #  43    0x26b84  1      OPC=nop             
  nop                          #  44    0x26b85  1      OPC=nop             
  nop                          #  45    0x26b86  1      OPC=nop             
                                                                            
.size Finish, .-Finish

