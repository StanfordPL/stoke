  .text
  .globl _ZN2pp10InputEventC1Ei
  .type _ZN2pp10InputEventC1Ei, @function

#! file-offset 0x36f00
#! rip-offset  0x36f00
#! capacity    864 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp10InputEventC1Ei:                            #        0x36f00  0      
  pushq %r12                                        #  1     0x36f00  3      
  movl %esi, %r12d                                  #  2     0x36f03  3      
  pushq %rbx                                        #  3     0x36f06  2      
  movl %edi, %ebx                                   #  4     0x36f08  2      
  movl %ebx, %edi                                   #  5     0x36f0a  2      
  subl $0x8, %esp                                   #  6     0x36f0c  3      
  addq %r15, %rsp                                   #  7     0x36f0f  3      
  nop                                               #  8     0x36f12  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x36f13  5      
  movl %ebx, %ebx                                   #  10    0x36f18  2      
  movl $0x10020718, (%r15,%rbx,1)                   #  11    0x36f1a  8      
  cmpb $0x0, 0xfff9e47(%rip)                        #  12    0x36f22  7      
  je .L_36f80                                       #  13    0x36f29  6      
  nop                                               #  14    0x36f2f  1      
.L_36f40:                                           #        0x36f30  0      
  movl 0xfff9e42(%rip), %eax                        #  15    0x36f30  6      
  testq %rax, %rax                                  #  16    0x36f36  3      
  jne .L_37020                                      #  17    0x36f39  6      
  xchgw %ax, %ax                                    #  18    0x36f3f  3      
  nop                                               #  19    0x36f42  1      
.L_36f60:                                           #        0x36f43  0      
  addl $0x8, %esp                                   #  20    0x36f43  3      
  addq %r15, %rsp                                   #  21    0x36f46  3      
  popq %rbx                                         #  22    0x36f49  2      
  popq %r12                                         #  23    0x36f4b  3      
  popq %r11                                         #  24    0x36f4e  3      
  andl $0xffffffe0, %r11d                           #  25    0x36f51  7      
  addq %r15, %r11                                   #  26    0x36f58  3      
  jmpq %r11                                         #  27    0x36f5b  3      
  nop                                               #  28    0x36f5e  1      
.L_36f80:                                           #        0x36f5f  0      
  movl $0x10030d70, %edi                            #  29    0x36f5f  5      
  nop                                               #  30    0x36f64  1      
  nop                                               #  31    0x36f65  1      
  callq .__cxa_guard_acquire                        #  32    0x36f66  5      
  testl %eax, %eax                                  #  33    0x36f6b  2      
  je .L_36f40                                       #  34    0x36f6d  6      
  nop                                               #  35    0x36f73  1      
  nop                                               #  36    0x36f74  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x36f75  5      
  movl %eax, %edi                                   #  38    0x36f7a  2      
  movl $0x100202c8, %esi                            #  39    0x36f7c  5      
  nop                                               #  40    0x36f81  1      
  nop                                               #  41    0x36f82  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x36f83  5      
  movl $0x10030d70, %edi                            #  43    0x36f88  5      
  movl %eax, 0xfff9de5(%rip)                        #  44    0x36f8d  6      
  nop                                               #  45    0x36f93  1      
  nop                                               #  46    0x36f94  1      
  callq .__cxa_guard_release                        #  47    0x36f95  5      
  movl 0xfff9dd8(%rip), %eax                        #  48    0x36f9a  6      
  testq %rax, %rax                                  #  49    0x36fa0  3      
  je .L_36f60                                       #  50    0x36fa3  6      
  xchgw %ax, %ax                                    #  51    0x36fa9  3      
  nop                                               #  52    0x36fac  1      
.L_37020:                                           #        0x36fad  0      
  cmpb $0x0, 0xfff9dbc(%rip)                        #  53    0x36fad  7      
  je .L_370e0                                       #  54    0x36fb4  6      
  nop                                               #  55    0x36fba  1      
  nop                                               #  56    0x36fbb  1      
.L_37040:                                           #        0x36fbc  0      
  movl %eax, %eax                                   #  57    0x36fbc  2      
  movl 0xc(%r15,%rax,1), %eax                       #  58    0x36fbe  5      
  movl %r12d, %edi                                  #  59    0x36fc3  3      
  nop                                               #  60    0x36fc6  1      
  andl $0xffffffe0, %eax                            #  61    0x36fc7  5      
  addq %r15, %rax                                   #  62    0x36fcc  3      
  callq %rax                                        #  63    0x36fcf  2      
  testl %eax, %eax                                  #  64    0x36fd1  2      
  je .L_36f60                                       #  65    0x36fd3  6      
  nop                                               #  66    0x36fd9  1      
  nop                                               #  67    0x36fda  1      
  callq ._ZN2pp6Module3GetEv                        #  68    0x36fdb  5      
  movl %eax, %eax                                   #  69    0x36fe0  2      
  movl %r12d, %edi                                  #  70    0x36fe2  3      
  movl %eax, %eax                                   #  71    0x36fe5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  72    0x36fe7  5      
  movl %eax, %eax                                   #  73    0x36fec  2      
  movl (%r15,%rax,1), %eax                          #  74    0x36fee  4      
  movl %eax, %eax                                   #  75    0x36ff2  2      
  movl (%r15,%rax,1), %eax                          #  76    0x36ff4  4      
  andl $0xffffffe0, %eax                            #  77    0x36ff8  5      
  addq %r15, %rax                                   #  78    0x36ffd  3      
  callq %rax                                        #  79    0x37000  2      
  movl %r12d, %esi                                  #  80    0x37002  3      
  movl %ebx, %edi                                   #  81    0x37005  2      
  nop                                               #  82    0x37007  1      
  nop                                               #  83    0x37008  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  84    0x37009  5      
  addl $0x8, %esp                                   #  85    0x3700e  3      
  addq %r15, %rsp                                   #  86    0x37011  3      
  popq %rbx                                         #  87    0x37014  2      
  popq %r12                                         #  88    0x37016  3      
  popq %r11                                         #  89    0x37019  3      
  andl $0xffffffe0, %r11d                           #  90    0x3701c  7      
  addq %r15, %r11                                   #  91    0x37023  3      
  jmpq %r11                                         #  92    0x37026  3      
  nop                                               #  93    0x37029  1      
.L_370e0:                                           #        0x3702a  0      
  movl $0x10030d70, %edi                            #  94    0x3702a  5      
  nop                                               #  95    0x3702f  1      
  nop                                               #  96    0x37030  1      
  callq .__cxa_guard_acquire                        #  97    0x37031  5      
  testl %eax, %eax                                  #  98    0x37036  2      
  jne .L_37140                                      #  99    0x37038  6      
  nop                                               #  100   0x3703e  1      
  nop                                               #  101   0x3703f  1      
.L_37120:                                           #        0x37040  0      
  movl 0xfff9d32(%rip), %eax                        #  102   0x37040  6      
  jmpq .L_37040                                     #  103   0x37046  5      
  nop                                               #  104   0x3704b  1      
  nop                                               #  105   0x3704c  1      
.L_37140:                                           #        0x3704d  0      
  nop                                               #  106   0x3704d  1      
  nop                                               #  107   0x3704e  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3704f  5      
  movl %eax, %edi                                   #  109   0x37054  2      
  movl $0x100202c8, %esi                            #  110   0x37056  5      
  nop                                               #  111   0x3705b  1      
  nop                                               #  112   0x3705c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3705d  5      
  movl $0x10030d70, %edi                            #  114   0x37062  5      
  movl %eax, 0xfff9d0b(%rip)                        #  115   0x37067  6      
  nop                                               #  116   0x3706d  1      
  nop                                               #  117   0x3706e  1      
  callq .__cxa_guard_release                        #  118   0x3706f  5      
  jmpq .L_37120                                     #  119   0x37074  5      
  nop                                               #  120   0x37079  1      
  nop                                               #  121   0x3707a  1      
.L_371c0:                                           #        0x3707b  0      
  movl $0x10030d70, %edi                            #  122   0x3707b  5      
  movl %eax, %r12d                                  #  123   0x37080  3      
  nop                                               #  124   0x37083  1      
  nop                                               #  125   0x37084  1      
  callq .__cxa_guard_abort                          #  126   0x37085  5      
.L_371e0:                                           #        0x3708a  0      
  movl %ebx, %edi                                   #  127   0x3708a  2      
  nop                                               #  128   0x3708c  1      
  nop                                               #  129   0x3708d  1      
  callq ._ZN2pp8ResourceD2Ev                        #  130   0x3708e  5      
  movl %r12d, %edi                                  #  131   0x37093  3      
  nop                                               #  132   0x37096  1      
  nop                                               #  133   0x37097  1      
  callq ._Unwind_Resume                             #  134   0x37098  5      
  movl %eax, %r12d                                  #  135   0x3709d  3      
  jmpq .L_371e0                                     #  136   0x370a0  5      
  nop                                               #  137   0x370a5  1      
  nop                                               #  138   0x370a6  1      
  jmpq .L_371c0                                     #  139   0x370a7  5      
  nop                                               #  140   0x370ac  1      
  nop                                               #  141   0x370ad  1      
  nop                                               #  142   0x370ae  1      
                                                                             
.size _ZN2pp10InputEventC1Ei, .-_ZN2pp10InputEventC1Ei

