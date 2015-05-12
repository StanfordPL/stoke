  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x6ae40
#! rip-offset  0x6ae40
#! capacity    192 bytes

# Text                        #  Line  RIP      Bytes  
.strcpy:                      #        0x6ae40  0      
  movl %esi, %esi             #  1     0x6ae40  2      
  movl %edi, %eax             #  2     0x6ae42  2      
  movl %esi, %edi             #  3     0x6ae44  2      
  movq %rsi, %rdx             #  4     0x6ae46  3      
  movq %rax, %rcx             #  5     0x6ae49  3      
  orl %eax, %edi              #  6     0x6ae4c  2      
  andl $0x3, %edi             #  7     0x6ae4e  3      
  jne .L_6aec0                #  8     0x6ae51  6      
  movl %esi, %esi             #  9     0x6ae57  2      
  movl (%r15,%rsi,1), %r8d    #  10    0x6ae59  4      
  movl %r8d, %esi             #  11    0x6ae5d  3      
  nop                         #  12    0x6ae60  1      
  leal -0x1010101(%r8), %edi  #  13    0x6ae61  7      
  notl %esi                   #  14    0x6ae68  2      
  andl %edi, %esi             #  15    0x6ae6a  2      
  andl $0x80808080, %esi      #  16    0x6ae6c  6      
  jne .L_6aec0                #  17    0x6ae72  6      
  nop                         #  18    0x6ae78  1      
.L_6ae80:                     #        0x6ae79  0      
  addl $0x4, %edx             #  19    0x6ae79  3      
  movl %ecx, %ecx             #  20    0x6ae7c  2      
  movl %r8d, (%r15,%rcx,1)    #  21    0x6ae7e  4      
  addl $0x4, %ecx             #  22    0x6ae82  3      
  movl %edx, %edx             #  23    0x6ae85  2      
  movl (%r15,%rdx,1), %r8d    #  24    0x6ae87  4      
  movl %r8d, %r9d             #  25    0x6ae8b  3      
  leal -0x1010101(%r8), %esi  #  26    0x6ae8e  7      
  notl %r9d                   #  27    0x6ae95  3      
  nop                         #  28    0x6ae98  1      
  andl %esi, %r9d             #  29    0x6ae99  3      
  andl $0x80808080, %r9d      #  30    0x6ae9c  7      
  je .L_6ae80                 #  31    0x6aea3  6      
  nop                         #  32    0x6aea9  1      
  nop                         #  33    0x6aeaa  1      
.L_6aec0:                     #        0x6aeab  0      
  movl %edx, %edx             #  34    0x6aeab  2      
  movzbl (%r15,%rdx,1), %esi  #  35    0x6aead  5      
  addl $0x1, %edx             #  36    0x6aeb2  3      
  movl %ecx, %ecx             #  37    0x6aeb5  2      
  movb %sil, (%r15,%rcx,1)    #  38    0x6aeb7  4      
  addl $0x1, %ecx             #  39    0x6aebb  3      
  testb %sil, %sil            #  40    0x6aebe  3      
  jne .L_6aec0                #  41    0x6aec1  6      
  popq %r11                   #  42    0x6aec7  3      
  nop                         #  43    0x6aeca  1      
  andl $0xffffffe0, %r11d     #  44    0x6aecb  7      
  addq %r15, %r11             #  45    0x6aed2  3      
  jmpq %r11                   #  46    0x6aed5  3      
  nop                         #  47    0x6aed8  1      
  nop                         #  48    0x6aed9  1      
  nop                         #  49    0x6aeda  1      
  nop                         #  50    0x6aedb  1      
  nop                         #  51    0x6aedc  1      
  nop                         #  52    0x6aedd  1      
  nop                         #  53    0x6aede  1      
  nop                         #  54    0x6aedf  1      
  nop                         #  55    0x6aee0  1      
  nop                         #  56    0x6aee1  1      
  nop                         #  57    0x6aee2  1      
  nop                         #  58    0x6aee3  1      
  nop                         #  59    0x6aee4  1      
  nop                         #  60    0x6aee5  1      
  nop                         #  61    0x6aee6  1      
  nop                         #  62    0x6aee7  1      
  nop                         #  63    0x6aee8  1      
  nop                         #  64    0x6aee9  1      
  nop                         #  65    0x6aeea  1      
  nop                         #  66    0x6aeeb  1      
  nop                         #  67    0x6aeec  1      
  nop                         #  68    0x6aeed  1      
                                                       
.size strcpy, .-strcpy

