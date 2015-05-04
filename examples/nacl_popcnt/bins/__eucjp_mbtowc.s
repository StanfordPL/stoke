  .text
  .globl __eucjp_mbtowc
  .type __eucjp_mbtowc, @function

#! file-offset 0x7de40
#! rip-offset  0x7de40
#! capacity    640 bytes

# Text                           #  Line  RIP      Bytes  
.__eucjp_mbtowc:                 #        0x7de40  0      
  movl %esi, %esi                #  1     0x7de40  2      
  leal -0x4(%rsp), %eax          #  2     0x7de42  4      
  movl %edx, %edx                #  3     0x7de46  2      
  testq %rsi, %rsi               #  4     0x7de48  3      
  movl %edi, %edi                #  5     0x7de4b  2      
  movl %r9d, %r9d                #  6     0x7de4d  3      
  cmoveq %rax, %rsi              #  7     0x7de50  4      
  xorl %eax, %eax                #  8     0x7de54  2      
  testq %rdx, %rdx               #  9     0x7de56  3      
  jne .L_7de80                   #  10    0x7de59  6      
  nop                            #  11    0x7de5f  1      
.L_7de60:                        #        0x7de60  0      
  popq %r11                      #  12    0x7de60  3      
  andl $0xffffffe0, %r11d        #  13    0x7de63  7      
  addq %r15, %r11                #  14    0x7de6a  3      
  jmpq %r11                      #  15    0x7de6d  3      
  nop                            #  16    0x7de70  1      
  nop                            #  17    0x7de71  1      
.L_7de80:                        #        0x7de72  0      
  testl %ecx, %ecx               #  18    0x7de72  2      
  je .L_7df80                    #  19    0x7de74  6      
  movl %edx, %edx                #  20    0x7de7a  2      
  movzbl (%r15,%rdx,1), %r10d    #  21    0x7de7c  5      
  movl %r9d, %r9d                #  22    0x7de81  3      
  movl (%r15,%r9,1), %eax        #  23    0x7de84  4      
  testl %eax, %eax               #  24    0x7de88  2      
  movzbl %r10b, %r8d             #  25    0x7de8a  4      
  nop                            #  26    0x7de8e  1      
  jne .L_7dfa0                   #  27    0x7de8f  6      
  leal -0xa1(%r8), %eax          #  28    0x7de95  7      
  cmpl $0x5d, %eax               #  29    0x7de9c  3      
  jbe .L_7dee0                   #  30    0x7de9f  6      
  leal -0x8e(%r8), %eax          #  31    0x7dea5  7      
  cmpl $0x1, %eax                #  32    0x7deac  3      
  nop                            #  33    0x7deaf  1      
  ja .L_7dfc0                    #  34    0x7deb0  6      
  nop                            #  35    0x7deb6  1      
  nop                            #  36    0x7deb7  1      
.L_7dee0:                        #        0x7deb8  0      
  cmpl $0x1, %ecx                #  37    0x7deb8  3      
  movl %r9d, %r9d                #  38    0x7debb  3      
  movb %r10b, 0x4(%r15,%r9,1)    #  39    0x7debe  5      
  movl %r9d, %r9d                #  40    0x7dec3  3      
  movl $0x1, (%r15,%r9,1)        #  41    0x7dec6  8      
  jbe .L_7df80                   #  42    0x7dece  6      
  nop                            #  43    0x7ded4  1      
  movl %edx, %edx                #  44    0x7ded5  2      
  movzbl 0x1(%r15,%rdx,1), %r8d  #  45    0x7ded7  6      
  movl $0x2, %eax                #  46    0x7dedd  5      
  nop                            #  47    0x7dee2  1      
  nop                            #  48    0x7dee3  1      
.L_7df20:                        #        0x7dee4  0      
  leal -0xa1(%r8), %r10d         #  49    0x7dee4  7      
  cmpl $0x5d, %r10d              #  50    0x7deeb  4      
  ja .L_7e060                    #  51    0x7deef  6      
  movl %r9d, %r9d                #  52    0x7def5  3      
  movzbl 0x4(%r15,%r9,1), %r10d  #  53    0x7def8  6      
  cmpb $0x8f, %r10b              #  54    0x7defe  4      
  xchgw %ax, %ax                 #  55    0x7df02  3      
  je .L_7e080                    #  56    0x7df05  6      
  movzbl %r10b, %edx             #  57    0x7df0b  4      
  movl %r9d, %r9d                #  58    0x7df0f  3      
  movl $0x0, (%r15,%r9,1)        #  59    0x7df12  8      
  shll $0x8, %edx                #  60    0x7df1a  3      
  leal (%r8,%rdx,1), %edx        #  61    0x7df1d  4      
  nop                            #  62    0x7df21  1      
  movl %esi, %esi                #  63    0x7df22  2      
  movl %edx, (%r15,%rsi,1)       #  64    0x7df24  4      
  popq %r11                      #  65    0x7df28  3      
  andl $0xffffffe0, %r11d        #  66    0x7df2b  7      
  addq %r15, %r11                #  67    0x7df32  3      
  jmpq %r11                      #  68    0x7df35  3      
  nop                            #  69    0x7df38  1      
.L_7df80:                        #        0x7df39  0      
  movl $0xfffffffe, %eax         #  70    0x7df39  5      
  jmpq .L_7de60                  #  71    0x7df3e  5      
  nop                            #  72    0x7df43  1      
  nop                            #  73    0x7df44  1      
.L_7dfa0:                        #        0x7df45  0      
  cmpl $0x1, %eax                #  74    0x7df45  3      
  je .L_7df20                    #  75    0x7df48  6      
  cmpl $0x2, %eax                #  76    0x7df4e  3      
  je .L_7dfe0                    #  77    0x7df51  6      
  nop                            #  78    0x7df57  1      
  nop                            #  79    0x7df58  1      
.L_7dfc0:                        #        0x7df59  0      
  xorl %eax, %eax                #  80    0x7df59  2      
  movl %esi, %esi                #  81    0x7df5b  2      
  movl %r8d, (%r15,%rsi,1)       #  82    0x7df5d  4      
  movl %edx, %edx                #  83    0x7df61  2      
  cmpb $0x0, (%r15,%rdx,1)       #  84    0x7df63  5      
  setne %al                      #  85    0x7df68  3      
  popq %r11                      #  86    0x7df6b  3      
  andl $0xffffffe0, %r11d        #  87    0x7df6e  7      
  addq %r15, %r11                #  88    0x7df75  3      
  jmpq %r11                      #  89    0x7df78  3      
  xchgw %ax, %ax                 #  90    0x7df7b  3      
.L_7dfe0:                        #        0x7df7e  0      
  movb $0x1, %al                 #  91    0x7df7e  2      
  nop                            #  92    0x7df80  1      
  nop                            #  93    0x7df81  1      
.L_7e000:                        #        0x7df82  0      
  leal -0xa1(%r8), %edx          #  94    0x7df82  7      
  cmpl $0x5d, %edx               #  95    0x7df89  3      
  ja .L_7e060                    #  96    0x7df8c  6      
  movl %r9d, %r9d                #  97    0x7df92  3      
  movzbl 0x5(%r15,%r9,1), %edx   #  98    0x7df95  6      
  andl $0x7f, %r8d               #  99    0x7df9b  4      
  nop                            #  100   0x7df9f  1      
  movl %r9d, %r9d                #  101   0x7dfa0  3      
  movl $0x0, (%r15,%r9,1)        #  102   0x7dfa3  8      
  shll $0x8, %edx                #  103   0x7dfab  3      
  leal (%r8,%rdx,1), %edx        #  104   0x7dfae  4      
  movl %esi, %esi                #  105   0x7dfb2  2      
  movl %edx, (%r15,%rsi,1)       #  106   0x7dfb4  4      
  popq %r11                      #  107   0x7dfb8  3      
  nop                            #  108   0x7dfbb  1      
  andl $0xffffffe0, %r11d        #  109   0x7dfbc  7      
  addq %r15, %r11                #  110   0x7dfc3  3      
  jmpq %r11                      #  111   0x7dfc6  3      
  nop                            #  112   0x7dfc9  1      
  nop                            #  113   0x7dfca  1      
.L_7e060:                        #        0x7dfcb  0      
  movl %edi, %edi                #  114   0x7dfcb  2      
  movl $0x54, (%r15,%rdi,1)      #  115   0x7dfcd  8      
  movl $0xffffffff, %eax         #  116   0x7dfd5  5      
  popq %r11                      #  117   0x7dfda  3      
  andl $0xffffffe0, %r11d        #  118   0x7dfdd  7      
  addq %r15, %r11                #  119   0x7dfe4  3      
  jmpq %r11                      #  120   0x7dfe7  3      
  nop                            #  121   0x7dfea  1      
.L_7e080:                        #        0x7dfeb  0      
  cmpl %eax, %ecx                #  122   0x7dfeb  2      
  movl %r9d, %r9d                #  123   0x7dfed  3      
  movb %r8b, 0x5(%r15,%r9,1)     #  124   0x7dff0  5      
  movl %r9d, %r9d                #  125   0x7dff5  3      
  movl $0x2, (%r15,%r9,1)        #  126   0x7dff8  8      
  jbe .L_7df80                   #  127   0x7e000  6      
  leal (%rax,%rdx,1), %edx       #  128   0x7e006  3      
  xchgw %ax, %ax                 #  129   0x7e009  3      
  addl $0x1, %eax                #  130   0x7e00c  3      
  movl %edx, %edx                #  131   0x7e00f  2      
  movzbl (%r15,%rdx,1), %r8d     #  132   0x7e011  5      
  jmpq .L_7e000                  #  133   0x7e016  5      
  xchgw %ax, %ax                 #  134   0x7e01b  3      
  nop                            #  135   0x7e01e  1      
                                                          
.size __eucjp_mbtowc, .-__eucjp_mbtowc

