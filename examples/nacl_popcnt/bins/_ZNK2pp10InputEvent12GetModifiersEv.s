  .text
  .globl _ZNK2pp10InputEvent12GetModifiersEv
  .type _ZNK2pp10InputEvent12GetModifiersEv, @function

#! file-offset 0x36760
#! rip-offset  0x36760
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent12GetModifiersEv:            #        0x36760  0      
  cmpb $0x0, 0xfffa609(%rip)                     #  1     0x36760  7      
  pushq %rbx                                     #  2     0x36767  2      
  movl %edi, %ebx                                #  3     0x36769  2      
  je .L_367c0                                    #  4     0x3676b  6      
  nop                                            #  5     0x36771  1      
  nop                                            #  6     0x36772  1      
.L_36780:                                        #        0x36773  0      
  movl 0xfffa5ff(%rip), %eax                     #  7     0x36773  6      
  testq %rax, %rax                               #  8     0x36779  3      
  jne .L_36860                                   #  9     0x3677c  6      
  xchgw %ax, %ax                                 #  10    0x36782  3      
  nop                                            #  11    0x36785  1      
.L_367a0:                                        #        0x36786  0      
  popq %rbx                                      #  12    0x36786  2      
  popq %r11                                      #  13    0x36788  3      
  andl $0xffffffe0, %r11d                        #  14    0x3678b  7      
  addq %r15, %r11                                #  15    0x36792  3      
  jmpq %r11                                      #  16    0x36795  3      
  nop                                            #  17    0x36798  1      
  nop                                            #  18    0x36799  1      
.L_367c0:                                        #        0x3679a  0      
  movl $0x10030d70, %edi                         #  19    0x3679a  5      
  nop                                            #  20    0x3679f  1      
  nop                                            #  21    0x367a0  1      
  callq .__cxa_guard_acquire                     #  22    0x367a1  5      
  testl %eax, %eax                               #  23    0x367a6  2      
  je .L_36780                                    #  24    0x367a8  6      
  nop                                            #  25    0x367ae  1      
  nop                                            #  26    0x367af  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x367b0  5      
  movl %eax, %edi                                #  28    0x367b5  2      
  movl $0x100202c8, %esi                         #  29    0x367b7  5      
  nop                                            #  30    0x367bc  1      
  nop                                            #  31    0x367bd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x367be  5      
  movl $0x10030d70, %edi                         #  33    0x367c3  5      
  movl %eax, 0xfffa5aa(%rip)                     #  34    0x367c8  6      
  nop                                            #  35    0x367ce  1      
  nop                                            #  36    0x367cf  1      
  callq .__cxa_guard_release                     #  37    0x367d0  5      
  movl 0xfffa59d(%rip), %eax                     #  38    0x367d5  6      
  testq %rax, %rax                               #  39    0x367db  3      
  je .L_367a0                                    #  40    0x367de  6      
  xchgw %ax, %ax                                 #  41    0x367e4  3      
  nop                                            #  42    0x367e7  1      
.L_36860:                                        #        0x367e8  0      
  cmpb $0x0, 0xfffa581(%rip)                     #  43    0x367e8  7      
  je .L_36880                                    #  44    0x367ef  6      
  movl %ebx, %ebx                                #  45    0x367f5  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x367f7  5      
  movl %eax, %eax                                #  47    0x367fc  2      
  movl 0x18(%r15,%rax,1), %eax                   #  48    0x367fe  5      
  popq %rbx                                      #  49    0x36803  2      
  andl $0xffffffe0, %eax                         #  50    0x36805  5      
  addq %r15, %rax                                #  51    0x3680a  3      
  jmpq %rax                                      #  52    0x3680d  2      
.L_36880:                                        #        0x3680f  0      
  movl $0x10030d70, %edi                         #  53    0x3680f  5      
  nop                                            #  54    0x36814  1      
  nop                                            #  55    0x36815  1      
  callq .__cxa_guard_acquire                     #  56    0x36816  5      
  testl %eax, %eax                               #  57    0x3681b  2      
  jne .L_368e0                                   #  58    0x3681d  6      
  nop                                            #  59    0x36823  1      
  nop                                            #  60    0x36824  1      
.L_368c0:                                        #        0x36825  0      
  movl 0xfffa54d(%rip), %eax                     #  61    0x36825  6      
  movl %ebx, %ebx                                #  62    0x3682b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3682d  5      
  popq %rbx                                      #  64    0x36832  2      
  movl %eax, %eax                                #  65    0x36834  2      
  movl 0x18(%r15,%rax,1), %eax                   #  66    0x36836  5      
  andl $0xffffffe0, %eax                         #  67    0x3683b  5      
  addq %r15, %rax                                #  68    0x36840  3      
  jmpq %rax                                      #  69    0x36843  2      
  nop                                            #  70    0x36845  1      
.L_368e0:                                        #        0x36846  0      
  nop                                            #  71    0x36846  1      
  nop                                            #  72    0x36847  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36848  5      
  movl %eax, %edi                                #  74    0x3684d  2      
  movl $0x100202c8, %esi                         #  75    0x3684f  5      
  nop                                            #  76    0x36854  1      
  nop                                            #  77    0x36855  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36856  5      
  movl $0x10030d70, %edi                         #  79    0x3685b  5      
  movl %eax, 0xfffa512(%rip)                     #  80    0x36860  6      
  nop                                            #  81    0x36866  1      
  nop                                            #  82    0x36867  1      
  callq .__cxa_guard_release                     #  83    0x36868  5      
  jmpq .L_368c0                                  #  84    0x3686d  5      
  nop                                            #  85    0x36872  1      
  nop                                            #  86    0x36873  1      
.L_36960:                                        #        0x36874  0      
  movl %eax, %ebx                                #  87    0x36874  2      
  movl $0x10030d70, %edi                         #  88    0x36876  5      
  nop                                            #  89    0x3687b  1      
  nop                                            #  90    0x3687c  1      
  callq .__cxa_guard_abort                       #  91    0x3687d  5      
  movl %ebx, %edi                                #  92    0x36882  2      
  nop                                            #  93    0x36884  1      
  nop                                            #  94    0x36885  1      
  callq ._Unwind_Resume                          #  95    0x36886  5      
  jmpq .L_36960                                  #  96    0x3688b  5      
  nop                                            #  97    0x36890  1      
  nop                                            #  98    0x36891  1      
                                                                          
.size _ZNK2pp10InputEvent12GetModifiersEv, .-_ZNK2pp10InputEvent12GetModifiersEv

