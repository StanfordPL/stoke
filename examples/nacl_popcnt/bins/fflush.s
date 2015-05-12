  .text
  .globl fflush
  .type fflush, @function

#! file-offset 0x7ada0
#! rip-offset  0x7ada0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.fflush:                      #        0x7ada0  0      
  pushq %rbx                  #  1     0x7ada0  2      
  movl %edi, %ebx             #  2     0x7ada2  2      
  testq %rbx, %rbx            #  3     0x7ada4  3      
  je .L_7ade0                 #  4     0x7ada7  6      
  nop                         #  5     0x7adad  1      
  nop                         #  6     0x7adae  1      
  callq .__nacl_read_tp       #  7     0x7adaf  5      
  leaq -0x480(%rax), %rax     #  8     0x7adb4  7      
  movl %ebx, %esi             #  9     0x7adbb  2      
  popq %rbx                   #  10    0x7adbd  2      
  movl %eax, %eax             #  11    0x7adbf  2      
  movl (%r15,%rax,1), %edi    #  12    0x7adc1  4      
  jmpq ._fflush_r             #  13    0x7adc5  5      
  nop                         #  14    0x7adca  1      
.L_7ade0:                     #        0x7adcb  0      
  popq %rbx                   #  15    0x7adcb  2      
  movl 0xffa86b9(%rip), %edi  #  16    0x7adcd  6      
  movl $0x7ac20, %esi         #  17    0x7add3  5      
  jmpq ._fwalk_reent          #  18    0x7add8  5      
  nop                         #  19    0x7addd  1      
  nop                         #  20    0x7adde  1      
  nop                         #  21    0x7addf  1      
  nop                         #  22    0x7ade0  1      
  nop                         #  23    0x7ade1  1      
  nop                         #  24    0x7ade2  1      
  nop                         #  25    0x7ade3  1      
  nop                         #  26    0x7ade4  1      
  nop                         #  27    0x7ade5  1      
  nop                         #  28    0x7ade6  1      
  nop                         #  29    0x7ade7  1      
  nop                         #  30    0x7ade8  1      
  nop                         #  31    0x7ade9  1      
  nop                         #  32    0x7adea  1      
  nop                         #  33    0x7adeb  1      
                                                       
.size fflush, .-fflush

