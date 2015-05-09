  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE, @function

#! file-offset 0x22fa0
#! rip-offset  0x22fa0
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE:  #        0x22fa0  0      
  pushq %r12                                        #  1     0x22fa0  3      
  movl %edi, %r12d                                  #  2     0x22fa3  3      
  pushq %rbx                                        #  3     0x22fa6  2      
  movl %esi, %ebx                                   #  4     0x22fa8  2      
  subl $0x8, %esp                                   #  5     0x22faa  3      
  addq %r15, %rsp                                   #  6     0x22fad  3      
  cmpb $0x0, 0x1000dc91(%rip)                       #  7     0x22fb0  7      
  je .L_23000                                       #  8     0x22fb7  6      
  nop                                               #  9     0x22fbd  1      
.L_22fc0:                                           #        0x22fbe  0      
  movl 0x1000dc8c(%rip), %edx                       #  10    0x22fbe  6      
  xorl %eax, %eax                                   #  11    0x22fc4  2      
  testq %rdx, %rdx                                  #  12    0x22fc6  3      
  jne .L_230a0                                      #  13    0x22fc9  6      
  nop                                               #  14    0x22fcf  1      
.L_22fe0:                                           #        0x22fd0  0      
  addl $0x8, %esp                                   #  15    0x22fd0  3      
  addq %r15, %rsp                                   #  16    0x22fd3  3      
  popq %rbx                                         #  17    0x22fd6  2      
  popq %r12                                         #  18    0x22fd8  3      
  popq %r11                                         #  19    0x22fdb  3      
  andl $0xffffffe0, %r11d                           #  20    0x22fde  7      
  addq %r15, %r11                                   #  21    0x22fe5  3      
  jmpq %r11                                         #  22    0x22fe8  3      
  nop                                               #  23    0x22feb  1      
.L_23000:                                           #        0x22fec  0      
  movl $0x10030c48, %edi                            #  24    0x22fec  5      
  nop                                               #  25    0x22ff1  1      
  nop                                               #  26    0x22ff2  1      
  callq .__cxa_guard_acquire                        #  27    0x22ff3  5      
  testl %eax, %eax                                  #  28    0x22ff8  2      
  je .L_22fc0                                       #  29    0x22ffa  6      
  nop                                               #  30    0x23000  1      
  nop                                               #  31    0x23001  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x23002  5      
  movl %eax, %edi                                   #  33    0x23007  2      
  movl $0x100202ed, %esi                            #  34    0x23009  5      
  nop                                               #  35    0x2300e  1      
  nop                                               #  36    0x2300f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x23010  5      
  movl $0x10030c48, %edi                            #  38    0x23015  5      
  movl %eax, 0x1000dc30(%rip)                       #  39    0x2301a  6      
  nop                                               #  40    0x23020  1      
  nop                                               #  41    0x23021  1      
  callq .__cxa_guard_release                        #  42    0x23022  5      
  movl 0x1000dc23(%rip), %edx                       #  43    0x23027  6      
  xorl %eax, %eax                                   #  44    0x2302d  2      
  testq %rdx, %rdx                                  #  45    0x2302f  3      
  je .L_22fe0                                       #  46    0x23032  6      
  nop                                               #  47    0x23038  1      
.L_230a0:                                           #        0x23039  0      
  cmpb $0x0, 0x1000dc08(%rip)                       #  48    0x23039  7      
  je .L_23100                                       #  49    0x23040  6      
  nop                                               #  50    0x23046  1      
  nop                                               #  51    0x23047  1      
.L_230c0:                                           #        0x23048  0      
  movl %edx, %edx                                   #  52    0x23048  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x2304a  4      
  movl %ebx, %ebx                                   #  54    0x2304e  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x23050  5      
  movl %r12d, %r12d                                 #  56    0x23055  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x23058  5      
  nop                                               #  58    0x2305d  1      
  andl $0xffffffe0, %eax                            #  59    0x2305e  5      
  addq %r15, %rax                                   #  60    0x23063  3      
  callq %rax                                        #  61    0x23066  2      
  testl %eax, %eax                                  #  62    0x23068  2      
  setne %al                                         #  63    0x2306a  3      
  addl $0x8, %esp                                   #  64    0x2306d  3      
  addq %r15, %rsp                                   #  65    0x23070  3      
  popq %rbx                                         #  66    0x23073  2      
  popq %r12                                         #  67    0x23075  3      
  popq %r11                                         #  68    0x23078  3      
  andl $0xffffffe0, %r11d                           #  69    0x2307b  7      
  addq %r15, %r11                                   #  70    0x23082  3      
  jmpq %r11                                         #  71    0x23085  3      
  nop                                               #  72    0x23088  1      
.L_23100:                                           #        0x23089  0      
  movl $0x10030c48, %edi                            #  73    0x23089  5      
  nop                                               #  74    0x2308e  1      
  nop                                               #  75    0x2308f  1      
  callq .__cxa_guard_acquire                        #  76    0x23090  5      
  testl %eax, %eax                                  #  77    0x23095  2      
  jne .L_23160                                      #  78    0x23097  6      
  nop                                               #  79    0x2309d  1      
  nop                                               #  80    0x2309e  1      
.L_23140:                                           #        0x2309f  0      
  movl 0x1000dbab(%rip), %edx                       #  81    0x2309f  6      
  jmpq .L_230c0                                     #  82    0x230a5  5      
  nop                                               #  83    0x230aa  1      
  nop                                               #  84    0x230ab  1      
.L_23160:                                           #        0x230ac  0      
  nop                                               #  85    0x230ac  1      
  nop                                               #  86    0x230ad  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x230ae  5      
  movl %eax, %edi                                   #  88    0x230b3  2      
  movl $0x100202ed, %esi                            #  89    0x230b5  5      
  nop                                               #  90    0x230ba  1      
  nop                                               #  91    0x230bb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x230bc  5      
  movl $0x10030c48, %edi                            #  93    0x230c1  5      
  movl %eax, 0x1000db84(%rip)                       #  94    0x230c6  6      
  nop                                               #  95    0x230cc  1      
  nop                                               #  96    0x230cd  1      
  callq .__cxa_guard_release                        #  97    0x230ce  5      
  jmpq .L_23140                                     #  98    0x230d3  5      
  nop                                               #  99    0x230d8  1      
  nop                                               #  100   0x230d9  1      
.L_231e0:                                           #        0x230da  0      
  movl %eax, %ebx                                   #  101   0x230da  2      
  movl $0x10030c48, %edi                            #  102   0x230dc  5      
  nop                                               #  103   0x230e1  1      
  nop                                               #  104   0x230e2  1      
  callq .__cxa_guard_abort                          #  105   0x230e3  5      
  movl %ebx, %edi                                   #  106   0x230e8  2      
  nop                                               #  107   0x230ea  1      
  nop                                               #  108   0x230eb  1      
  callq ._Unwind_Resume                             #  109   0x230ec  5      
  jmpq .L_231e0                                     #  110   0x230f1  5      
  nop                                               #  111   0x230f6  1      
  nop                                               #  112   0x230f7  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE, .-_ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE

