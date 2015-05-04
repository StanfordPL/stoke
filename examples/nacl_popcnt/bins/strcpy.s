  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x6aec0
#! rip-offset  0x6aec0
#! capacity    192 bytes

# Text                        #  Line  RIP      Bytes  
.strcpy:                      #        0x6aec0  0      
  movl %esi, %esi             #  1     0x6aec0  2      
  movl %edi, %eax             #  2     0x6aec2  2      
  movl %esi, %edi             #  3     0x6aec4  2      
  movq %rsi, %rdx             #  4     0x6aec6  3      
  movq %rax, %rcx             #  5     0x6aec9  3      
  orl %eax, %edi              #  6     0x6aecc  2      
  andl $0x3, %edi             #  7     0x6aece  3      
  jne .L_6af40                #  8     0x6aed1  6      
  movl %esi, %esi             #  9     0x6aed7  2      
  movl (%r15,%rsi,1), %r8d    #  10    0x6aed9  4      
  movl %r8d, %esi             #  11    0x6aedd  3      
  nop                         #  12    0x6aee0  1      
  leal -0x1010101(%r8), %edi  #  13    0x6aee1  7      
  notl %esi                   #  14    0x6aee8  2      
  andl %edi, %esi             #  15    0x6aeea  2      
  andl $0x80808080, %esi      #  16    0x6aeec  6      
  jne .L_6af40                #  17    0x6aef2  6      
  nop                         #  18    0x6aef8  1      
.L_6af00:                     #        0x6aef9  0      
  addl $0x4, %edx             #  19    0x6aef9  3      
  movl %ecx, %ecx             #  20    0x6aefc  2      
  movl %r8d, (%r15,%rcx,1)    #  21    0x6aefe  4      
  addl $0x4, %ecx             #  22    0x6af02  3      
  movl %edx, %edx             #  23    0x6af05  2      
  movl (%r15,%rdx,1), %r8d    #  24    0x6af07  4      
  movl %r8d, %r9d             #  25    0x6af0b  3      
  leal -0x1010101(%r8), %esi  #  26    0x6af0e  7      
  notl %r9d                   #  27    0x6af15  3      
  nop                         #  28    0x6af18  1      
  andl %esi, %r9d             #  29    0x6af19  3      
  andl $0x80808080, %r9d      #  30    0x6af1c  7      
  je .L_6af00                 #  31    0x6af23  6      
  nop                         #  32    0x6af29  1      
  nop                         #  33    0x6af2a  1      
.L_6af40:                     #        0x6af2b  0      
  movl %edx, %edx             #  34    0x6af2b  2      
  movzbl (%r15,%rdx,1), %esi  #  35    0x6af2d  5      
  addl $0x1, %edx             #  36    0x6af32  3      
  movl %ecx, %ecx             #  37    0x6af35  2      
  movb %sil, (%r15,%rcx,1)    #  38    0x6af37  4      
  addl $0x1, %ecx             #  39    0x6af3b  3      
  testb %sil, %sil            #  40    0x6af3e  3      
  jne .L_6af40                #  41    0x6af41  6      
  popq %r11                   #  42    0x6af47  3      
  nop                         #  43    0x6af4a  1      
  andl $0xffffffe0, %r11d     #  44    0x6af4b  7      
  addq %r15, %r11             #  45    0x6af52  3      
  jmpq %r11                   #  46    0x6af55  3      
  nop                         #  47    0x6af58  1      
  nop                         #  48    0x6af59  1      
  nop                         #  49    0x6af5a  1      
  nop                         #  50    0x6af5b  1      
  nop                         #  51    0x6af5c  1      
  nop                         #  52    0x6af5d  1      
  nop                         #  53    0x6af5e  1      
  nop                         #  54    0x6af5f  1      
  nop                         #  55    0x6af60  1      
  nop                         #  56    0x6af61  1      
  nop                         #  57    0x6af62  1      
  nop                         #  58    0x6af63  1      
  nop                         #  59    0x6af64  1      
  nop                         #  60    0x6af65  1      
  nop                         #  61    0x6af66  1      
  nop                         #  62    0x6af67  1      
  nop                         #  63    0x6af68  1      
  nop                         #  64    0x6af69  1      
  nop                         #  65    0x6af6a  1      
  nop                         #  66    0x6af6b  1      
  nop                         #  67    0x6af6c  1      
  nop                         #  68    0x6af6d  1      
                                                       
.size strcpy, .-strcpy

