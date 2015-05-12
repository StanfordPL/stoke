  .text
  .globl _ZNK2pp18KeyboardInputEvent7GetCodeEv
  .type _ZNK2pp18KeyboardInputEvent7GetCodeEv, @function

#! file-offset 0x3c500
#! rip-offset  0x3c500
#! capacity    448 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent7GetCodeEv:                                           #        0x3c500  0      
  movq %rbx, -0x10(%rsp)                                                          #  1     0x3c500  5      
  movq %r12, -0x8(%rsp)                                                           #  2     0x3c505  5      
  subl $0x38, %esp                                                                #  3     0x3c50a  3      
  addq %r15, %rsp                                                                 #  4     0x3c50d  3      
  movl %edi, %ebx                                                                 #  5     0x3c510  2      
  movl %esi, %r12d                                                                #  6     0x3c512  3      
  nop                                                                             #  7     0x3c515  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v  #  8     0x3c516  5      
  testl %eax, %eax                                                                #  9     0x3c51b  2      
  jne .L_3c560                                                                    #  10    0x3c51d  6      
  movl %ebx, %edi                                                                 #  11    0x3c523  2      
  nop                                                                             #  12    0x3c525  1      
  nop                                                                             #  13    0x3c526  1      
  callq ._ZN2pp3VarC1Ev                                                           #  14    0x3c527  5      
.L_3c540:                                                                         #        0x3c52c  0      
  movl %ebx, %eax                                                                 #  15    0x3c52c  2      
  movq 0x30(%rsp), %r12                                                           #  16    0x3c52e  5      
  movq 0x28(%rsp), %rbx                                                           #  17    0x3c533  5      
  addl $0x38, %esp                                                                #  18    0x3c538  3      
  addq %r15, %rsp                                                                 #  19    0x3c53b  3      
  popq %r11                                                                       #  20    0x3c53e  3      
  andl $0xffffffe0, %r11d                                                         #  21    0x3c541  7      
  addq %r15, %r11                                                                 #  22    0x3c548  3      
  jmpq %r11                                                                       #  23    0x3c54b  3      
  xchgw %ax, %ax                                                                  #  24    0x3c54e  3      
.L_3c560:                                                                         #        0x3c551  0      
  cmpb $0x0, 0xfff47d8(%rip)                                                      #  25    0x3c551  7      
  je .L_3c5e0                                                                     #  26    0x3c558  6      
  nop                                                                             #  27    0x3c55e  1      
  nop                                                                             #  28    0x3c55f  1      
.L_3c580:                                                                         #        0x3c560  0      
  movl 0xfff47d2(%rip), %eax                                                      #  29    0x3c560  6      
  movl %r12d, %r12d                                                               #  30    0x3c566  3      
  movl 0x4(%r15,%r12,1), %edi                                                     #  31    0x3c569  5      
  movl %eax, %eax                                                                 #  32    0x3c56e  2      
  movl 0x10(%r15,%rax,1), %eax                                                    #  33    0x3c570  5      
  nop                                                                             #  34    0x3c575  1      
  andl $0xffffffe0, %eax                                                          #  35    0x3c576  5      
  addq %r15, %rax                                                                 #  36    0x3c57b  3      
  callq %rax                                                                      #  37    0x3c57e  2      
  movl %ebx, %ebx                                                                 #  38    0x3c580  2      
  movl $0x100205f8, (%r15,%rbx,1)                                                 #  39    0x3c582  8      
  movl %ebx, %ebx                                                                 #  40    0x3c58a  2      
  movq %rdx, 0x10(%r15,%rbx,1)                                                    #  41    0x3c58c  5      
  movl %ebx, %ebx                                                                 #  42    0x3c591  2      
  movb $0x1, 0x18(%r15,%rbx,1)                                                    #  43    0x3c593  6      
  movl %ebx, %ebx                                                                 #  44    0x3c599  2      
  movq %rax, 0x8(%r15,%rbx,1)                                                     #  45    0x3c59b  5      
  jmpq .L_3c540                                                                   #  46    0x3c5a0  5      
  nop                                                                             #  47    0x3c5a5  1      
  nop                                                                             #  48    0x3c5a6  1      
.L_3c5e0:                                                                         #        0x3c5a7  0      
  movl $0x10030d30, %edi                                                          #  49    0x3c5a7  5      
  nop                                                                             #  50    0x3c5ac  1      
  nop                                                                             #  51    0x3c5ad  1      
  callq .__cxa_guard_acquire                                                      #  52    0x3c5ae  5      
  testl %eax, %eax                                                                #  53    0x3c5b3  2      
  je .L_3c580                                                                     #  54    0x3c5b5  6      
  nop                                                                             #  55    0x3c5bb  1      
  nop                                                                             #  56    0x3c5bc  1      
  callq ._ZN2pp6Module3GetEv                                                      #  57    0x3c5bd  5      
  movl %eax, %edi                                                                 #  58    0x3c5c2  2      
  movl $0x1002068a, %esi                                                          #  59    0x3c5c4  5      
  nop                                                                             #  60    0x3c5c9  1      
  nop                                                                             #  61    0x3c5ca  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  62    0x3c5cb  5      
  movl $0x10030d30, %edi                                                          #  63    0x3c5d0  5      
  movl %eax, 0xfff475d(%rip)                                                      #  64    0x3c5d5  6      
  nop                                                                             #  65    0x3c5db  1      
  nop                                                                             #  66    0x3c5dc  1      
  callq .__cxa_guard_release                                                      #  67    0x3c5dd  5      
  jmpq .L_3c580                                                                   #  68    0x3c5e2  5      
  nop                                                                             #  69    0x3c5e7  1      
  nop                                                                             #  70    0x3c5e8  1      
  movl %eax, %ebx                                                                 #  71    0x3c5e9  2      
  movl $0x10030d30, %edi                                                          #  72    0x3c5eb  5      
  nop                                                                             #  73    0x3c5f0  1      
  nop                                                                             #  74    0x3c5f1  1      
  callq .__cxa_guard_abort                                                        #  75    0x3c5f2  5      
  movl %ebx, %edi                                                                 #  76    0x3c5f7  2      
  nop                                                                             #  77    0x3c5f9  1      
  nop                                                                             #  78    0x3c5fa  1      
  callq ._Unwind_Resume                                                           #  79    0x3c5fb  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent7GetCodeEv, .-_ZNK2pp18KeyboardInputEvent7GetCodeEv

