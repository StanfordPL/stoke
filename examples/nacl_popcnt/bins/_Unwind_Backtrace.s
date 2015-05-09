  .text
  .globl _Unwind_Backtrace
  .type _Unwind_Backtrace, @function

#! file-offset 0x5cfe0
#! rip-offset  0x5cfe0
#! capacity    352 bytes

# Text                       #  Line  RIP      Bytes  
._Unwind_Backtrace:          #        0x5cfe0  0      
  pushq %rbp                 #  1     0x5cfe0  2      
  movq %rsp, %rbp            #  2     0x5cfe2  3      
  pushq %r14                 #  3     0x5cfe5  3      
  leal 0x10(%rbp), %eax      #  4     0x5cfe8  3      
  pushq %r13                 #  5     0x5cfeb  3      
  movl %edi, %r13d           #  6     0x5cfee  3      
  pushq %r12                 #  7     0x5cff1  3      
  movl %esi, %r12d           #  8     0x5cff4  3      
  movl %eax, %esi            #  9     0x5cff7  2      
  pushq %rbx                 #  10    0x5cff9  2      
  leal -0xb0(%rbp), %ebx     #  11    0x5cffb  6      
  nop                        #  12    0x5d001  1      
  subl $0x210, %esp          #  13    0x5d002  6      
  addq %r15, %rsp            #  14    0x5d008  3      
  movl 0x8(%rbp), %edx       #  15    0x5d00b  3      
  movl %ebx, %edi            #  16    0x5d00e  2      
  nop                        #  17    0x5d010  1      
  callq .uw_init_context_1   #  18    0x5d011  5      
  leal -0x220(%rbp), %eax    #  19    0x5d016  6      
  movq %rax, -0x228(%rbp)    #  20    0x5d01c  7      
  nop                        #  21    0x5d023  1      
  nop                        #  22    0x5d024  1      
.L_5d040:                    #        0x5d025  0      
  movl -0x228(%rbp), %esi    #  23    0x5d025  6      
  movl %ebx, %edi            #  24    0x5d02b  2      
  nop                        #  25    0x5d02d  1      
  nop                        #  26    0x5d02e  1      
  callq .uw_frame_state_for  #  27    0x5d02f  5      
  cmpl $0x5, %eax            #  28    0x5d034  3      
  movl %eax, %r14d           #  29    0x5d037  3      
  je .L_5d0e0                #  30    0x5d03a  6      
  testl %eax, %eax           #  31    0x5d040  2      
  je .L_5d0e0                #  32    0x5d042  6      
  nop                        #  33    0x5d048  1      
  nop                        #  34    0x5d049  1      
.L_5d080:                    #        0x5d04a  0      
  movl $0x3, %r14d           #  35    0x5d04a  6      
  nop                        #  36    0x5d050  1      
  nop                        #  37    0x5d051  1      
.L_5d0a0:                    #        0x5d052  0      
  addl $0x210, %esp          #  38    0x5d052  6      
  addq %r15, %rsp            #  39    0x5d058  3      
  movl %r14d, %eax           #  40    0x5d05b  3      
  popq %rbx                  #  41    0x5d05e  2      
  popq %r12                  #  42    0x5d060  3      
  popq %r13                  #  43    0x5d063  3      
  popq %r14                  #  44    0x5d066  3      
  popq %r11                  #  45    0x5d069  3      
  movl %r11d, %ebp           #  46    0x5d06c  3      
  addq %r15, %rbp            #  47    0x5d06f  3      
  popq %r11                  #  48    0x5d072  3      
  nop                        #  49    0x5d075  1      
  andl $0xffffffe0, %r11d    #  50    0x5d076  7      
  addq %r15, %r11            #  51    0x5d07d  3      
  jmpq %r11                  #  52    0x5d080  3      
  nop                        #  53    0x5d083  1      
  nop                        #  54    0x5d084  1      
.L_5d0e0:                    #        0x5d085  0      
  movl %r12d, %esi           #  55    0x5d085  3      
  movl %ebx, %edi            #  56    0x5d088  2      
  xchgw %ax, %ax             #  57    0x5d08a  3      
  nop                        #  58    0x5d08d  1      
  andl $0xffffffe0, %r13d    #  59    0x5d08e  7      
  addq %r15, %r13            #  60    0x5d095  3      
  callq %r13                 #  61    0x5d098  3      
  testl %eax, %eax           #  62    0x5d09b  2      
  jne .L_5d080               #  63    0x5d09d  6      
  cmpl $0x5, %r14d           #  64    0x5d0a3  4      
  je .L_5d0a0                #  65    0x5d0a7  6      
  movl -0x228(%rbp), %esi    #  66    0x5d0ad  6      
  movl %ebx, %edi            #  67    0x5d0b3  2      
  nop                        #  68    0x5d0b5  1      
  callq .uw_update_context   #  69    0x5d0b6  5      
  jmpq .L_5d040              #  70    0x5d0bb  5      
  nop                        #  71    0x5d0c0  1      
  nop                        #  72    0x5d0c1  1      
                                                      
.size _Unwind_Backtrace, .-_Unwind_Backtrace

