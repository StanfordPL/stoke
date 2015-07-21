  .text
  .globl Finish
  .type Finish, @function

#! file-offset 0x66b40
#! rip-offset  0x26b40
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.Finish:                       #        0x26b40  0      OPC=0     
  pushq %rbx                   #  1     0x26b40  1      OPC=1861  
  movl %edi, %ebx              #  2     0x26b41  2      OPC=1157  
  xorl %eax, %eax              #  3     0x26b43  2      OPC=3758  
  nop                          #  4     0x26b45  1      OPC=1343  
  nop                          #  5     0x26b46  1      OPC=1343  
  nop                          #  6     0x26b47  1      OPC=1343  
  nop                          #  7     0x26b48  1      OPC=1343  
  nop                          #  8     0x26b49  1      OPC=1343  
  nop                          #  9     0x26b4a  1      OPC=1343  
  nop                          #  10    0x26b4b  1      OPC=1343  
  nop                          #  11    0x26b4c  1      OPC=1343  
  nop                          #  12    0x26b4d  1      OPC=1343  
  nop                          #  13    0x26b4e  1      OPC=1343  
  nop                          #  14    0x26b4f  1      OPC=1343  
  nop                          #  15    0x26b50  1      OPC=1343  
  nop                          #  16    0x26b51  1      OPC=1343  
  nop                          #  17    0x26b52  1      OPC=1343  
  nop                          #  18    0x26b53  1      OPC=1343  
  nop                          #  19    0x26b54  1      OPC=1343  
  nop                          #  20    0x26b55  1      OPC=1343  
  nop                          #  21    0x26b56  1      OPC=1343  
  nop                          #  22    0x26b57  1      OPC=1343  
  nop                          #  23    0x26b58  1      OPC=1343  
  nop                          #  24    0x26b59  1      OPC=1343  
  nop                          #  25    0x26b5a  1      OPC=1343  
  callq .Milliseconds          #  26    0x26b5b  5      OPC=260   
  subl 0x10052656(%rip), %eax  #  27    0x26b60  6      OPC=2385  
  movl %ebx, %ebx              #  28    0x26b66  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)     #  29    0x26b68  4      OPC=1136  
  popq %rbx                    #  30    0x26b6c  1      OPC=1694  
  popq %r11                    #  31    0x26b6d  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  32    0x26b6f  7      OPC=131   
  nop                          #  33    0x26b76  1      OPC=1343  
  nop                          #  34    0x26b77  1      OPC=1343  
  nop                          #  35    0x26b78  1      OPC=1343  
  nop                          #  36    0x26b79  1      OPC=1343  
  addq %r15, %r11              #  37    0x26b7a  3      OPC=72    
  jmpq %r11                    #  38    0x26b7d  3      OPC=928   
  nop                          #  39    0x26b80  1      OPC=1343  
  nop                          #  40    0x26b81  1      OPC=1343  
  nop                          #  41    0x26b82  1      OPC=1343  
  nop                          #  42    0x26b83  1      OPC=1343  
  nop                          #  43    0x26b84  1      OPC=1343  
  nop                          #  44    0x26b85  1      OPC=1343  
  nop                          #  45    0x26b86  1      OPC=1343  
                                                                  
.size Finish, .-Finish

