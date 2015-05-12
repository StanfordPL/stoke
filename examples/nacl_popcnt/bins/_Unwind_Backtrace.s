  .text
  .globl _Unwind_Backtrace
  .type _Unwind_Backtrace, @function

#! file-offset 0x5d000
#! rip-offset  0x5d000
#! capacity    352 bytes

# Text                       #  Line  RIP      Bytes  
._Unwind_Backtrace:          #        0x5d000  0      
  pushq %rbp                 #  1     0x5d000  2      
  movq %rsp, %rbp            #  2     0x5d002  3      
  pushq %r14                 #  3     0x5d005  3      
  leal 0x10(%rbp), %eax      #  4     0x5d008  3      
  pushq %r13                 #  5     0x5d00b  3      
  movl %edi, %r13d           #  6     0x5d00e  3      
  pushq %r12                 #  7     0x5d011  3      
  movl %esi, %r12d           #  8     0x5d014  3      
  movl %eax, %esi            #  9     0x5d017  2      
  pushq %rbx                 #  10    0x5d019  2      
  leal -0xb0(%rbp), %ebx     #  11    0x5d01b  6      
  nop                        #  12    0x5d021  1      
  subl $0x210, %esp          #  13    0x5d022  6      
  addq %r15, %rsp            #  14    0x5d028  3      
  movl 0x8(%rbp), %edx       #  15    0x5d02b  3      
  movl %ebx, %edi            #  16    0x5d02e  2      
  nop                        #  17    0x5d030  1      
  callq .uw_init_context_1   #  18    0x5d031  5      
  leal -0x220(%rbp), %eax    #  19    0x5d036  6      
  movq %rax, -0x228(%rbp)    #  20    0x5d03c  7      
  nop                        #  21    0x5d043  1      
  nop                        #  22    0x5d044  1      
.L_5d060:                    #        0x5d045  0      
  movl -0x228(%rbp), %esi    #  23    0x5d045  6      
  movl %ebx, %edi            #  24    0x5d04b  2      
  nop                        #  25    0x5d04d  1      
  nop                        #  26    0x5d04e  1      
  callq .uw_frame_state_for  #  27    0x5d04f  5      
  cmpl $0x5, %eax            #  28    0x5d054  3      
  movl %eax, %r14d           #  29    0x5d057  3      
  je .L_5d100                #  30    0x5d05a  6      
  testl %eax, %eax           #  31    0x5d060  2      
  je .L_5d100                #  32    0x5d062  6      
  nop                        #  33    0x5d068  1      
  nop                        #  34    0x5d069  1      
.L_5d0a0:                    #        0x5d06a  0      
  movl $0x3, %r14d           #  35    0x5d06a  6      
  nop                        #  36    0x5d070  1      
  nop                        #  37    0x5d071  1      
.L_5d0c0:                    #        0x5d072  0      
  addl $0x210, %esp          #  38    0x5d072  6      
  addq %r15, %rsp            #  39    0x5d078  3      
  movl %r14d, %eax           #  40    0x5d07b  3      
  popq %rbx                  #  41    0x5d07e  2      
  popq %r12                  #  42    0x5d080  3      
  popq %r13                  #  43    0x5d083  3      
  popq %r14                  #  44    0x5d086  3      
  popq %r11                  #  45    0x5d089  3      
  movl %r11d, %ebp           #  46    0x5d08c  3      
  addq %r15, %rbp            #  47    0x5d08f  3      
  popq %r11                  #  48    0x5d092  3      
  nop                        #  49    0x5d095  1      
  andl $0xffffffe0, %r11d    #  50    0x5d096  7      
  addq %r15, %r11            #  51    0x5d09d  3      
  jmpq %r11                  #  52    0x5d0a0  3      
  nop                        #  53    0x5d0a3  1      
  nop                        #  54    0x5d0a4  1      
.L_5d100:                    #        0x5d0a5  0      
  movl %r12d, %esi           #  55    0x5d0a5  3      
  movl %ebx, %edi            #  56    0x5d0a8  2      
  xchgw %ax, %ax             #  57    0x5d0aa  3      
  nop                        #  58    0x5d0ad  1      
  andl $0xffffffe0, %r13d    #  59    0x5d0ae  7      
  addq %r15, %r13            #  60    0x5d0b5  3      
  callq %r13                 #  61    0x5d0b8  3      
  testl %eax, %eax           #  62    0x5d0bb  2      
  jne .L_5d0a0               #  63    0x5d0bd  6      
  cmpl $0x5, %r14d           #  64    0x5d0c3  4      
  je .L_5d0c0                #  65    0x5d0c7  6      
  movl -0x228(%rbp), %esi    #  66    0x5d0cd  6      
  movl %ebx, %edi            #  67    0x5d0d3  2      
  nop                        #  68    0x5d0d5  1      
  callq .uw_update_context   #  69    0x5d0d6  5      
  jmpq .L_5d060              #  70    0x5d0db  5      
  nop                        #  71    0x5d0e0  1      
  nop                        #  72    0x5d0e1  1      
                                                      
.size _Unwind_Backtrace, .-_Unwind_Backtrace

