  .text
  .globl _ZNKSs7compareERKSs
  .type _ZNKSs7compareERKSs, @function

#! file-offset 0x45720
#! rip-offset  0x45720
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs7compareERKSs:                #        0x45720  0      
  movl %esi, %eax                    #  1     0x45720  2      
  movl %edi, %edi                    #  2     0x45722  2      
  movl %edi, %edi                    #  3     0x45724  2      
  movl (%r15,%rdi,1), %esi           #  4     0x45726  4      
  movl %eax, %eax                    #  5     0x4572a  2      
  movl (%r15,%rax,1), %edi           #  6     0x4572c  4      
  popq %r11                          #  7     0x45730  3      
  leal -0xc(%rsi), %edx              #  8     0x45733  3      
  leal -0xc(%rdi), %eax              #  9     0x45736  3      
  movl %edx, %edx                    #  10    0x45739  2      
  movl (%r15,%rdx,1), %r8d           #  11    0x4573b  4      
  xchgw %ax, %ax                     #  12    0x4573f  3      
  movl %eax, %eax                    #  13    0x45742  2      
  movl (%r15,%rax,1), %edx           #  14    0x45744  4      
  movl %r8d, %ecx                    #  15    0x45748  3      
  cmpl %r8d, %edx                    #  16    0x4574b  3      
  cmovbel %edx, %ecx                 #  17    0x4574e  3      
  movl %ecx, %ecx                    #  18    0x45751  2      
  cmpq %rcx, %rcx                    #  19    0x45753  3      
  nop                                #  20    0x45756  1      
  movl %esi, %esi                    #  21    0x45757  2      
  leaq (%r15,%rsi,1), %rsi           #  22    0x45759  4      
  movl %edi, %edi                    #  23    0x4575d  2      
  leaq (%r15,%rdi,1), %rdi           #  24    0x4575f  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  25    0x45763  3      
  movl %esi, %esi                    #  26    0x45766  2      
  movl %edi, %edi                    #  27    0x45768  2      
  seta %al                           #  28    0x4576a  3      
  setb %cl                           #  29    0x4576d  3      
  subl %edx, %r8d                    #  30    0x45770  3      
  subb %cl, %al                      #  31    0x45773  2      
  movsbl %al, %eax                   #  32    0x45775  3      
  testl %eax, %eax                   #  33    0x45778  2      
  cmovel %r8d, %eax                  #  34    0x4577a  4      
  andl $0xffffffe0, %r11d            #  35    0x4577e  7      
  addq %r15, %r11                    #  36    0x45785  3      
  jmpq %r11                          #  37    0x45788  3      
  nop                                #  38    0x4578b  1      
  nop                                #  39    0x4578c  1      
  nop                                #  40    0x4578d  1      
  nop                                #  41    0x4578e  1      
  nop                                #  42    0x4578f  1      
  nop                                #  43    0x45790  1      
  nop                                #  44    0x45791  1      
  nop                                #  45    0x45792  1      
  nop                                #  46    0x45793  1      
  nop                                #  47    0x45794  1      
  nop                                #  48    0x45795  1      
  nop                                #  49    0x45796  1      
  nop                                #  50    0x45797  1      
  nop                                #  51    0x45798  1      
  nop                                #  52    0x45799  1      
  nop                                #  53    0x4579a  1      
                                                              
.size _ZNKSs7compareERKSs, .-_ZNKSs7compareERKSs

