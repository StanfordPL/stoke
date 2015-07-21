  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0xa6ac0
#! rip-offset  0x66ac0
#! capacity    64 bytes

# Text                                           #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev:  #        0x66ac0  0      OPC=0     
  movl %esi, %esi                                #  1     0x66ac0  2      OPC=1157  
  movl %edi, %edi                                #  2     0x66ac2  2      OPC=1157  
  movl %esi, %esi                                #  3     0x66ac4  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                       #  4     0x66ac6  4      OPC=1156  
  movl %esi, %esi                                #  5     0x66aca  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %edx                    #  6     0x66acc  5      OPC=1156  
  movl %edi, %edi                                #  7     0x66ad1  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                       #  8     0x66ad3  4      OPC=1136  
  subl $0xc, %eax                                #  9     0x66ad7  3      OPC=2384  
  movl %eax, %eax                                #  10    0x66ada  2      OPC=1157  
  movl (%r15,%rax,1), %eax                       #  11    0x66adc  4      OPC=1156  
  movl %edi, %edi                                #  12    0x66ae0  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rdi,1)                    #  13    0x66ae2  9      OPC=1135  
  addl %edi, %eax                                #  14    0x66aeb  2      OPC=67    
  movl %eax, %eax                                #  15    0x66aed  2      OPC=1157  
  movl %edx, (%r15,%rax,1)                       #  16    0x66aef  4      OPC=1136  
  popq %r11                                      #  17    0x66af3  2      OPC=1694  
  andl $0xffffffe0, %r11d                        #  18    0x66af5  7      OPC=131   
  nop                                            #  19    0x66afc  1      OPC=1343  
  nop                                            #  20    0x66afd  1      OPC=1343  
  nop                                            #  21    0x66afe  1      OPC=1343  
  nop                                            #  22    0x66aff  1      OPC=1343  
  addq %r15, %r11                                #  23    0x66b00  3      OPC=72    
  jmpq %r11                                      #  24    0x66b03  3      OPC=928   
  nop                                            #  25    0x66b06  1      OPC=1343  
                                                                                    
.size _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev

