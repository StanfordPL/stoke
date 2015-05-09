  .text
  .globl _ZNK2pp10InputEvent12GetModifiersEv
  .type _ZNK2pp10InputEvent12GetModifiersEv, @function

#! file-offset 0x36740
#! rip-offset  0x36740
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent12GetModifiersEv:            #        0x36740  0      
  cmpb $0x0, 0xfffa629(%rip)                     #  1     0x36740  7      
  pushq %rbx                                     #  2     0x36747  2      
  movl %edi, %ebx                                #  3     0x36749  2      
  je .L_367a0                                    #  4     0x3674b  6      
  nop                                            #  5     0x36751  1      
  nop                                            #  6     0x36752  1      
.L_36760:                                        #        0x36753  0      
  movl 0xfffa61f(%rip), %eax                     #  7     0x36753  6      
  testq %rax, %rax                               #  8     0x36759  3      
  jne .L_36840                                   #  9     0x3675c  6      
  xchgw %ax, %ax                                 #  10    0x36762  3      
  nop                                            #  11    0x36765  1      
.L_36780:                                        #        0x36766  0      
  popq %rbx                                      #  12    0x36766  2      
  popq %r11                                      #  13    0x36768  3      
  andl $0xffffffe0, %r11d                        #  14    0x3676b  7      
  addq %r15, %r11                                #  15    0x36772  3      
  jmpq %r11                                      #  16    0x36775  3      
  nop                                            #  17    0x36778  1      
  nop                                            #  18    0x36779  1      
.L_367a0:                                        #        0x3677a  0      
  movl $0x10030d70, %edi                         #  19    0x3677a  5      
  nop                                            #  20    0x3677f  1      
  nop                                            #  21    0x36780  1      
  callq .__cxa_guard_acquire                     #  22    0x36781  5      
  testl %eax, %eax                               #  23    0x36786  2      
  je .L_36760                                    #  24    0x36788  6      
  nop                                            #  25    0x3678e  1      
  nop                                            #  26    0x3678f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x36790  5      
  movl %eax, %edi                                #  28    0x36795  2      
  movl $0x100202c8, %esi                         #  29    0x36797  5      
  nop                                            #  30    0x3679c  1      
  nop                                            #  31    0x3679d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3679e  5      
  movl $0x10030d70, %edi                         #  33    0x367a3  5      
  movl %eax, 0xfffa5ca(%rip)                     #  34    0x367a8  6      
  nop                                            #  35    0x367ae  1      
  nop                                            #  36    0x367af  1      
  callq .__cxa_guard_release                     #  37    0x367b0  5      
  movl 0xfffa5bd(%rip), %eax                     #  38    0x367b5  6      
  testq %rax, %rax                               #  39    0x367bb  3      
  je .L_36780                                    #  40    0x367be  6      
  xchgw %ax, %ax                                 #  41    0x367c4  3      
  nop                                            #  42    0x367c7  1      
.L_36840:                                        #        0x367c8  0      
  cmpb $0x0, 0xfffa5a1(%rip)                     #  43    0x367c8  7      
  je .L_36860                                    #  44    0x367cf  6      
  movl %ebx, %ebx                                #  45    0x367d5  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x367d7  5      
  movl %eax, %eax                                #  47    0x367dc  2      
  movl 0x18(%r15,%rax,1), %eax                   #  48    0x367de  5      
  popq %rbx                                      #  49    0x367e3  2      
  andl $0xffffffe0, %eax                         #  50    0x367e5  5      
  addq %r15, %rax                                #  51    0x367ea  3      
  jmpq %rax                                      #  52    0x367ed  2      
.L_36860:                                        #        0x367ef  0      
  movl $0x10030d70, %edi                         #  53    0x367ef  5      
  nop                                            #  54    0x367f4  1      
  nop                                            #  55    0x367f5  1      
  callq .__cxa_guard_acquire                     #  56    0x367f6  5      
  testl %eax, %eax                               #  57    0x367fb  2      
  jne .L_368c0                                   #  58    0x367fd  6      
  nop                                            #  59    0x36803  1      
  nop                                            #  60    0x36804  1      
.L_368a0:                                        #        0x36805  0      
  movl 0xfffa56d(%rip), %eax                     #  61    0x36805  6      
  movl %ebx, %ebx                                #  62    0x3680b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3680d  5      
  popq %rbx                                      #  64    0x36812  2      
  movl %eax, %eax                                #  65    0x36814  2      
  movl 0x18(%r15,%rax,1), %eax                   #  66    0x36816  5      
  andl $0xffffffe0, %eax                         #  67    0x3681b  5      
  addq %r15, %rax                                #  68    0x36820  3      
  jmpq %rax                                      #  69    0x36823  2      
  nop                                            #  70    0x36825  1      
.L_368c0:                                        #        0x36826  0      
  nop                                            #  71    0x36826  1      
  nop                                            #  72    0x36827  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36828  5      
  movl %eax, %edi                                #  74    0x3682d  2      
  movl $0x100202c8, %esi                         #  75    0x3682f  5      
  nop                                            #  76    0x36834  1      
  nop                                            #  77    0x36835  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36836  5      
  movl $0x10030d70, %edi                         #  79    0x3683b  5      
  movl %eax, 0xfffa532(%rip)                     #  80    0x36840  6      
  nop                                            #  81    0x36846  1      
  nop                                            #  82    0x36847  1      
  callq .__cxa_guard_release                     #  83    0x36848  5      
  jmpq .L_368a0                                  #  84    0x3684d  5      
  nop                                            #  85    0x36852  1      
  nop                                            #  86    0x36853  1      
.L_36940:                                        #        0x36854  0      
  movl %eax, %ebx                                #  87    0x36854  2      
  movl $0x10030d70, %edi                         #  88    0x36856  5      
  nop                                            #  89    0x3685b  1      
  nop                                            #  90    0x3685c  1      
  callq .__cxa_guard_abort                       #  91    0x3685d  5      
  movl %ebx, %edi                                #  92    0x36862  2      
  nop                                            #  93    0x36864  1      
  nop                                            #  94    0x36865  1      
  callq ._Unwind_Resume                          #  95    0x36866  5      
  jmpq .L_36940                                  #  96    0x3686b  5      
  nop                                            #  97    0x36870  1      
  nop                                            #  98    0x36871  1      
                                                                          
.size _ZNK2pp10InputEvent12GetModifiersEv, .-_ZNK2pp10InputEvent12GetModifiersEv

