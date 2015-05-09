  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x6ae20
#! rip-offset  0x6ae20
#! capacity    192 bytes

# Text                        #  Line  RIP      Bytes  
.strcpy:                      #        0x6ae20  0      
  movl %esi, %esi             #  1     0x6ae20  2      
  movl %edi, %eax             #  2     0x6ae22  2      
  movl %esi, %edi             #  3     0x6ae24  2      
  movq %rsi, %rdx             #  4     0x6ae26  3      
  movq %rax, %rcx             #  5     0x6ae29  3      
  orl %eax, %edi              #  6     0x6ae2c  2      
  andl $0x3, %edi             #  7     0x6ae2e  3      
  jne .L_6aea0                #  8     0x6ae31  6      
  movl %esi, %esi             #  9     0x6ae37  2      
  movl (%r15,%rsi,1), %r8d    #  10    0x6ae39  4      
  movl %r8d, %esi             #  11    0x6ae3d  3      
  nop                         #  12    0x6ae40  1      
  leal -0x1010101(%r8), %edi  #  13    0x6ae41  7      
  notl %esi                   #  14    0x6ae48  2      
  andl %edi, %esi             #  15    0x6ae4a  2      
  andl $0x80808080, %esi      #  16    0x6ae4c  6      
  jne .L_6aea0                #  17    0x6ae52  6      
  nop                         #  18    0x6ae58  1      
.L_6ae60:                     #        0x6ae59  0      
  addl $0x4, %edx             #  19    0x6ae59  3      
  movl %ecx, %ecx             #  20    0x6ae5c  2      
  movl %r8d, (%r15,%rcx,1)    #  21    0x6ae5e  4      
  addl $0x4, %ecx             #  22    0x6ae62  3      
  movl %edx, %edx             #  23    0x6ae65  2      
  movl (%r15,%rdx,1), %r8d    #  24    0x6ae67  4      
  movl %r8d, %r9d             #  25    0x6ae6b  3      
  leal -0x1010101(%r8), %esi  #  26    0x6ae6e  7      
  notl %r9d                   #  27    0x6ae75  3      
  nop                         #  28    0x6ae78  1      
  andl %esi, %r9d             #  29    0x6ae79  3      
  andl $0x80808080, %r9d      #  30    0x6ae7c  7      
  je .L_6ae60                 #  31    0x6ae83  6      
  nop                         #  32    0x6ae89  1      
  nop                         #  33    0x6ae8a  1      
.L_6aea0:                     #        0x6ae8b  0      
  movl %edx, %edx             #  34    0x6ae8b  2      
  movzbl (%r15,%rdx,1), %esi  #  35    0x6ae8d  5      
  addl $0x1, %edx             #  36    0x6ae92  3      
  movl %ecx, %ecx             #  37    0x6ae95  2      
  movb %sil, (%r15,%rcx,1)    #  38    0x6ae97  4      
  addl $0x1, %ecx             #  39    0x6ae9b  3      
  testb %sil, %sil            #  40    0x6ae9e  3      
  jne .L_6aea0                #  41    0x6aea1  6      
  popq %r11                   #  42    0x6aea7  3      
  nop                         #  43    0x6aeaa  1      
  andl $0xffffffe0, %r11d     #  44    0x6aeab  7      
  addq %r15, %r11             #  45    0x6aeb2  3      
  jmpq %r11                   #  46    0x6aeb5  3      
  nop                         #  47    0x6aeb8  1      
  nop                         #  48    0x6aeb9  1      
  nop                         #  49    0x6aeba  1      
  nop                         #  50    0x6aebb  1      
  nop                         #  51    0x6aebc  1      
  nop                         #  52    0x6aebd  1      
  nop                         #  53    0x6aebe  1      
  nop                         #  54    0x6aebf  1      
  nop                         #  55    0x6aec0  1      
  nop                         #  56    0x6aec1  1      
  nop                         #  57    0x6aec2  1      
  nop                         #  58    0x6aec3  1      
  nop                         #  59    0x6aec4  1      
  nop                         #  60    0x6aec5  1      
  nop                         #  61    0x6aec6  1      
  nop                         #  62    0x6aec7  1      
  nop                         #  63    0x6aec8  1      
  nop                         #  64    0x6aec9  1      
  nop                         #  65    0x6aeca  1      
  nop                         #  66    0x6aecb  1      
  nop                         #  67    0x6aecc  1      
  nop                         #  68    0x6aecd  1      
                                                       
.size strcpy, .-strcpy

