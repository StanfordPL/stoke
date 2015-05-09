  .text
  .globl _ZN2pp15WheelInputEventC2Ev
  .type _ZN2pp15WheelInputEventC2Ev, @function

#! file-offset 0x36320
#! rip-offset  0x36320
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2Ev:      #        0x36320  0      
  pushq %rbx                       #  1     0x36320  2      
  movl %edi, %ebx                  #  2     0x36322  2      
  movl %ebx, %edi                  #  3     0x36324  2      
  nop                              #  4     0x36326  1      
  nop                              #  5     0x36327  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36328  5      
  movl %ebx, %ebx                  #  7     0x3632d  2      
  movl $0x10020808, (%r15,%rbx,1)  #  8     0x3632f  8      
  popq %rbx                        #  9     0x36337  2      
  popq %r11                        #  10    0x36339  3      
  andl $0xffffffe0, %r11d          #  11    0x3633c  7      
  addq %r15, %r11                  #  12    0x36343  3      
  jmpq %r11                        #  13    0x36346  3      
  nop                              #  14    0x36349  1      
  nop                              #  15    0x3634a  1      
                                                            
.size _ZN2pp15WheelInputEventC2Ev, .-_ZN2pp15WheelInputEventC2Ev

