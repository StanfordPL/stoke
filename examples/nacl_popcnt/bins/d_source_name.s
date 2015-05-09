  .text
  .globl d_source_name
  .type d_source_name, @function

#! file-offset 0x507c0
#! rip-offset  0x507c0
#! capacity    480 bytes

# Text                               #  Line  RIP      Bytes  
.d_source_name:                      #        0x507c0  0      
  pushq %rbx                         #  1     0x507c0  2      
  movl %edi, %ebx                    #  2     0x507c2  2      
  movl %ebx, %edi                    #  3     0x507c4  2      
  nop                                #  4     0x507c6  1      
  nop                                #  5     0x507c7  1      
  callq .d_number                    #  6     0x507c8  5      
  movl %eax, %edx                    #  7     0x507cd  2      
  xorl %eax, %eax                    #  8     0x507cf  2      
  testl %edx, %edx                   #  9     0x507d1  2      
  jle .L_50900                       #  10    0x507d3  6      
  movl %ebx, %ebx                    #  11    0x507d9  2      
  movl 0xc(%r15,%rbx,1), %r8d        #  12    0x507db  5      
  movl %ebx, %ebx                    #  13    0x507e0  2      
  movl 0x4(%r15,%rbx,1), %ecx        #  14    0x507e2  5      
  subl %r8d, %ecx                    #  15    0x507e7  3      
  cmpl %ecx, %edx                    #  16    0x507ea  2      
  nop                                #  17    0x507ec  1      
  jg .L_508e0                        #  18    0x507ed  6      
  movl %ebx, %ebx                    #  19    0x507f3  2      
  testb $0x4, 0x8(%r15,%rbx,1)       #  20    0x507f5  6      
  leal (%rdx,%r8,1), %eax            #  21    0x507fb  4      
  movl %ebx, %ebx                    #  22    0x507ff  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  23    0x50801  5      
  je .L_50840                        #  24    0x50806  6      
  nop                                #  25    0x5080c  1      
  movl %eax, %eax                    #  26    0x5080d  2      
  cmpb $0x24, (%r15,%rax,1)          #  27    0x5080f  5      
  je .L_50920                        #  28    0x50814  6      
  nop                                #  29    0x5081a  1      
  nop                                #  30    0x5081b  1      
.L_50840:                            #        0x5081c  0      
  cmpl $0x9, %edx                    #  31    0x5081c  3      
  jle .L_508a0                       #  32    0x5081f  6      
  movl $0x10022830, %edi             #  33    0x50825  5      
  movl $0x8, %ecx                    #  34    0x5082a  5      
  movq %r8, %rsi                     #  35    0x5082f  3      
  movl %esi, %esi                    #  36    0x50832  2      
  leaq (%r15,%rsi,1), %rsi           #  37    0x50834  4      
  movl %edi, %edi                    #  38    0x50838  2      
  leaq (%r15,%rdi,1), %rdi           #  39    0x5083a  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  40    0x5083e  3      
  movl %esi, %esi                    #  41    0x50841  2      
  movl %edi, %edi                    #  42    0x50843  2      
  jne .L_508a0                       #  43    0x50845  6      
  leal 0x8(%r8), %ecx                #  44    0x5084b  4      
  movl %ecx, %ecx                    #  45    0x5084f  2      
  movzbl (%r15,%rcx,1), %eax         #  46    0x50851  5      
  cmpb $0x5f, %al                    #  47    0x50856  2      
  je .L_50940                        #  48    0x50858  6      
  cmpb $0x2e, %al                    #  49    0x5085e  2      
  nop                                #  50    0x50860  1      
  je .L_50940                        #  51    0x50861  6      
  cmpb $0x24, %al                    #  52    0x50867  2      
  je .L_50940                        #  53    0x50869  6      
  nop                                #  54    0x5086f  1      
  nop                                #  55    0x50870  1      
.L_508a0:                            #        0x50871  0      
  movl %r8d, %esi                    #  56    0x50871  3      
  movl %ebx, %edi                    #  57    0x50874  2      
  nop                                #  58    0x50876  1      
  nop                                #  59    0x50877  1      
  callq .d_make_name                 #  60    0x50878  5      
  movl %eax, %eax                    #  61    0x5087d  2      
  nop                                #  62    0x5087f  1      
  nop                                #  63    0x50880  1      
.L_508e0:                            #        0x50881  0      
  movl %ebx, %ebx                    #  64    0x50881  2      
  movl %eax, 0x2c(%r15,%rbx,1)       #  65    0x50883  5      
  nop                                #  66    0x50888  1      
  nop                                #  67    0x50889  1      
.L_50900:                            #        0x5088a  0      
  popq %rbx                          #  68    0x5088a  2      
  popq %r11                          #  69    0x5088c  3      
  andl $0xffffffe0, %r11d            #  70    0x5088f  7      
  addq %r15, %r11                    #  71    0x50896  3      
  jmpq %r11                          #  72    0x50899  3      
  nop                                #  73    0x5089c  1      
  nop                                #  74    0x5089d  1      
.L_50920:                            #        0x5089e  0      
  addl $0x1, %eax                    #  75    0x5089e  3      
  movl %ebx, %ebx                    #  76    0x508a1  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  77    0x508a3  5      
  jmpq .L_50840                      #  78    0x508a8  5      
  xchgw %ax, %ax                     #  79    0x508ad  3      
  nop                                #  80    0x508b0  1      
.L_50940:                            #        0x508b1  0      
  movl %ecx, %ecx                    #  81    0x508b1  2      
  cmpb $0x4e, 0x1(%r15,%rcx,1)       #  82    0x508b3  6      
  jne .L_508a0                       #  83    0x508b9  6      
  movl %ebx, %ebx                    #  84    0x508bf  2      
  movl 0x30(%r15,%rbx,1), %eax       #  85    0x508c1  5      
  movl $0x10022839, %esi             #  86    0x508c6  5      
  movl %ebx, %edi                    #  87    0x508cb  2      
  addl $0x16, %eax                   #  88    0x508cd  3      
  nop                                #  89    0x508d0  1      
  subl %edx, %eax                    #  90    0x508d1  2      
  movl $0x15, %edx                   #  91    0x508d3  5      
  movl %ebx, %ebx                    #  92    0x508d8  2      
  movl %eax, 0x30(%r15,%rbx,1)       #  93    0x508da  5      
  nop                                #  94    0x508df  1      
  callq .d_make_name                 #  95    0x508e0  5      
  movl %eax, %eax                    #  96    0x508e5  2      
  jmpq .L_508e0                      #  97    0x508e7  5      
  nop                                #  98    0x508ec  1      
  nop                                #  99    0x508ed  1      
                                                              
.size d_source_name, .-d_source_name

