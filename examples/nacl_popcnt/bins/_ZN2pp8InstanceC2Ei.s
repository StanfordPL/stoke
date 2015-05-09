  .text
  .globl _ZN2pp8InstanceC2Ei
  .type _ZN2pp8InstanceC2Ei, @function

#! file-offset 0x20600
#! rip-offset  0x20600
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8InstanceC2Ei:              #        0x20600  0      
  popq %r11                        #  1     0x20600  3      
  movl %edi, %edi                  #  2     0x20603  2      
  leal 0xc(%rdi), %eax             #  3     0x20605  3      
  movl %edi, %edi                  #  4     0x20608  2      
  movl $0x10020328, (%r15,%rdi,1)  #  5     0x2060a  8      
  movl %edi, %edi                  #  6     0x20612  2      
  movl %esi, 0x4(%r15,%rdi,1)      #  7     0x20614  5      
  nop                              #  8     0x20619  1      
  movl %edi, %edi                  #  9     0x2061a  2      
  movl $0x0, 0x1c(%r15,%rdi,1)     #  10    0x2061c  9      
  movl %edi, %edi                  #  11    0x20625  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  12    0x20627  9      
  nop                              #  13    0x20630  1      
  movl %edi, %edi                  #  14    0x20631  2      
  movl $0x0, 0x10(%r15,%rdi,1)     #  15    0x20633  9      
  movl %edi, %edi                  #  16    0x2063c  2      
  movl %eax, 0x14(%r15,%rdi,1)     #  17    0x2063e  5      
  movl %edi, %edi                  #  18    0x20643  2      
  movl %eax, 0x18(%r15,%rdi,1)     #  19    0x20645  5      
  nop                              #  20    0x2064a  1      
  andl $0xffffffe0, %r11d          #  21    0x2064b  7      
  addq %r15, %r11                  #  22    0x20652  3      
  jmpq %r11                        #  23    0x20655  3      
  nop                              #  24    0x20658  1      
  nop                              #  25    0x20659  1      
                                                            
.size _ZN2pp8InstanceC2Ei, .-_ZN2pp8InstanceC2Ei

