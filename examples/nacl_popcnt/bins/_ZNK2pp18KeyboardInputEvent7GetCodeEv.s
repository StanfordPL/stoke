  .text
  .globl _ZNK2pp18KeyboardInputEvent7GetCodeEv
  .type _ZNK2pp18KeyboardInputEvent7GetCodeEv, @function

#! file-offset 0x3c4e0
#! rip-offset  0x3c4e0
#! capacity    448 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent7GetCodeEv:                                           #        0x3c4e0  0      
  movq %rbx, -0x10(%rsp)                                                          #  1     0x3c4e0  5      
  movq %r12, -0x8(%rsp)                                                           #  2     0x3c4e5  5      
  subl $0x38, %esp                                                                #  3     0x3c4ea  3      
  addq %r15, %rsp                                                                 #  4     0x3c4ed  3      
  movl %edi, %ebx                                                                 #  5     0x3c4f0  2      
  movl %esi, %r12d                                                                #  6     0x3c4f2  3      
  nop                                                                             #  7     0x3c4f5  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v  #  8     0x3c4f6  5      
  testl %eax, %eax                                                                #  9     0x3c4fb  2      
  jne .L_3c540                                                                    #  10    0x3c4fd  6      
  movl %ebx, %edi                                                                 #  11    0x3c503  2      
  nop                                                                             #  12    0x3c505  1      
  nop                                                                             #  13    0x3c506  1      
  callq ._ZN2pp3VarC1Ev                                                           #  14    0x3c507  5      
.L_3c520:                                                                         #        0x3c50c  0      
  movl %ebx, %eax                                                                 #  15    0x3c50c  2      
  movq 0x30(%rsp), %r12                                                           #  16    0x3c50e  5      
  movq 0x28(%rsp), %rbx                                                           #  17    0x3c513  5      
  addl $0x38, %esp                                                                #  18    0x3c518  3      
  addq %r15, %rsp                                                                 #  19    0x3c51b  3      
  popq %r11                                                                       #  20    0x3c51e  3      
  andl $0xffffffe0, %r11d                                                         #  21    0x3c521  7      
  addq %r15, %r11                                                                 #  22    0x3c528  3      
  jmpq %r11                                                                       #  23    0x3c52b  3      
  xchgw %ax, %ax                                                                  #  24    0x3c52e  3      
.L_3c540:                                                                         #        0x3c531  0      
  cmpb $0x0, 0xfff47f8(%rip)                                                      #  25    0x3c531  7      
  je .L_3c5c0                                                                     #  26    0x3c538  6      
  nop                                                                             #  27    0x3c53e  1      
  nop                                                                             #  28    0x3c53f  1      
.L_3c560:                                                                         #        0x3c540  0      
  movl 0xfff47f2(%rip), %eax                                                      #  29    0x3c540  6      
  movl %r12d, %r12d                                                               #  30    0x3c546  3      
  movl 0x4(%r15,%r12,1), %edi                                                     #  31    0x3c549  5      
  movl %eax, %eax                                                                 #  32    0x3c54e  2      
  movl 0x10(%r15,%rax,1), %eax                                                    #  33    0x3c550  5      
  nop                                                                             #  34    0x3c555  1      
  andl $0xffffffe0, %eax                                                          #  35    0x3c556  5      
  addq %r15, %rax                                                                 #  36    0x3c55b  3      
  callq %rax                                                                      #  37    0x3c55e  2      
  movl %ebx, %ebx                                                                 #  38    0x3c560  2      
  movl $0x100205f8, (%r15,%rbx,1)                                                 #  39    0x3c562  8      
  movl %ebx, %ebx                                                                 #  40    0x3c56a  2      
  movq %rdx, 0x10(%r15,%rbx,1)                                                    #  41    0x3c56c  5      
  movl %ebx, %ebx                                                                 #  42    0x3c571  2      
  movb $0x1, 0x18(%r15,%rbx,1)                                                    #  43    0x3c573  6      
  movl %ebx, %ebx                                                                 #  44    0x3c579  2      
  movq %rax, 0x8(%r15,%rbx,1)                                                     #  45    0x3c57b  5      
  jmpq .L_3c520                                                                   #  46    0x3c580  5      
  nop                                                                             #  47    0x3c585  1      
  nop                                                                             #  48    0x3c586  1      
.L_3c5c0:                                                                         #        0x3c587  0      
  movl $0x10030d30, %edi                                                          #  49    0x3c587  5      
  nop                                                                             #  50    0x3c58c  1      
  nop                                                                             #  51    0x3c58d  1      
  callq .__cxa_guard_acquire                                                      #  52    0x3c58e  5      
  testl %eax, %eax                                                                #  53    0x3c593  2      
  je .L_3c560                                                                     #  54    0x3c595  6      
  nop                                                                             #  55    0x3c59b  1      
  nop                                                                             #  56    0x3c59c  1      
  callq ._ZN2pp6Module3GetEv                                                      #  57    0x3c59d  5      
  movl %eax, %edi                                                                 #  58    0x3c5a2  2      
  movl $0x1002068a, %esi                                                          #  59    0x3c5a4  5      
  nop                                                                             #  60    0x3c5a9  1      
  nop                                                                             #  61    0x3c5aa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  62    0x3c5ab  5      
  movl $0x10030d30, %edi                                                          #  63    0x3c5b0  5      
  movl %eax, 0xfff477d(%rip)                                                      #  64    0x3c5b5  6      
  nop                                                                             #  65    0x3c5bb  1      
  nop                                                                             #  66    0x3c5bc  1      
  callq .__cxa_guard_release                                                      #  67    0x3c5bd  5      
  jmpq .L_3c560                                                                   #  68    0x3c5c2  5      
  nop                                                                             #  69    0x3c5c7  1      
  nop                                                                             #  70    0x3c5c8  1      
  movl %eax, %ebx                                                                 #  71    0x3c5c9  2      
  movl $0x10030d30, %edi                                                          #  72    0x3c5cb  5      
  nop                                                                             #  73    0x3c5d0  1      
  nop                                                                             #  74    0x3c5d1  1      
  callq .__cxa_guard_abort                                                        #  75    0x3c5d2  5      
  movl %ebx, %edi                                                                 #  76    0x3c5d7  2      
  nop                                                                             #  77    0x3c5d9  1      
  nop                                                                             #  78    0x3c5da  1      
  callq ._Unwind_Resume                                                           #  79    0x3c5db  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent7GetCodeEv, .-_ZNK2pp18KeyboardInputEvent7GetCodeEv

