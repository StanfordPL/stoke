  .text
  .globl _ZNKSs6substrEjj
  .type _ZNKSs6substrEjj, @function

#! file-offset 0x47aa0
#! rip-offset  0x47aa0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs6substrEjj:                      #        0x47aa0  0      
  movl %esi, %esi                       #  1     0x47aa0  2      
  pushq %rbx                            #  2     0x47aa2  2      
  movl %edi, %ebx                       #  3     0x47aa4  2      
  movl %esi, %esi                       #  4     0x47aa6  2      
  movl (%r15,%rsi,1), %eax              #  5     0x47aa8  4      
  subl $0xc, %eax                       #  6     0x47aac  3      
  movl %eax, %eax                       #  7     0x47aaf  2      
  cmpl (%r15,%rax,1), %edx              #  8     0x47ab1  4      
  ja .L_47ae0                           #  9     0x47ab5  6      
  movl %ebx, %edi                       #  10    0x47abb  2      
  nop                                   #  11    0x47abd  1      
  callq ._ZNSsC1ERKSsjj                 #  12    0x47abe  5      
  movl %ebx, %eax                       #  13    0x47ac3  2      
  popq %rbx                             #  14    0x47ac5  2      
  popq %r11                             #  15    0x47ac7  3      
  andl $0xffffffe0, %r11d               #  16    0x47aca  7      
  addq %r15, %r11                       #  17    0x47ad1  3      
  jmpq %r11                             #  18    0x47ad4  3      
  xchgw %ax, %ax                        #  19    0x47ad7  3      
  nop                                   #  20    0x47ada  1      
.L_47ae0:                               #        0x47adb  0      
  movl $0x10020a0d, %edi                #  21    0x47adb  5      
  nop                                   #  22    0x47ae0  1      
  nop                                   #  23    0x47ae1  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  24    0x47ae2  5      
                                                                 
.size _ZNKSs6substrEjj, .-_ZNKSs6substrEjj

