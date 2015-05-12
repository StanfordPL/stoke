  .text
  .globl d_source_name
  .type d_source_name, @function

#! file-offset 0x507e0
#! rip-offset  0x507e0
#! capacity    480 bytes

# Text                               #  Line  RIP      Bytes  
.d_source_name:                      #        0x507e0  0      
  pushq %rbx                         #  1     0x507e0  2      
  movl %edi, %ebx                    #  2     0x507e2  2      
  movl %ebx, %edi                    #  3     0x507e4  2      
  nop                                #  4     0x507e6  1      
  nop                                #  5     0x507e7  1      
  callq .d_number                    #  6     0x507e8  5      
  movl %eax, %edx                    #  7     0x507ed  2      
  xorl %eax, %eax                    #  8     0x507ef  2      
  testl %edx, %edx                   #  9     0x507f1  2      
  jle .L_50920                       #  10    0x507f3  6      
  movl %ebx, %ebx                    #  11    0x507f9  2      
  movl 0xc(%r15,%rbx,1), %r8d        #  12    0x507fb  5      
  movl %ebx, %ebx                    #  13    0x50800  2      
  movl 0x4(%r15,%rbx,1), %ecx        #  14    0x50802  5      
  subl %r8d, %ecx                    #  15    0x50807  3      
  cmpl %ecx, %edx                    #  16    0x5080a  2      
  nop                                #  17    0x5080c  1      
  jg .L_50900                        #  18    0x5080d  6      
  movl %ebx, %ebx                    #  19    0x50813  2      
  testb $0x4, 0x8(%r15,%rbx,1)       #  20    0x50815  6      
  leal (%rdx,%r8,1), %eax            #  21    0x5081b  4      
  movl %ebx, %ebx                    #  22    0x5081f  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  23    0x50821  5      
  je .L_50860                        #  24    0x50826  6      
  nop                                #  25    0x5082c  1      
  movl %eax, %eax                    #  26    0x5082d  2      
  cmpb $0x24, (%r15,%rax,1)          #  27    0x5082f  5      
  je .L_50940                        #  28    0x50834  6      
  nop                                #  29    0x5083a  1      
  nop                                #  30    0x5083b  1      
.L_50860:                            #        0x5083c  0      
  cmpl $0x9, %edx                    #  31    0x5083c  3      
  jle .L_508c0                       #  32    0x5083f  6      
  movl $0x10022830, %edi             #  33    0x50845  5      
  movl $0x8, %ecx                    #  34    0x5084a  5      
  movq %r8, %rsi                     #  35    0x5084f  3      
  movl %esi, %esi                    #  36    0x50852  2      
  leaq (%r15,%rsi,1), %rsi           #  37    0x50854  4      
  movl %edi, %edi                    #  38    0x50858  2      
  leaq (%r15,%rdi,1), %rdi           #  39    0x5085a  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  40    0x5085e  3      
  movl %esi, %esi                    #  41    0x50861  2      
  movl %edi, %edi                    #  42    0x50863  2      
  jne .L_508c0                       #  43    0x50865  6      
  leal 0x8(%r8), %ecx                #  44    0x5086b  4      
  movl %ecx, %ecx                    #  45    0x5086f  2      
  movzbl (%r15,%rcx,1), %eax         #  46    0x50871  5      
  cmpb $0x5f, %al                    #  47    0x50876  2      
  je .L_50960                        #  48    0x50878  6      
  cmpb $0x2e, %al                    #  49    0x5087e  2      
  nop                                #  50    0x50880  1      
  je .L_50960                        #  51    0x50881  6      
  cmpb $0x24, %al                    #  52    0x50887  2      
  je .L_50960                        #  53    0x50889  6      
  nop                                #  54    0x5088f  1      
  nop                                #  55    0x50890  1      
.L_508c0:                            #        0x50891  0      
  movl %r8d, %esi                    #  56    0x50891  3      
  movl %ebx, %edi                    #  57    0x50894  2      
  nop                                #  58    0x50896  1      
  nop                                #  59    0x50897  1      
  callq .d_make_name                 #  60    0x50898  5      
  movl %eax, %eax                    #  61    0x5089d  2      
  nop                                #  62    0x5089f  1      
  nop                                #  63    0x508a0  1      
.L_50900:                            #        0x508a1  0      
  movl %ebx, %ebx                    #  64    0x508a1  2      
  movl %eax, 0x2c(%r15,%rbx,1)       #  65    0x508a3  5      
  nop                                #  66    0x508a8  1      
  nop                                #  67    0x508a9  1      
.L_50920:                            #        0x508aa  0      
  popq %rbx                          #  68    0x508aa  2      
  popq %r11                          #  69    0x508ac  3      
  andl $0xffffffe0, %r11d            #  70    0x508af  7      
  addq %r15, %r11                    #  71    0x508b6  3      
  jmpq %r11                          #  72    0x508b9  3      
  nop                                #  73    0x508bc  1      
  nop                                #  74    0x508bd  1      
.L_50940:                            #        0x508be  0      
  addl $0x1, %eax                    #  75    0x508be  3      
  movl %ebx, %ebx                    #  76    0x508c1  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  77    0x508c3  5      
  jmpq .L_50860                      #  78    0x508c8  5      
  xchgw %ax, %ax                     #  79    0x508cd  3      
  nop                                #  80    0x508d0  1      
.L_50960:                            #        0x508d1  0      
  movl %ecx, %ecx                    #  81    0x508d1  2      
  cmpb $0x4e, 0x1(%r15,%rcx,1)       #  82    0x508d3  6      
  jne .L_508c0                       #  83    0x508d9  6      
  movl %ebx, %ebx                    #  84    0x508df  2      
  movl 0x30(%r15,%rbx,1), %eax       #  85    0x508e1  5      
  movl $0x10022839, %esi             #  86    0x508e6  5      
  movl %ebx, %edi                    #  87    0x508eb  2      
  addl $0x16, %eax                   #  88    0x508ed  3      
  nop                                #  89    0x508f0  1      
  subl %edx, %eax                    #  90    0x508f1  2      
  movl $0x15, %edx                   #  91    0x508f3  5      
  movl %ebx, %ebx                    #  92    0x508f8  2      
  movl %eax, 0x30(%r15,%rbx,1)       #  93    0x508fa  5      
  nop                                #  94    0x508ff  1      
  callq .d_make_name                 #  95    0x50900  5      
  movl %eax, %eax                    #  96    0x50905  2      
  jmpq .L_50900                      #  97    0x50907  5      
  nop                                #  98    0x5090c  1      
  nop                                #  99    0x5090d  1      
                                                              
.size d_source_name, .-d_source_name

