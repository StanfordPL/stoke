  .text
  .globl _ZNK2pp13IMEInputEvent16GetSegmentOffsetEj
  .type _ZNK2pp13IMEInputEvent16GetSegmentOffsetEj, @function

#! file-offset 0x3d2e0
#! rip-offset  0x3d2e0
#! capacity    384 bytes

# Text                                                                       #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetSegmentOffsetEj:                                 #        0x3d2e0  0      
  movq %rbx, -0x10(%rsp)                                                     #  1     0x3d2e0  5      
  movq %r12, -0x8(%rsp)                                                      #  2     0x3d2e5  5      
  subl $0x18, %esp                                                           #  3     0x3d2ea  3      
  addq %r15, %rsp                                                            #  4     0x3d2ed  3      
  movl %esi, %r12d                                                           #  5     0x3d2f0  3      
  movl %edi, %ebx                                                            #  6     0x3d2f3  2      
  nop                                                                        #  7     0x3d2f5  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v  #  8     0x3d2f6  5      
  testl %eax, %eax                                                           #  9     0x3d2fb  2      
  jne .L_3d320                                                               #  10    0x3d2fd  6      
  movq 0x8(%rsp), %rbx                                                       #  11    0x3d303  5      
  movq 0x10(%rsp), %r12                                                      #  12    0x3d308  5      
  addl $0x18, %esp                                                           #  13    0x3d30d  3      
  addq %r15, %rsp                                                            #  14    0x3d310  3      
  popq %r11                                                                  #  15    0x3d313  3      
  andl $0xffffffe0, %r11d                                                    #  16    0x3d316  7      
  addq %r15, %r11                                                            #  17    0x3d31d  3      
  jmpq %r11                                                                  #  18    0x3d320  3      
.L_3d320:                                                                    #        0x3d323  0      
  cmpb $0x0, 0xfff39e6(%rip)                                                 #  19    0x3d323  7      
  je .L_3d380                                                                #  20    0x3d32a  6      
  nop                                                                        #  21    0x3d330  1      
  nop                                                                        #  22    0x3d331  1      
.L_3d340:                                                                    #        0x3d332  0      
  movl 0xfff39e0(%rip), %eax                                                 #  23    0x3d332  6      
  movl %ebx, %ebx                                                            #  24    0x3d338  2      
  movl 0x4(%r15,%rbx,1), %edi                                                #  25    0x3d33a  5      
  movl %r12d, %esi                                                           #  26    0x3d33f  3      
  movq 0x8(%rsp), %rbx                                                       #  27    0x3d342  5      
  movq 0x10(%rsp), %r12                                                      #  28    0x3d347  5      
  nop                                                                        #  29    0x3d34c  1      
  movl %eax, %eax                                                            #  30    0x3d34d  2      
  movl 0x10(%r15,%rax,1), %eax                                               #  31    0x3d34f  5      
  addl $0x18, %esp                                                           #  32    0x3d354  3      
  addq %r15, %rsp                                                            #  33    0x3d357  3      
  andl $0xffffffe0, %eax                                                     #  34    0x3d35a  5      
  addq %r15, %rax                                                            #  35    0x3d35f  3      
  jmpq %rax                                                                  #  36    0x3d362  2      
  nop                                                                        #  37    0x3d364  1      
.L_3d380:                                                                    #        0x3d365  0      
  movl $0x10030d10, %edi                                                     #  38    0x3d365  5      
  nop                                                                        #  39    0x3d36a  1      
  nop                                                                        #  40    0x3d36b  1      
  callq .__cxa_guard_acquire                                                 #  41    0x3d36c  5      
  testl %eax, %eax                                                           #  42    0x3d371  2      
  je .L_3d340                                                                #  43    0x3d373  6      
  nop                                                                        #  44    0x3d379  1      
  nop                                                                        #  45    0x3d37a  1      
  callq ._ZN2pp6Module3GetEv                                                 #  46    0x3d37b  5      
  movl %eax, %edi                                                            #  47    0x3d380  2      
  movl $0x10020674, %esi                                                     #  48    0x3d382  5      
  nop                                                                        #  49    0x3d387  1      
  nop                                                                        #  50    0x3d388  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                              #  51    0x3d389  5      
  movl $0x10030d10, %edi                                                     #  52    0x3d38e  5      
  movl %eax, 0xfff397f(%rip)                                                 #  53    0x3d393  6      
  nop                                                                        #  54    0x3d399  1      
  nop                                                                        #  55    0x3d39a  1      
  callq .__cxa_guard_release                                                 #  56    0x3d39b  5      
  jmpq .L_3d340                                                              #  57    0x3d3a0  5      
  nop                                                                        #  58    0x3d3a5  1      
  nop                                                                        #  59    0x3d3a6  1      
  movl %eax, %ebx                                                            #  60    0x3d3a7  2      
  movl $0x10030d10, %edi                                                     #  61    0x3d3a9  5      
  nop                                                                        #  62    0x3d3ae  1      
  nop                                                                        #  63    0x3d3af  1      
  callq .__cxa_guard_abort                                                   #  64    0x3d3b0  5      
  movl %ebx, %edi                                                            #  65    0x3d3b5  2      
  nop                                                                        #  66    0x3d3b7  1      
  nop                                                                        #  67    0x3d3b8  1      
  callq ._Unwind_Resume                                                      #  68    0x3d3b9  5      
                                                                                                      
.size _ZNK2pp13IMEInputEvent16GetSegmentOffsetEj, .-_ZNK2pp13IMEInputEvent16GetSegmentOffsetEj

