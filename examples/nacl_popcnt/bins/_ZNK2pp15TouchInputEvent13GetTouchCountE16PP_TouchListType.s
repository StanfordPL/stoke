  .text
  .globl _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType
  .type _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType, @function

#! file-offset 0x3aec0
#! rip-offset  0x3aec0
#! capacity    704 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType:  #        0x3aec0  0      
  movq %rbx, -0x10(%rsp)                                      #  1     0x3aec0  5      
  movq %r12, -0x8(%rsp)                                       #  2     0x3aec5  5      
  subl $0x18, %esp                                            #  3     0x3aeca  3      
  addq %r15, %rsp                                             #  4     0x3aecd  3      
  cmpb $0x0, 0xfff5e49(%rip)                                  #  5     0x3aed0  7      
  movl %esi, %r12d                                            #  6     0x3aed7  3      
  movl %edi, %ebx                                             #  7     0x3aeda  2      
  nop                                                         #  8     0x3aedc  1      
  je .L_3af40                                                 #  9     0x3aedd  6      
  nop                                                         #  10    0x3aee3  1      
  nop                                                         #  11    0x3aee4  1      
.L_3af00:                                                     #        0x3aee5  0      
  movl 0xfff5e3d(%rip), %eax                                  #  12    0x3aee5  6      
  testq %rax, %rax                                            #  13    0x3aeeb  3      
  jne .L_3afe0                                                #  14    0x3aeee  6      
  xchgw %ax, %ax                                              #  15    0x3aef4  3      
  nop                                                         #  16    0x3aef7  1      
.L_3af20:                                                     #        0x3aef8  0      
  movq 0x8(%rsp), %rbx                                        #  17    0x3aef8  5      
  movq 0x10(%rsp), %r12                                       #  18    0x3aefd  5      
  addl $0x18, %esp                                            #  19    0x3af02  3      
  addq %r15, %rsp                                             #  20    0x3af05  3      
  popq %r11                                                   #  21    0x3af08  3      
  andl $0xffffffe0, %r11d                                     #  22    0x3af0b  7      
  addq %r15, %r11                                             #  23    0x3af12  3      
  jmpq %r11                                                   #  24    0x3af15  3      
  nop                                                         #  25    0x3af18  1      
.L_3af40:                                                     #        0x3af19  0      
  movl $0x10030d20, %edi                                      #  26    0x3af19  5      
  nop                                                         #  27    0x3af1e  1      
  nop                                                         #  28    0x3af1f  1      
  callq .__cxa_guard_acquire                                  #  29    0x3af20  5      
  testl %eax, %eax                                            #  30    0x3af25  2      
  je .L_3af00                                                 #  31    0x3af27  6      
  nop                                                         #  32    0x3af2d  1      
  nop                                                         #  33    0x3af2e  1      
  callq ._ZN2pp6Module3GetEv                                  #  34    0x3af2f  5      
  movl %eax, %edi                                             #  35    0x3af34  2      
  movl $0x100206d8, %esi                                      #  36    0x3af36  5      
  nop                                                         #  37    0x3af3b  1      
  nop                                                         #  38    0x3af3c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  39    0x3af3d  5      
  movl $0x10030d20, %edi                                      #  40    0x3af42  5      
  movl %eax, 0xfff5ddb(%rip)                                  #  41    0x3af47  6      
  nop                                                         #  42    0x3af4d  1      
  nop                                                         #  43    0x3af4e  1      
  callq .__cxa_guard_release                                  #  44    0x3af4f  5      
  movl 0xfff5dce(%rip), %eax                                  #  45    0x3af54  6      
  testq %rax, %rax                                            #  46    0x3af5a  3      
  je .L_3af20                                                 #  47    0x3af5d  6      
  xchgw %ax, %ax                                              #  48    0x3af63  3      
  nop                                                         #  49    0x3af66  1      
.L_3afe0:                                                     #        0x3af67  0      
  cmpb $0x0, 0xfff5db2(%rip)                                  #  50    0x3af67  7      
  je .L_3b040                                                 #  51    0x3af6e  6      
  nop                                                         #  52    0x3af74  1      
  nop                                                         #  53    0x3af75  1      
.L_3b000:                                                     #        0x3af76  0      
  movl %eax, %eax                                             #  54    0x3af76  2      
  movl 0xc(%r15,%rax,1), %eax                                 #  55    0x3af78  5      
  movl %ebx, %ebx                                             #  56    0x3af7d  2      
  movl 0x4(%r15,%rbx,1), %edi                                 #  57    0x3af7f  5      
  movl %r12d, %esi                                            #  58    0x3af84  3      
  movq 0x8(%rsp), %rbx                                        #  59    0x3af87  5      
  movq 0x10(%rsp), %r12                                       #  60    0x3af8c  5      
  nop                                                         #  61    0x3af91  1      
  addl $0x18, %esp                                            #  62    0x3af92  3      
  addq %r15, %rsp                                             #  63    0x3af95  3      
  andl $0xffffffe0, %eax                                      #  64    0x3af98  5      
  addq %r15, %rax                                             #  65    0x3af9d  3      
  jmpq %rax                                                   #  66    0x3afa0  2      
  nop                                                         #  67    0x3afa2  1      
  nop                                                         #  68    0x3afa3  1      
.L_3b040:                                                     #        0x3afa4  0      
  movl $0x10030d20, %edi                                      #  69    0x3afa4  5      
  nop                                                         #  70    0x3afa9  1      
  nop                                                         #  71    0x3afaa  1      
  callq .__cxa_guard_acquire                                  #  72    0x3afab  5      
  testl %eax, %eax                                            #  73    0x3afb0  2      
  jne .L_3b0a0                                                #  74    0x3afb2  6      
  nop                                                         #  75    0x3afb8  1      
  nop                                                         #  76    0x3afb9  1      
.L_3b080:                                                     #        0x3afba  0      
  movl 0xfff5d68(%rip), %eax                                  #  77    0x3afba  6      
  jmpq .L_3b000                                               #  78    0x3afc0  5      
  nop                                                         #  79    0x3afc5  1      
  nop                                                         #  80    0x3afc6  1      
.L_3b0a0:                                                     #        0x3afc7  0      
  nop                                                         #  81    0x3afc7  1      
  nop                                                         #  82    0x3afc8  1      
  callq ._ZN2pp6Module3GetEv                                  #  83    0x3afc9  5      
  movl %eax, %edi                                             #  84    0x3afce  2      
  movl $0x100206d8, %esi                                      #  85    0x3afd0  5      
  nop                                                         #  86    0x3afd5  1      
  nop                                                         #  87    0x3afd6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  88    0x3afd7  5      
  movl $0x10030d20, %edi                                      #  89    0x3afdc  5      
  movl %eax, 0xfff5d41(%rip)                                  #  90    0x3afe1  6      
  nop                                                         #  91    0x3afe7  1      
  nop                                                         #  92    0x3afe8  1      
  callq .__cxa_guard_release                                  #  93    0x3afe9  5      
  jmpq .L_3b080                                               #  94    0x3afee  5      
  nop                                                         #  95    0x3aff3  1      
  nop                                                         #  96    0x3aff4  1      
.L_3b120:                                                     #        0x3aff5  0      
  movl %eax, %ebx                                             #  97    0x3aff5  2      
  movl $0x10030d20, %edi                                      #  98    0x3aff7  5      
  nop                                                         #  99    0x3affc  1      
  nop                                                         #  100   0x3affd  1      
  callq .__cxa_guard_abort                                    #  101   0x3affe  5      
  movl %ebx, %edi                                             #  102   0x3b003  2      
  nop                                                         #  103   0x3b005  1      
  nop                                                         #  104   0x3b006  1      
  callq ._Unwind_Resume                                       #  105   0x3b007  5      
  jmpq .L_3b120                                               #  106   0x3b00c  5      
  nop                                                         #  107   0x3b011  1      
  nop                                                         #  108   0x3b012  1      
                                                                                       
.size _ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType, .-_ZNK2pp15TouchInputEvent13GetTouchCountE16PP_TouchListType

