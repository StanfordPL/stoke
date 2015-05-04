  .text
  .globl _ZNK2pp18KeyboardInputEvent10GetKeyCodeEv
  .type _ZNK2pp18KeyboardInputEvent10GetKeyCodeEv, @function

#! file-offset 0x3c200
#! rip-offset  0x3c200
#! capacity    896 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent10GetKeyCodeEv:                                       #        0x3c200  0      
  cmpb $0x0, 0xfff4b29(%rip)                                                      #  1     0x3c200  7      
  pushq %rbx                                                                      #  2     0x3c207  2      
  movl %edi, %ebx                                                                 #  3     0x3c209  2      
  je .L_3c3c0                                                                     #  4     0x3c20b  6      
  nop                                                                             #  5     0x3c211  1      
  nop                                                                             #  6     0x3c212  1      
.L_3c220:                                                                         #        0x3c213  0      
  movl 0xfff4b1f(%rip), %eax                                                      #  7     0x3c213  6      
  testq %rax, %rax                                                                #  8     0x3c219  3      
  jne .L_3c360                                                                    #  9     0x3c21c  6      
  cmpb $0x0, 0xfff4b17(%rip)                                                      #  10    0x3c222  7      
  je .L_3c2c0                                                                     #  11    0x3c229  6      
  nop                                                                             #  12    0x3c22f  1      
.L_3c240:                                                                         #        0x3c230  0      
  movl 0xfff4b12(%rip), %edx                                                      #  13    0x3c230  6      
  testl %edx, %edx                                                                #  14    0x3c236  2      
  jne .L_3c260                                                                    #  15    0x3c238  6      
  popq %rbx                                                                       #  16    0x3c23e  2      
  popq %r11                                                                       #  17    0x3c240  3      
  xorl %eax, %eax                                                                 #  18    0x3c243  2      
  andl $0xffffffe0, %r11d                                                         #  19    0x3c245  7      
  addq %r15, %r11                                                                 #  20    0x3c24c  3      
  jmpq %r11                                                                       #  21    0x3c24f  3      
  nop                                                                             #  22    0x3c252  1      
.L_3c260:                                                                         #        0x3c253  0      
  nop                                                                             #  23    0x3c253  1      
  nop                                                                             #  24    0x3c254  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  25    0x3c255  5      
  movl %eax, %eax                                                                 #  26    0x3c25a  2      
  nop                                                                             #  27    0x3c25c  1      
  nop                                                                             #  28    0x3c25d  1      
.L_3c2a0:                                                                         #        0x3c25e  0      
  movl %ebx, %ebx                                                                 #  29    0x3c25e  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  30    0x3c260  5      
  movl %eax, %eax                                                                 #  31    0x3c265  2      
  movl 0x8(%r15,%rax,1), %eax                                                     #  32    0x3c267  5      
  popq %rbx                                                                       #  33    0x3c26c  2      
  andl $0xffffffe0, %eax                                                          #  34    0x3c26e  5      
  addq %r15, %rax                                                                 #  35    0x3c273  3      
  jmpq %rax                                                                       #  36    0x3c276  2      
  nop                                                                             #  37    0x3c278  1      
.L_3c2c0:                                                                         #        0x3c279  0      
  movl $0x10030d40, %edi                                                          #  38    0x3c279  5      
  nop                                                                             #  39    0x3c27e  1      
  nop                                                                             #  40    0x3c27f  1      
  callq .__cxa_guard_acquire                                                      #  41    0x3c280  5      
  testl %eax, %eax                                                                #  42    0x3c285  2      
  je .L_3c240                                                                     #  43    0x3c287  6      
  nop                                                                             #  44    0x3c28d  1      
  nop                                                                             #  45    0x3c28e  1      
  callq ._ZN2pp6Module3GetEv                                                      #  46    0x3c28f  5      
  movl %eax, %edi                                                                 #  47    0x3c294  2      
  movl $0x100206a5, %esi                                                          #  48    0x3c296  5      
  nop                                                                             #  49    0x3c29b  1      
  nop                                                                             #  50    0x3c29c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  51    0x3c29d  5      
  movl $0x10030d40, %edi                                                          #  52    0x3c2a2  5      
  movl %eax, 0xfff4a9b(%rip)                                                      #  53    0x3c2a7  6      
  nop                                                                             #  54    0x3c2ad  1      
  nop                                                                             #  55    0x3c2ae  1      
  callq .__cxa_guard_release                                                      #  56    0x3c2af  5      
  jmpq .L_3c240                                                                   #  57    0x3c2b4  5      
  nop                                                                             #  58    0x3c2b9  1      
  nop                                                                             #  59    0x3c2ba  1      
.L_3c360:                                                                         #        0x3c2bb  0      
  cmpb $0x0, 0xfff4a6e(%rip)                                                      #  60    0x3c2bb  7      
  jne .L_3c2a0                                                                    #  61    0x3c2c2  6      
  movl $0x10030d30, %edi                                                          #  62    0x3c2c8  5      
  nop                                                                             #  63    0x3c2cd  1      
  callq .__cxa_guard_acquire                                                      #  64    0x3c2ce  5      
  testl %eax, %eax                                                                #  65    0x3c2d3  2      
  jne .L_3c460                                                                    #  66    0x3c2d5  6      
  nop                                                                             #  67    0x3c2db  1      
  nop                                                                             #  68    0x3c2dc  1      
.L_3c3a0:                                                                         #        0x3c2dd  0      
  movl 0xfff4a55(%rip), %eax                                                      #  69    0x3c2dd  6      
  movl %ebx, %ebx                                                                 #  70    0x3c2e3  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  71    0x3c2e5  5      
  popq %rbx                                                                       #  72    0x3c2ea  2      
  movl %eax, %eax                                                                 #  73    0x3c2ec  2      
  movl 0x8(%r15,%rax,1), %eax                                                     #  74    0x3c2ee  5      
  andl $0xffffffe0, %eax                                                          #  75    0x3c2f3  5      
  addq %r15, %rax                                                                 #  76    0x3c2f8  3      
  jmpq %rax                                                                       #  77    0x3c2fb  2      
  nop                                                                             #  78    0x3c2fd  1      
.L_3c3c0:                                                                         #        0x3c2fe  0      
  movl $0x10030d30, %edi                                                          #  79    0x3c2fe  5      
  nop                                                                             #  80    0x3c303  1      
  nop                                                                             #  81    0x3c304  1      
  callq .__cxa_guard_acquire                                                      #  82    0x3c305  5      
  testl %eax, %eax                                                                #  83    0x3c30a  2      
  je .L_3c220                                                                     #  84    0x3c30c  6      
  nop                                                                             #  85    0x3c312  1      
  nop                                                                             #  86    0x3c313  1      
  callq ._ZN2pp6Module3GetEv                                                      #  87    0x3c314  5      
  movl %eax, %edi                                                                 #  88    0x3c319  2      
  movl $0x1002068a, %esi                                                          #  89    0x3c31b  5      
  nop                                                                             #  90    0x3c320  1      
  nop                                                                             #  91    0x3c321  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  92    0x3c322  5      
  movl $0x10030d30, %edi                                                          #  93    0x3c327  5      
  movl %eax, 0xfff4a06(%rip)                                                      #  94    0x3c32c  6      
  nop                                                                             #  95    0x3c332  1      
  nop                                                                             #  96    0x3c333  1      
  callq .__cxa_guard_release                                                      #  97    0x3c334  5      
  jmpq .L_3c220                                                                   #  98    0x3c339  5      
  nop                                                                             #  99    0x3c33e  1      
  nop                                                                             #  100   0x3c33f  1      
.L_3c460:                                                                         #        0x3c340  0      
  nop                                                                             #  101   0x3c340  1      
  nop                                                                             #  102   0x3c341  1      
  callq ._ZN2pp6Module3GetEv                                                      #  103   0x3c342  5      
  movl %eax, %edi                                                                 #  104   0x3c347  2      
  movl $0x1002068a, %esi                                                          #  105   0x3c349  5      
  nop                                                                             #  106   0x3c34e  1      
  nop                                                                             #  107   0x3c34f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  108   0x3c350  5      
  movl $0x10030d30, %edi                                                          #  109   0x3c355  5      
  movl %eax, 0xfff49d8(%rip)                                                      #  110   0x3c35a  6      
  nop                                                                             #  111   0x3c360  1      
  nop                                                                             #  112   0x3c361  1      
  callq .__cxa_guard_release                                                      #  113   0x3c362  5      
  jmpq .L_3c3a0                                                                   #  114   0x3c367  5      
  nop                                                                             #  115   0x3c36c  1      
  nop                                                                             #  116   0x3c36d  1      
.L_3c4e0:                                                                         #        0x3c36e  0      
  movl %eax, %ebx                                                                 #  117   0x3c36e  2      
  movl $0x10030d30, %edi                                                          #  118   0x3c370  5      
  nop                                                                             #  119   0x3c375  1      
  nop                                                                             #  120   0x3c376  1      
  callq .__cxa_guard_abort                                                        #  121   0x3c377  5      
  movl %ebx, %edi                                                                 #  122   0x3c37c  2      
  nop                                                                             #  123   0x3c37e  1      
  nop                                                                             #  124   0x3c37f  1      
  callq ._Unwind_Resume                                                           #  125   0x3c380  5      
  jmpq .L_3c4e0                                                                   #  126   0x3c385  5      
  nop                                                                             #  127   0x3c38a  1      
  nop                                                                             #  128   0x3c38b  1      
  movl %eax, %ebx                                                                 #  129   0x3c38c  2      
  movl $0x10030d40, %edi                                                          #  130   0x3c38e  5      
  nop                                                                             #  131   0x3c393  1      
  nop                                                                             #  132   0x3c394  1      
  callq .__cxa_guard_abort                                                        #  133   0x3c395  5      
  movl %ebx, %edi                                                                 #  134   0x3c39a  2      
  nop                                                                             #  135   0x3c39c  1      
  nop                                                                             #  136   0x3c39d  1      
  callq ._Unwind_Resume                                                           #  137   0x3c39e  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent10GetKeyCodeEv, .-_ZNK2pp18KeyboardInputEvent10GetKeyCodeEv

