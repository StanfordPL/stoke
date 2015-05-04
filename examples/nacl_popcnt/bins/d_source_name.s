  .text
  .globl d_source_name
  .type d_source_name, @function

#! file-offset 0x50860
#! rip-offset  0x50860
#! capacity    480 bytes

# Text                               #  Line  RIP      Bytes  
.d_source_name:                      #        0x50860  0      
  pushq %rbx                         #  1     0x50860  2      
  movl %edi, %ebx                    #  2     0x50862  2      
  movl %ebx, %edi                    #  3     0x50864  2      
  nop                                #  4     0x50866  1      
  nop                                #  5     0x50867  1      
  callq .d_number                    #  6     0x50868  5      
  movl %eax, %edx                    #  7     0x5086d  2      
  xorl %eax, %eax                    #  8     0x5086f  2      
  testl %edx, %edx                   #  9     0x50871  2      
  jle .L_509a0                       #  10    0x50873  6      
  movl %ebx, %ebx                    #  11    0x50879  2      
  movl 0xc(%r15,%rbx,1), %r8d        #  12    0x5087b  5      
  movl %ebx, %ebx                    #  13    0x50880  2      
  movl 0x4(%r15,%rbx,1), %ecx        #  14    0x50882  5      
  subl %r8d, %ecx                    #  15    0x50887  3      
  cmpl %ecx, %edx                    #  16    0x5088a  2      
  nop                                #  17    0x5088c  1      
  jg .L_50980                        #  18    0x5088d  6      
  movl %ebx, %ebx                    #  19    0x50893  2      
  testb $0x4, 0x8(%r15,%rbx,1)       #  20    0x50895  6      
  leal (%rdx,%r8,1), %eax            #  21    0x5089b  4      
  movl %ebx, %ebx                    #  22    0x5089f  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  23    0x508a1  5      
  je .L_508e0                        #  24    0x508a6  6      
  nop                                #  25    0x508ac  1      
  movl %eax, %eax                    #  26    0x508ad  2      
  cmpb $0x24, (%r15,%rax,1)          #  27    0x508af  5      
  je .L_509c0                        #  28    0x508b4  6      
  nop                                #  29    0x508ba  1      
  nop                                #  30    0x508bb  1      
.L_508e0:                            #        0x508bc  0      
  cmpl $0x9, %edx                    #  31    0x508bc  3      
  jle .L_50940                       #  32    0x508bf  6      
  movl $0x10022830, %edi             #  33    0x508c5  5      
  movl $0x8, %ecx                    #  34    0x508ca  5      
  movq %r8, %rsi                     #  35    0x508cf  3      
  movl %esi, %esi                    #  36    0x508d2  2      
  leaq (%r15,%rsi,1), %rsi           #  37    0x508d4  4      
  movl %edi, %edi                    #  38    0x508d8  2      
  leaq (%r15,%rdi,1), %rdi           #  39    0x508da  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  40    0x508de  3      
  movl %esi, %esi                    #  41    0x508e1  2      
  movl %edi, %edi                    #  42    0x508e3  2      
  jne .L_50940                       #  43    0x508e5  6      
  leal 0x8(%r8), %ecx                #  44    0x508eb  4      
  movl %ecx, %ecx                    #  45    0x508ef  2      
  movzbl (%r15,%rcx,1), %eax         #  46    0x508f1  5      
  cmpb $0x5f, %al                    #  47    0x508f6  2      
  je .L_509e0                        #  48    0x508f8  6      
  cmpb $0x2e, %al                    #  49    0x508fe  2      
  nop                                #  50    0x50900  1      
  je .L_509e0                        #  51    0x50901  6      
  cmpb $0x24, %al                    #  52    0x50907  2      
  je .L_509e0                        #  53    0x50909  6      
  nop                                #  54    0x5090f  1      
  nop                                #  55    0x50910  1      
.L_50940:                            #        0x50911  0      
  movl %r8d, %esi                    #  56    0x50911  3      
  movl %ebx, %edi                    #  57    0x50914  2      
  nop                                #  58    0x50916  1      
  nop                                #  59    0x50917  1      
  callq .d_make_name                 #  60    0x50918  5      
  movl %eax, %eax                    #  61    0x5091d  2      
  nop                                #  62    0x5091f  1      
  nop                                #  63    0x50920  1      
.L_50980:                            #        0x50921  0      
  movl %ebx, %ebx                    #  64    0x50921  2      
  movl %eax, 0x2c(%r15,%rbx,1)       #  65    0x50923  5      
  nop                                #  66    0x50928  1      
  nop                                #  67    0x50929  1      
.L_509a0:                            #        0x5092a  0      
  popq %rbx                          #  68    0x5092a  2      
  popq %r11                          #  69    0x5092c  3      
  andl $0xffffffe0, %r11d            #  70    0x5092f  7      
  addq %r15, %r11                    #  71    0x50936  3      
  jmpq %r11                          #  72    0x50939  3      
  nop                                #  73    0x5093c  1      
  nop                                #  74    0x5093d  1      
.L_509c0:                            #        0x5093e  0      
  addl $0x1, %eax                    #  75    0x5093e  3      
  movl %ebx, %ebx                    #  76    0x50941  2      
  movl %eax, 0xc(%r15,%rbx,1)        #  77    0x50943  5      
  jmpq .L_508e0                      #  78    0x50948  5      
  xchgw %ax, %ax                     #  79    0x5094d  3      
  nop                                #  80    0x50950  1      
.L_509e0:                            #        0x50951  0      
  movl %ecx, %ecx                    #  81    0x50951  2      
  cmpb $0x4e, 0x1(%r15,%rcx,1)       #  82    0x50953  6      
  jne .L_50940                       #  83    0x50959  6      
  movl %ebx, %ebx                    #  84    0x5095f  2      
  movl 0x30(%r15,%rbx,1), %eax       #  85    0x50961  5      
  movl $0x10022839, %esi             #  86    0x50966  5      
  movl %ebx, %edi                    #  87    0x5096b  2      
  addl $0x16, %eax                   #  88    0x5096d  3      
  nop                                #  89    0x50970  1      
  subl %edx, %eax                    #  90    0x50971  2      
  movl $0x15, %edx                   #  91    0x50973  5      
  movl %ebx, %ebx                    #  92    0x50978  2      
  movl %eax, 0x30(%r15,%rbx,1)       #  93    0x5097a  5      
  nop                                #  94    0x5097f  1      
  callq .d_make_name                 #  95    0x50980  5      
  movl %eax, %eax                    #  96    0x50985  2      
  jmpq .L_50980                      #  97    0x50987  5      
  nop                                #  98    0x5098c  1      
  nop                                #  99    0x5098d  1      
                                                              
.size d_source_name, .-d_source_name

