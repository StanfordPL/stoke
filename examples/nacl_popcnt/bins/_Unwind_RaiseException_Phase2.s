  .text
  .globl _Unwind_RaiseException_Phase2
  .type _Unwind_RaiseException_Phase2, @function

#! file-offset 0x5d560
#! rip-offset  0x5d560
#! capacity    352 bytes

# Text                           #  Line  RIP      Bytes  
._Unwind_RaiseException_Phase2:  #        0x5d560  0      
  pushq %r14                     #  1     0x5d560  3      
  pushq %r13                     #  2     0x5d563  3      
  movl %edi, %r13d               #  3     0x5d566  3      
  pushq %r12                     #  4     0x5d569  3      
  movl %esi, %r12d               #  5     0x5d56c  3      
  pushq %rbx                     #  6     0x5d56f  2      
  subl $0x188, %esp              #  7     0x5d571  6      
  addq %r15, %rsp                #  8     0x5d577  3      
  leal 0x10(%rsp), %r14d         #  9     0x5d57a  5      
  jmpq .L_5d600                  #  10    0x5d57f  5      
.L_5d580:                        #        0x5d584  0      
  movl 0x154(%rsp), %eax         #  11    0x5d584  7      
  testq %rax, %rax               #  12    0x5d58b  3      
  je .L_5d5e0                    #  13    0x5d58e  6      
  movl %ebx, %esi                #  14    0x5d594  2      
  movl %r12d, %r8d               #  15    0x5d596  3      
  movl %r13d, %ecx               #  16    0x5d599  3      
  orl $0x2, %esi                 #  17    0x5d59c  3      
  movl %r13d, %r13d              #  18    0x5d59f  3      
  movq (%r15,%r13,1), %rdx       #  19    0x5d5a2  4      
  xchgw %ax, %ax                 #  20    0x5d5a6  3      
  movl $0x1, %edi                #  21    0x5d5a9  5      
  nop                            #  22    0x5d5ae  1      
  nop                            #  23    0x5d5af  1      
  andl $0xffffffe0, %eax         #  24    0x5d5b0  5      
  addq %r15, %rax                #  25    0x5d5b5  3      
  callq %rax                     #  26    0x5d5b8  2      
  cmpl $0x7, %eax                #  27    0x5d5ba  3      
  je .L_5d680                    #  28    0x5d5bd  6      
  cmpl $0x8, %eax                #  29    0x5d5c3  3      
  jne .L_5d660                   #  30    0x5d5c6  6      
  nop                            #  31    0x5d5cc  1      
.L_5d5e0:                        #        0x5d5cd  0      
  testl %ebx, %ebx               #  32    0x5d5cd  2      
  jne .L_5d6a0                   #  33    0x5d5cf  6      
  movl %r14d, %esi               #  34    0x5d5d5  3      
  movl %r12d, %edi               #  35    0x5d5d8  3      
  nop                            #  36    0x5d5db  1      
  callq .uw_update_context       #  37    0x5d5dc  5      
.L_5d600:                        #        0x5d5e1  0      
  movl %r14d, %esi               #  38    0x5d5e1  3      
  movl %r12d, %edi               #  39    0x5d5e4  3      
  xorl %ebx, %ebx                #  40    0x5d5e7  2      
  nop                            #  41    0x5d5e9  1      
  nop                            #  42    0x5d5ea  1      
  callq .uw_frame_state_for      #  43    0x5d5eb  5      
  movl %r12d, %edi               #  44    0x5d5f0  3      
  movl %eax, 0x8(%rsp)           #  45    0x5d5f3  4      
  nop                            #  46    0x5d5f7  1      
  nop                            #  47    0x5d5f8  1      
  callq ._Unwind_GetCFA          #  48    0x5d5f9  5      
  movl %eax, %eax                #  49    0x5d5fe  2      
  movl %r13d, %r13d              #  50    0x5d600  3      
  cmpq 0x18(%r15,%r13,1), %rax   #  51    0x5d603  5      
  movl 0x8(%rsp), %edx           #  52    0x5d608  4      
  sete %bl                       #  53    0x5d60c  3      
  shll $0x2, %ebx                #  54    0x5d60f  3      
  testl %edx, %edx               #  55    0x5d612  2      
  je .L_5d580                    #  56    0x5d614  6      
  nop                            #  57    0x5d61a  1      
.L_5d660:                        #        0x5d61b  0      
  movl $0x2, %eax                #  58    0x5d61b  5      
  nop                            #  59    0x5d620  1      
  nop                            #  60    0x5d621  1      
.L_5d680:                        #        0x5d622  0      
  addl $0x188, %esp              #  61    0x5d622  6      
  addq %r15, %rsp                #  62    0x5d628  3      
  popq %rbx                      #  63    0x5d62b  2      
  popq %r12                      #  64    0x5d62d  3      
  popq %r13                      #  65    0x5d630  3      
  popq %r14                      #  66    0x5d633  3      
  popq %r11                      #  67    0x5d636  3      
  andl $0xffffffe0, %r11d        #  68    0x5d639  7      
  addq %r15, %r11                #  69    0x5d640  3      
  jmpq %r11                      #  70    0x5d643  3      
  nop                            #  71    0x5d646  1      
.L_5d6a0:                        #        0x5d647  0      
  nop                            #  72    0x5d647  1      
  nop                            #  73    0x5d648  1      
  callq .abort                   #  74    0x5d649  5      
                                                          
.size _Unwind_RaiseException_Phase2, .-_Unwind_RaiseException_Phase2

