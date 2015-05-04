  .text
  .globl _ZNK2pp18KeyboardInputEvent7GetCodeEv
  .type _ZNK2pp18KeyboardInputEvent7GetCodeEv, @function

#! file-offset 0x3c580
#! rip-offset  0x3c580
#! capacity    448 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent7GetCodeEv:                                           #        0x3c580  0      
  movq %rbx, -0x10(%rsp)                                                          #  1     0x3c580  5      
  movq %r12, -0x8(%rsp)                                                           #  2     0x3c585  5      
  subl $0x38, %esp                                                                #  3     0x3c58a  3      
  addq %r15, %rsp                                                                 #  4     0x3c58d  3      
  movl %edi, %ebx                                                                 #  5     0x3c590  2      
  movl %esi, %r12d                                                                #  6     0x3c592  3      
  nop                                                                             #  7     0x3c595  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v  #  8     0x3c596  5      
  testl %eax, %eax                                                                #  9     0x3c59b  2      
  jne .L_3c5e0                                                                    #  10    0x3c59d  6      
  movl %ebx, %edi                                                                 #  11    0x3c5a3  2      
  nop                                                                             #  12    0x3c5a5  1      
  nop                                                                             #  13    0x3c5a6  1      
  callq ._ZN2pp3VarC1Ev                                                           #  14    0x3c5a7  5      
.L_3c5c0:                                                                         #        0x3c5ac  0      
  movl %ebx, %eax                                                                 #  15    0x3c5ac  2      
  movq 0x30(%rsp), %r12                                                           #  16    0x3c5ae  5      
  movq 0x28(%rsp), %rbx                                                           #  17    0x3c5b3  5      
  addl $0x38, %esp                                                                #  18    0x3c5b8  3      
  addq %r15, %rsp                                                                 #  19    0x3c5bb  3      
  popq %r11                                                                       #  20    0x3c5be  3      
  andl $0xffffffe0, %r11d                                                         #  21    0x3c5c1  7      
  addq %r15, %r11                                                                 #  22    0x3c5c8  3      
  jmpq %r11                                                                       #  23    0x3c5cb  3      
  xchgw %ax, %ax                                                                  #  24    0x3c5ce  3      
.L_3c5e0:                                                                         #        0x3c5d1  0      
  cmpb $0x0, 0xfff4758(%rip)                                                      #  25    0x3c5d1  7      
  je .L_3c660                                                                     #  26    0x3c5d8  6      
  nop                                                                             #  27    0x3c5de  1      
  nop                                                                             #  28    0x3c5df  1      
.L_3c600:                                                                         #        0x3c5e0  0      
  movl 0xfff4752(%rip), %eax                                                      #  29    0x3c5e0  6      
  movl %r12d, %r12d                                                               #  30    0x3c5e6  3      
  movl 0x4(%r15,%r12,1), %edi                                                     #  31    0x3c5e9  5      
  movl %eax, %eax                                                                 #  32    0x3c5ee  2      
  movl 0x10(%r15,%rax,1), %eax                                                    #  33    0x3c5f0  5      
  nop                                                                             #  34    0x3c5f5  1      
  andl $0xffffffe0, %eax                                                          #  35    0x3c5f6  5      
  addq %r15, %rax                                                                 #  36    0x3c5fb  3      
  callq %rax                                                                      #  37    0x3c5fe  2      
  movl %ebx, %ebx                                                                 #  38    0x3c600  2      
  movl $0x100205f8, (%r15,%rbx,1)                                                 #  39    0x3c602  8      
  movl %ebx, %ebx                                                                 #  40    0x3c60a  2      
  movq %rdx, 0x10(%r15,%rbx,1)                                                    #  41    0x3c60c  5      
  movl %ebx, %ebx                                                                 #  42    0x3c611  2      
  movb $0x1, 0x18(%r15,%rbx,1)                                                    #  43    0x3c613  6      
  movl %ebx, %ebx                                                                 #  44    0x3c619  2      
  movq %rax, 0x8(%r15,%rbx,1)                                                     #  45    0x3c61b  5      
  jmpq .L_3c5c0                                                                   #  46    0x3c620  5      
  nop                                                                             #  47    0x3c625  1      
  nop                                                                             #  48    0x3c626  1      
.L_3c660:                                                                         #        0x3c627  0      
  movl $0x10030d30, %edi                                                          #  49    0x3c627  5      
  nop                                                                             #  50    0x3c62c  1      
  nop                                                                             #  51    0x3c62d  1      
  callq .__cxa_guard_acquire                                                      #  52    0x3c62e  5      
  testl %eax, %eax                                                                #  53    0x3c633  2      
  je .L_3c600                                                                     #  54    0x3c635  6      
  nop                                                                             #  55    0x3c63b  1      
  nop                                                                             #  56    0x3c63c  1      
  callq ._ZN2pp6Module3GetEv                                                      #  57    0x3c63d  5      
  movl %eax, %edi                                                                 #  58    0x3c642  2      
  movl $0x1002068a, %esi                                                          #  59    0x3c644  5      
  nop                                                                             #  60    0x3c649  1      
  nop                                                                             #  61    0x3c64a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  62    0x3c64b  5      
  movl $0x10030d30, %edi                                                          #  63    0x3c650  5      
  movl %eax, 0xfff46dd(%rip)                                                      #  64    0x3c655  6      
  nop                                                                             #  65    0x3c65b  1      
  nop                                                                             #  66    0x3c65c  1      
  callq .__cxa_guard_release                                                      #  67    0x3c65d  5      
  jmpq .L_3c600                                                                   #  68    0x3c662  5      
  nop                                                                             #  69    0x3c667  1      
  nop                                                                             #  70    0x3c668  1      
  movl %eax, %ebx                                                                 #  71    0x3c669  2      
  movl $0x10030d30, %edi                                                          #  72    0x3c66b  5      
  nop                                                                             #  73    0x3c670  1      
  nop                                                                             #  74    0x3c671  1      
  callq .__cxa_guard_abort                                                        #  75    0x3c672  5      
  movl %ebx, %edi                                                                 #  76    0x3c677  2      
  nop                                                                             #  77    0x3c679  1      
  nop                                                                             #  78    0x3c67a  1      
  callq ._Unwind_Resume                                                           #  79    0x3c67b  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent7GetCodeEv, .-_ZNK2pp18KeyboardInputEvent7GetCodeEv

