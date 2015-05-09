  .text
  .globl _ZNKSs7compareERKSs
  .type _ZNKSs7compareERKSs, @function

#! file-offset 0x45700
#! rip-offset  0x45700
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs7compareERKSs:                #        0x45700  0      
  movl %esi, %eax                    #  1     0x45700  2      
  movl %edi, %edi                    #  2     0x45702  2      
  movl %edi, %edi                    #  3     0x45704  2      
  movl (%r15,%rdi,1), %esi           #  4     0x45706  4      
  movl %eax, %eax                    #  5     0x4570a  2      
  movl (%r15,%rax,1), %edi           #  6     0x4570c  4      
  popq %r11                          #  7     0x45710  3      
  leal -0xc(%rsi), %edx              #  8     0x45713  3      
  leal -0xc(%rdi), %eax              #  9     0x45716  3      
  movl %edx, %edx                    #  10    0x45719  2      
  movl (%r15,%rdx,1), %r8d           #  11    0x4571b  4      
  xchgw %ax, %ax                     #  12    0x4571f  3      
  movl %eax, %eax                    #  13    0x45722  2      
  movl (%r15,%rax,1), %edx           #  14    0x45724  4      
  movl %r8d, %ecx                    #  15    0x45728  3      
  cmpl %r8d, %edx                    #  16    0x4572b  3      
  cmovbel %edx, %ecx                 #  17    0x4572e  3      
  movl %ecx, %ecx                    #  18    0x45731  2      
  cmpq %rcx, %rcx                    #  19    0x45733  3      
  nop                                #  20    0x45736  1      
  movl %esi, %esi                    #  21    0x45737  2      
  leaq (%r15,%rsi,1), %rsi           #  22    0x45739  4      
  movl %edi, %edi                    #  23    0x4573d  2      
  leaq (%r15,%rdi,1), %rdi           #  24    0x4573f  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  25    0x45743  3      
  movl %esi, %esi                    #  26    0x45746  2      
  movl %edi, %edi                    #  27    0x45748  2      
  seta %al                           #  28    0x4574a  3      
  setb %cl                           #  29    0x4574d  3      
  subl %edx, %r8d                    #  30    0x45750  3      
  subb %cl, %al                      #  31    0x45753  2      
  movsbl %al, %eax                   #  32    0x45755  3      
  testl %eax, %eax                   #  33    0x45758  2      
  cmovel %r8d, %eax                  #  34    0x4575a  4      
  andl $0xffffffe0, %r11d            #  35    0x4575e  7      
  addq %r15, %r11                    #  36    0x45765  3      
  jmpq %r11                          #  37    0x45768  3      
  nop                                #  38    0x4576b  1      
  nop                                #  39    0x4576c  1      
  nop                                #  40    0x4576d  1      
  nop                                #  41    0x4576e  1      
  nop                                #  42    0x4576f  1      
  nop                                #  43    0x45770  1      
  nop                                #  44    0x45771  1      
  nop                                #  45    0x45772  1      
  nop                                #  46    0x45773  1      
  nop                                #  47    0x45774  1      
  nop                                #  48    0x45775  1      
  nop                                #  49    0x45776  1      
  nop                                #  50    0x45777  1      
  nop                                #  51    0x45778  1      
  nop                                #  52    0x45779  1      
  nop                                #  53    0x4577a  1      
                                                              
.size _ZNKSs7compareERKSs, .-_ZNKSs7compareERKSs

