  .text
  .globl _Unwind_RaiseException_Phase2
  .type _Unwind_RaiseException_Phase2, @function

#! file-offset 0x5d4c0
#! rip-offset  0x5d4c0
#! capacity    352 bytes

# Text                           #  Line  RIP      Bytes  
._Unwind_RaiseException_Phase2:  #        0x5d4c0  0      
  pushq %r14                     #  1     0x5d4c0  3      
  pushq %r13                     #  2     0x5d4c3  3      
  movl %edi, %r13d               #  3     0x5d4c6  3      
  pushq %r12                     #  4     0x5d4c9  3      
  movl %esi, %r12d               #  5     0x5d4cc  3      
  pushq %rbx                     #  6     0x5d4cf  2      
  subl $0x188, %esp              #  7     0x5d4d1  6      
  addq %r15, %rsp                #  8     0x5d4d7  3      
  leal 0x10(%rsp), %r14d         #  9     0x5d4da  5      
  jmpq .L_5d560                  #  10    0x5d4df  5      
.L_5d4e0:                        #        0x5d4e4  0      
  movl 0x154(%rsp), %eax         #  11    0x5d4e4  7      
  testq %rax, %rax               #  12    0x5d4eb  3      
  je .L_5d540                    #  13    0x5d4ee  6      
  movl %ebx, %esi                #  14    0x5d4f4  2      
  movl %r12d, %r8d               #  15    0x5d4f6  3      
  movl %r13d, %ecx               #  16    0x5d4f9  3      
  orl $0x2, %esi                 #  17    0x5d4fc  3      
  movl %r13d, %r13d              #  18    0x5d4ff  3      
  movq (%r15,%r13,1), %rdx       #  19    0x5d502  4      
  xchgw %ax, %ax                 #  20    0x5d506  3      
  movl $0x1, %edi                #  21    0x5d509  5      
  nop                            #  22    0x5d50e  1      
  nop                            #  23    0x5d50f  1      
  andl $0xffffffe0, %eax         #  24    0x5d510  5      
  addq %r15, %rax                #  25    0x5d515  3      
  callq %rax                     #  26    0x5d518  2      
  cmpl $0x7, %eax                #  27    0x5d51a  3      
  je .L_5d5e0                    #  28    0x5d51d  6      
  cmpl $0x8, %eax                #  29    0x5d523  3      
  jne .L_5d5c0                   #  30    0x5d526  6      
  nop                            #  31    0x5d52c  1      
.L_5d540:                        #        0x5d52d  0      
  testl %ebx, %ebx               #  32    0x5d52d  2      
  jne .L_5d600                   #  33    0x5d52f  6      
  movl %r14d, %esi               #  34    0x5d535  3      
  movl %r12d, %edi               #  35    0x5d538  3      
  nop                            #  36    0x5d53b  1      
  callq .uw_update_context       #  37    0x5d53c  5      
.L_5d560:                        #        0x5d541  0      
  movl %r14d, %esi               #  38    0x5d541  3      
  movl %r12d, %edi               #  39    0x5d544  3      
  xorl %ebx, %ebx                #  40    0x5d547  2      
  nop                            #  41    0x5d549  1      
  nop                            #  42    0x5d54a  1      
  callq .uw_frame_state_for      #  43    0x5d54b  5      
  movl %r12d, %edi               #  44    0x5d550  3      
  movl %eax, 0x8(%rsp)           #  45    0x5d553  4      
  nop                            #  46    0x5d557  1      
  nop                            #  47    0x5d558  1      
  callq ._Unwind_GetCFA          #  48    0x5d559  5      
  movl %eax, %eax                #  49    0x5d55e  2      
  movl %r13d, %r13d              #  50    0x5d560  3      
  cmpq 0x18(%r15,%r13,1), %rax   #  51    0x5d563  5      
  movl 0x8(%rsp), %edx           #  52    0x5d568  4      
  sete %bl                       #  53    0x5d56c  3      
  shll $0x2, %ebx                #  54    0x5d56f  3      
  testl %edx, %edx               #  55    0x5d572  2      
  je .L_5d4e0                    #  56    0x5d574  6      
  nop                            #  57    0x5d57a  1      
.L_5d5c0:                        #        0x5d57b  0      
  movl $0x2, %eax                #  58    0x5d57b  5      
  nop                            #  59    0x5d580  1      
  nop                            #  60    0x5d581  1      
.L_5d5e0:                        #        0x5d582  0      
  addl $0x188, %esp              #  61    0x5d582  6      
  addq %r15, %rsp                #  62    0x5d588  3      
  popq %rbx                      #  63    0x5d58b  2      
  popq %r12                      #  64    0x5d58d  3      
  popq %r13                      #  65    0x5d590  3      
  popq %r14                      #  66    0x5d593  3      
  popq %r11                      #  67    0x5d596  3      
  andl $0xffffffe0, %r11d        #  68    0x5d599  7      
  addq %r15, %r11                #  69    0x5d5a0  3      
  jmpq %r11                      #  70    0x5d5a3  3      
  nop                            #  71    0x5d5a6  1      
.L_5d600:                        #        0x5d5a7  0      
  nop                            #  72    0x5d5a7  1      
  nop                            #  73    0x5d5a8  1      
  callq .abort                   #  74    0x5d5a9  5      
                                                          
.size _Unwind_RaiseException_Phase2, .-_Unwind_RaiseException_Phase2

