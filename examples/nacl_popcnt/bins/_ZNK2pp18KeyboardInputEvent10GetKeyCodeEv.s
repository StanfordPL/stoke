  .text
  .globl _ZNK2pp18KeyboardInputEvent10GetKeyCodeEv
  .type _ZNK2pp18KeyboardInputEvent10GetKeyCodeEv, @function

#! file-offset 0x3c180
#! rip-offset  0x3c180
#! capacity    896 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent10GetKeyCodeEv:                                       #        0x3c180  0      
  cmpb $0x0, 0xfff4ba9(%rip)                                                      #  1     0x3c180  7      
  pushq %rbx                                                                      #  2     0x3c187  2      
  movl %edi, %ebx                                                                 #  3     0x3c189  2      
  je .L_3c340                                                                     #  4     0x3c18b  6      
  nop                                                                             #  5     0x3c191  1      
  nop                                                                             #  6     0x3c192  1      
.L_3c1a0:                                                                         #        0x3c193  0      
  movl 0xfff4b9f(%rip), %eax                                                      #  7     0x3c193  6      
  testq %rax, %rax                                                                #  8     0x3c199  3      
  jne .L_3c2e0                                                                    #  9     0x3c19c  6      
  cmpb $0x0, 0xfff4b97(%rip)                                                      #  10    0x3c1a2  7      
  je .L_3c240                                                                     #  11    0x3c1a9  6      
  nop                                                                             #  12    0x3c1af  1      
.L_3c1c0:                                                                         #        0x3c1b0  0      
  movl 0xfff4b92(%rip), %edx                                                      #  13    0x3c1b0  6      
  testl %edx, %edx                                                                #  14    0x3c1b6  2      
  jne .L_3c1e0                                                                    #  15    0x3c1b8  6      
  popq %rbx                                                                       #  16    0x3c1be  2      
  popq %r11                                                                       #  17    0x3c1c0  3      
  xorl %eax, %eax                                                                 #  18    0x3c1c3  2      
  andl $0xffffffe0, %r11d                                                         #  19    0x3c1c5  7      
  addq %r15, %r11                                                                 #  20    0x3c1cc  3      
  jmpq %r11                                                                       #  21    0x3c1cf  3      
  nop                                                                             #  22    0x3c1d2  1      
.L_3c1e0:                                                                         #        0x3c1d3  0      
  nop                                                                             #  23    0x3c1d3  1      
  nop                                                                             #  24    0x3c1d4  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  25    0x3c1d5  5      
  movl %eax, %eax                                                                 #  26    0x3c1da  2      
  nop                                                                             #  27    0x3c1dc  1      
  nop                                                                             #  28    0x3c1dd  1      
.L_3c220:                                                                         #        0x3c1de  0      
  movl %ebx, %ebx                                                                 #  29    0x3c1de  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  30    0x3c1e0  5      
  movl %eax, %eax                                                                 #  31    0x3c1e5  2      
  movl 0x8(%r15,%rax,1), %eax                                                     #  32    0x3c1e7  5      
  popq %rbx                                                                       #  33    0x3c1ec  2      
  andl $0xffffffe0, %eax                                                          #  34    0x3c1ee  5      
  addq %r15, %rax                                                                 #  35    0x3c1f3  3      
  jmpq %rax                                                                       #  36    0x3c1f6  2      
  nop                                                                             #  37    0x3c1f8  1      
.L_3c240:                                                                         #        0x3c1f9  0      
  movl $0x10030d40, %edi                                                          #  38    0x3c1f9  5      
  nop                                                                             #  39    0x3c1fe  1      
  nop                                                                             #  40    0x3c1ff  1      
  callq .__cxa_guard_acquire                                                      #  41    0x3c200  5      
  testl %eax, %eax                                                                #  42    0x3c205  2      
  je .L_3c1c0                                                                     #  43    0x3c207  6      
  nop                                                                             #  44    0x3c20d  1      
  nop                                                                             #  45    0x3c20e  1      
  callq ._ZN2pp6Module3GetEv                                                      #  46    0x3c20f  5      
  movl %eax, %edi                                                                 #  47    0x3c214  2      
  movl $0x100206a5, %esi                                                          #  48    0x3c216  5      
  nop                                                                             #  49    0x3c21b  1      
  nop                                                                             #  50    0x3c21c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  51    0x3c21d  5      
  movl $0x10030d40, %edi                                                          #  52    0x3c222  5      
  movl %eax, 0xfff4b1b(%rip)                                                      #  53    0x3c227  6      
  nop                                                                             #  54    0x3c22d  1      
  nop                                                                             #  55    0x3c22e  1      
  callq .__cxa_guard_release                                                      #  56    0x3c22f  5      
  jmpq .L_3c1c0                                                                   #  57    0x3c234  5      
  nop                                                                             #  58    0x3c239  1      
  nop                                                                             #  59    0x3c23a  1      
.L_3c2e0:                                                                         #        0x3c23b  0      
  cmpb $0x0, 0xfff4aee(%rip)                                                      #  60    0x3c23b  7      
  jne .L_3c220                                                                    #  61    0x3c242  6      
  movl $0x10030d30, %edi                                                          #  62    0x3c248  5      
  nop                                                                             #  63    0x3c24d  1      
  callq .__cxa_guard_acquire                                                      #  64    0x3c24e  5      
  testl %eax, %eax                                                                #  65    0x3c253  2      
  jne .L_3c3e0                                                                    #  66    0x3c255  6      
  nop                                                                             #  67    0x3c25b  1      
  nop                                                                             #  68    0x3c25c  1      
.L_3c320:                                                                         #        0x3c25d  0      
  movl 0xfff4ad5(%rip), %eax                                                      #  69    0x3c25d  6      
  movl %ebx, %ebx                                                                 #  70    0x3c263  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  71    0x3c265  5      
  popq %rbx                                                                       #  72    0x3c26a  2      
  movl %eax, %eax                                                                 #  73    0x3c26c  2      
  movl 0x8(%r15,%rax,1), %eax                                                     #  74    0x3c26e  5      
  andl $0xffffffe0, %eax                                                          #  75    0x3c273  5      
  addq %r15, %rax                                                                 #  76    0x3c278  3      
  jmpq %rax                                                                       #  77    0x3c27b  2      
  nop                                                                             #  78    0x3c27d  1      
.L_3c340:                                                                         #        0x3c27e  0      
  movl $0x10030d30, %edi                                                          #  79    0x3c27e  5      
  nop                                                                             #  80    0x3c283  1      
  nop                                                                             #  81    0x3c284  1      
  callq .__cxa_guard_acquire                                                      #  82    0x3c285  5      
  testl %eax, %eax                                                                #  83    0x3c28a  2      
  je .L_3c1a0                                                                     #  84    0x3c28c  6      
  nop                                                                             #  85    0x3c292  1      
  nop                                                                             #  86    0x3c293  1      
  callq ._ZN2pp6Module3GetEv                                                      #  87    0x3c294  5      
  movl %eax, %edi                                                                 #  88    0x3c299  2      
  movl $0x1002068a, %esi                                                          #  89    0x3c29b  5      
  nop                                                                             #  90    0x3c2a0  1      
  nop                                                                             #  91    0x3c2a1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  92    0x3c2a2  5      
  movl $0x10030d30, %edi                                                          #  93    0x3c2a7  5      
  movl %eax, 0xfff4a86(%rip)                                                      #  94    0x3c2ac  6      
  nop                                                                             #  95    0x3c2b2  1      
  nop                                                                             #  96    0x3c2b3  1      
  callq .__cxa_guard_release                                                      #  97    0x3c2b4  5      
  jmpq .L_3c1a0                                                                   #  98    0x3c2b9  5      
  nop                                                                             #  99    0x3c2be  1      
  nop                                                                             #  100   0x3c2bf  1      
.L_3c3e0:                                                                         #        0x3c2c0  0      
  nop                                                                             #  101   0x3c2c0  1      
  nop                                                                             #  102   0x3c2c1  1      
  callq ._ZN2pp6Module3GetEv                                                      #  103   0x3c2c2  5      
  movl %eax, %edi                                                                 #  104   0x3c2c7  2      
  movl $0x1002068a, %esi                                                          #  105   0x3c2c9  5      
  nop                                                                             #  106   0x3c2ce  1      
  nop                                                                             #  107   0x3c2cf  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  108   0x3c2d0  5      
  movl $0x10030d30, %edi                                                          #  109   0x3c2d5  5      
  movl %eax, 0xfff4a58(%rip)                                                      #  110   0x3c2da  6      
  nop                                                                             #  111   0x3c2e0  1      
  nop                                                                             #  112   0x3c2e1  1      
  callq .__cxa_guard_release                                                      #  113   0x3c2e2  5      
  jmpq .L_3c320                                                                   #  114   0x3c2e7  5      
  nop                                                                             #  115   0x3c2ec  1      
  nop                                                                             #  116   0x3c2ed  1      
.L_3c460:                                                                         #        0x3c2ee  0      
  movl %eax, %ebx                                                                 #  117   0x3c2ee  2      
  movl $0x10030d30, %edi                                                          #  118   0x3c2f0  5      
  nop                                                                             #  119   0x3c2f5  1      
  nop                                                                             #  120   0x3c2f6  1      
  callq .__cxa_guard_abort                                                        #  121   0x3c2f7  5      
  movl %ebx, %edi                                                                 #  122   0x3c2fc  2      
  nop                                                                             #  123   0x3c2fe  1      
  nop                                                                             #  124   0x3c2ff  1      
  callq ._Unwind_Resume                                                           #  125   0x3c300  5      
  jmpq .L_3c460                                                                   #  126   0x3c305  5      
  nop                                                                             #  127   0x3c30a  1      
  nop                                                                             #  128   0x3c30b  1      
  movl %eax, %ebx                                                                 #  129   0x3c30c  2      
  movl $0x10030d40, %edi                                                          #  130   0x3c30e  5      
  nop                                                                             #  131   0x3c313  1      
  nop                                                                             #  132   0x3c314  1      
  callq .__cxa_guard_abort                                                        #  133   0x3c315  5      
  movl %ebx, %edi                                                                 #  134   0x3c31a  2      
  nop                                                                             #  135   0x3c31c  1      
  nop                                                                             #  136   0x3c31d  1      
  callq ._Unwind_Resume                                                           #  137   0x3c31e  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent10GetKeyCodeEv, .-_ZNK2pp18KeyboardInputEvent10GetKeyCodeEv

