  .text
  .globl fflush
  .type fflush, @function

#! file-offset 0x7ad80
#! rip-offset  0x7ad80
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.fflush:                      #        0x7ad80  0      
  pushq %rbx                  #  1     0x7ad80  2      
  movl %edi, %ebx             #  2     0x7ad82  2      
  testq %rbx, %rbx            #  3     0x7ad84  3      
  je .L_7adc0                 #  4     0x7ad87  6      
  nop                         #  5     0x7ad8d  1      
  nop                         #  6     0x7ad8e  1      
  callq .__nacl_read_tp       #  7     0x7ad8f  5      
  leaq -0x480(%rax), %rax     #  8     0x7ad94  7      
  movl %ebx, %esi             #  9     0x7ad9b  2      
  popq %rbx                   #  10    0x7ad9d  2      
  movl %eax, %eax             #  11    0x7ad9f  2      
  movl (%r15,%rax,1), %edi    #  12    0x7ada1  4      
  jmpq ._fflush_r             #  13    0x7ada5  5      
  nop                         #  14    0x7adaa  1      
.L_7adc0:                     #        0x7adab  0      
  popq %rbx                   #  15    0x7adab  2      
  movl 0xffa86d9(%rip), %edi  #  16    0x7adad  6      
  movl $0x7ac00, %esi         #  17    0x7adb3  5      
  jmpq ._fwalk_reent          #  18    0x7adb8  5      
  nop                         #  19    0x7adbd  1      
  nop                         #  20    0x7adbe  1      
  nop                         #  21    0x7adbf  1      
  nop                         #  22    0x7adc0  1      
  nop                         #  23    0x7adc1  1      
  nop                         #  24    0x7adc2  1      
  nop                         #  25    0x7adc3  1      
  nop                         #  26    0x7adc4  1      
  nop                         #  27    0x7adc5  1      
  nop                         #  28    0x7adc6  1      
  nop                         #  29    0x7adc7  1      
  nop                         #  30    0x7adc8  1      
  nop                         #  31    0x7adc9  1      
  nop                         #  32    0x7adca  1      
  nop                         #  33    0x7adcb  1      
                                                       
.size fflush, .-fflush

