  .text
  .globl _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv
  .type _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv, @function

#! file-offset 0x3c6a0
#! rip-offset  0x3c6a0
#! capacity    992 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent16GetCharacterTextEv:                                 #        0x3c6a0  0      
  pushq %r12                                                                      #  1     0x3c6a0  3      
  movl %esi, %r12d                                                                #  2     0x3c6a3  3      
  pushq %rbx                                                                      #  3     0x3c6a6  2      
  movl %edi, %ebx                                                                 #  4     0x3c6a8  2      
  subl $0x38, %esp                                                                #  5     0x3c6aa  3      
  addq %r15, %rsp                                                                 #  6     0x3c6ad  3      
  cmpb $0x0, 0xfff4679(%rip)                                                      #  7     0x3c6b0  7      
  je .L_3c8c0                                                                     #  8     0x3c6b7  6      
  nop                                                                             #  9     0x3c6bd  1      
.L_3c6c0:                                                                         #        0x3c6be  0      
  movl 0xfff4674(%rip), %eax                                                      #  10    0x3c6be  6      
  testq %rax, %rax                                                                #  11    0x3c6c4  3      
  jne .L_3c860                                                                    #  12    0x3c6c7  6      
  cmpb $0x0, 0xfff466c(%rip)                                                      #  13    0x3c6cd  7      
  je .L_3c7c0                                                                     #  14    0x3c6d4  6      
  nop                                                                             #  15    0x3c6da  1      
.L_3c6e0:                                                                         #        0x3c6db  0      
  movl 0xfff4667(%rip), %ecx                                                      #  16    0x3c6db  6      
  testl %ecx, %ecx                                                                #  17    0x3c6e1  2      
  jne .L_3c720                                                                    #  18    0x3c6e3  6      
  movl %ebx, %edi                                                                 #  19    0x3c6e9  2      
  nop                                                                             #  20    0x3c6eb  1      
  callq ._ZN2pp3VarC1Ev                                                           #  21    0x3c6ec  5      
  addl $0x38, %esp                                                                #  22    0x3c6f1  3      
  addq %r15, %rsp                                                                 #  23    0x3c6f4  3      
  movl %ebx, %eax                                                                 #  24    0x3c6f7  2      
  popq %rbx                                                                       #  25    0x3c6f9  2      
  popq %r12                                                                       #  26    0x3c6fb  3      
  popq %r11                                                                       #  27    0x3c6fe  3      
  andl $0xffffffe0, %r11d                                                         #  28    0x3c701  7      
  addq %r15, %r11                                                                 #  29    0x3c708  3      
  jmpq %r11                                                                       #  30    0x3c70b  3      
  nop                                                                             #  31    0x3c70e  1      
.L_3c720:                                                                         #        0x3c70f  0      
  nop                                                                             #  32    0x3c70f  1      
  nop                                                                             #  33    0x3c710  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  34    0x3c711  5      
  movl %eax, %eax                                                                 #  35    0x3c716  2      
  nop                                                                             #  36    0x3c718  1      
  nop                                                                             #  37    0x3c719  1      
.L_3c760:                                                                         #        0x3c71a  0      
  movl %eax, %eax                                                                 #  38    0x3c71a  2      
  movl 0xc(%r15,%rax,1), %eax                                                     #  39    0x3c71c  5      
  movl %r12d, %r12d                                                               #  40    0x3c721  3      
  movl 0x4(%r15,%r12,1), %edi                                                     #  41    0x3c724  5      
  nop                                                                             #  42    0x3c729  1      
  andl $0xffffffe0, %eax                                                          #  43    0x3c72a  5      
  addq %r15, %rax                                                                 #  44    0x3c72f  3      
  callq %rax                                                                      #  45    0x3c732  2      
  movl %ebx, %ebx                                                                 #  46    0x3c734  2      
  movl $0x100205f8, (%r15,%rbx,1)                                                 #  47    0x3c736  8      
  movl %ebx, %ebx                                                                 #  48    0x3c73e  2      
  movq %rdx, 0x10(%r15,%rbx,1)                                                    #  49    0x3c740  5      
  movl %ebx, %ebx                                                                 #  50    0x3c745  2      
  movb $0x1, 0x18(%r15,%rbx,1)                                                    #  51    0x3c747  6      
  movl %ebx, %ebx                                                                 #  52    0x3c74d  2      
  movq %rax, 0x8(%r15,%rbx,1)                                                     #  53    0x3c74f  5      
  addl $0x38, %esp                                                                #  54    0x3c754  3      
  addq %r15, %rsp                                                                 #  55    0x3c757  3      
  movl %ebx, %eax                                                                 #  56    0x3c75a  2      
  popq %rbx                                                                       #  57    0x3c75c  2      
  popq %r12                                                                       #  58    0x3c75e  3      
  popq %r11                                                                       #  59    0x3c761  3      
  andl $0xffffffe0, %r11d                                                         #  60    0x3c764  7      
  addq %r15, %r11                                                                 #  61    0x3c76b  3      
  jmpq %r11                                                                       #  62    0x3c76e  3      
  nop                                                                             #  63    0x3c771  1      
.L_3c7c0:                                                                         #        0x3c772  0      
  movl $0x10030d40, %edi                                                          #  64    0x3c772  5      
  nop                                                                             #  65    0x3c777  1      
  nop                                                                             #  66    0x3c778  1      
  callq .__cxa_guard_acquire                                                      #  67    0x3c779  5      
  testl %eax, %eax                                                                #  68    0x3c77e  2      
  je .L_3c6e0                                                                     #  69    0x3c780  6      
  nop                                                                             #  70    0x3c786  1      
  nop                                                                             #  71    0x3c787  1      
  callq ._ZN2pp6Module3GetEv                                                      #  72    0x3c788  5      
  movl %eax, %edi                                                                 #  73    0x3c78d  2      
  movl $0x100206a5, %esi                                                          #  74    0x3c78f  5      
  nop                                                                             #  75    0x3c794  1      
  nop                                                                             #  76    0x3c795  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  77    0x3c796  5      
  movl $0x10030d40, %edi                                                          #  78    0x3c79b  5      
  movl %eax, 0xfff45a2(%rip)                                                      #  79    0x3c7a0  6      
  nop                                                                             #  80    0x3c7a6  1      
  nop                                                                             #  81    0x3c7a7  1      
  callq .__cxa_guard_release                                                      #  82    0x3c7a8  5      
  jmpq .L_3c6e0                                                                   #  83    0x3c7ad  5      
  nop                                                                             #  84    0x3c7b2  1      
  nop                                                                             #  85    0x3c7b3  1      
.L_3c860:                                                                         #        0x3c7b4  0      
  cmpb $0x0, 0xfff4575(%rip)                                                      #  86    0x3c7b4  7      
  jne .L_3c760                                                                    #  87    0x3c7bb  6      
  movl $0x10030d30, %edi                                                          #  88    0x3c7c1  5      
  nop                                                                             #  89    0x3c7c6  1      
  callq .__cxa_guard_acquire                                                      #  90    0x3c7c7  5      
  testl %eax, %eax                                                                #  91    0x3c7cc  2      
  jne .L_3c960                                                                    #  92    0x3c7ce  6      
  nop                                                                             #  93    0x3c7d4  1      
  nop                                                                             #  94    0x3c7d5  1      
.L_3c8a0:                                                                         #        0x3c7d6  0      
  movl 0xfff455c(%rip), %eax                                                      #  95    0x3c7d6  6      
  jmpq .L_3c760                                                                   #  96    0x3c7dc  5      
  nop                                                                             #  97    0x3c7e1  1      
  nop                                                                             #  98    0x3c7e2  1      
.L_3c8c0:                                                                         #        0x3c7e3  0      
  movl $0x10030d30, %edi                                                          #  99    0x3c7e3  5      
  nop                                                                             #  100   0x3c7e8  1      
  nop                                                                             #  101   0x3c7e9  1      
  callq .__cxa_guard_acquire                                                      #  102   0x3c7ea  5      
  testl %eax, %eax                                                                #  103   0x3c7ef  2      
  je .L_3c6c0                                                                     #  104   0x3c7f1  6      
  nop                                                                             #  105   0x3c7f7  1      
  nop                                                                             #  106   0x3c7f8  1      
  callq ._ZN2pp6Module3GetEv                                                      #  107   0x3c7f9  5      
  movl %eax, %edi                                                                 #  108   0x3c7fe  2      
  movl $0x1002068a, %esi                                                          #  109   0x3c800  5      
  nop                                                                             #  110   0x3c805  1      
  nop                                                                             #  111   0x3c806  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  112   0x3c807  5      
  movl $0x10030d30, %edi                                                          #  113   0x3c80c  5      
  movl %eax, 0xfff4521(%rip)                                                      #  114   0x3c811  6      
  nop                                                                             #  115   0x3c817  1      
  nop                                                                             #  116   0x3c818  1      
  callq .__cxa_guard_release                                                      #  117   0x3c819  5      
  jmpq .L_3c6c0                                                                   #  118   0x3c81e  5      
  nop                                                                             #  119   0x3c823  1      
  nop                                                                             #  120   0x3c824  1      
.L_3c960:                                                                         #        0x3c825  0      
  nop                                                                             #  121   0x3c825  1      
  nop                                                                             #  122   0x3c826  1      
  callq ._ZN2pp6Module3GetEv                                                      #  123   0x3c827  5      
  movl %eax, %edi                                                                 #  124   0x3c82c  2      
  movl $0x1002068a, %esi                                                          #  125   0x3c82e  5      
  nop                                                                             #  126   0x3c833  1      
  nop                                                                             #  127   0x3c834  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  128   0x3c835  5      
  movl $0x10030d30, %edi                                                          #  129   0x3c83a  5      
  movl %eax, 0xfff44f3(%rip)                                                      #  130   0x3c83f  6      
  nop                                                                             #  131   0x3c845  1      
  nop                                                                             #  132   0x3c846  1      
  callq .__cxa_guard_release                                                      #  133   0x3c847  5      
  jmpq .L_3c8a0                                                                   #  134   0x3c84c  5      
  nop                                                                             #  135   0x3c851  1      
  nop                                                                             #  136   0x3c852  1      
.L_3c9e0:                                                                         #        0x3c853  0      
  movl %eax, %ebx                                                                 #  137   0x3c853  2      
  movl $0x10030d30, %edi                                                          #  138   0x3c855  5      
  nop                                                                             #  139   0x3c85a  1      
  nop                                                                             #  140   0x3c85b  1      
  callq .__cxa_guard_abort                                                        #  141   0x3c85c  5      
  movl %ebx, %edi                                                                 #  142   0x3c861  2      
  nop                                                                             #  143   0x3c863  1      
  nop                                                                             #  144   0x3c864  1      
  callq ._Unwind_Resume                                                           #  145   0x3c865  5      
  jmpq .L_3c9e0                                                                   #  146   0x3c86a  5      
  nop                                                                             #  147   0x3c86f  1      
  nop                                                                             #  148   0x3c870  1      
  movl %eax, %ebx                                                                 #  149   0x3c871  2      
  movl $0x10030d40, %edi                                                          #  150   0x3c873  5      
  nop                                                                             #  151   0x3c878  1      
  nop                                                                             #  152   0x3c879  1      
  callq .__cxa_guard_abort                                                        #  153   0x3c87a  5      
  movl %ebx, %edi                                                                 #  154   0x3c87f  2      
  nop                                                                             #  155   0x3c881  1      
  nop                                                                             #  156   0x3c882  1      
  callq ._Unwind_Resume                                                           #  157   0x3c883  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv, .-_ZNK2pp18KeyboardInputEvent16GetCharacterTextEv

