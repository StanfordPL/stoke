  .text
  .globl _ZNSdD2Ev
  .type _ZNSdD2Ev, @function

#! file-offset 0x13ad40
#! rip-offset  0xfad40
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNSdD2Ev:                     #        0xfad40  0      OPC=0     
  movl %esi, %esi               #  1     0xfad40  2      OPC=1157  
  movl %edi, %edi               #  2     0xfad42  2      OPC=1157  
  movl %esi, %esi               #  3     0xfad44  2      OPC=1157  
  movl (%r15,%rsi,1), %eax      #  4     0xfad46  4      OPC=1156  
  movl %esi, %esi               #  5     0xfad4a  2      OPC=1157  
  movl 0x14(%r15,%rsi,1), %edx  #  6     0xfad4c  5      OPC=1156  
  subl $0xc, %eax               #  7     0xfad51  3      OPC=2384  
  movl %eax, %eax               #  8     0xfad54  2      OPC=1157  
  movl (%r15,%rax,1), %eax      #  9     0xfad56  4      OPC=1156  
  addl %edi, %eax               #  10    0xfad5a  2      OPC=67    
  nop                           #  11    0xfad5c  1      OPC=1343  
  nop                           #  12    0xfad5d  1      OPC=1343  
  nop                           #  13    0xfad5e  1      OPC=1343  
  nop                           #  14    0xfad5f  1      OPC=1343  
  movl %eax, %eax               #  15    0xfad60  2      OPC=1157  
  movl %edx, (%r15,%rax,1)      #  16    0xfad62  4      OPC=1136  
  movl %esi, %esi               #  17    0xfad66  2      OPC=1157  
  movl 0x18(%r15,%rsi,1), %eax  #  18    0xfad68  5      OPC=1156  
  leal 0x8(%rdi), %edx          #  19    0xfad6d  3      OPC=1066  
  movl %edi, %edi               #  20    0xfad70  2      OPC=1157  
  movl %eax, 0x8(%r15,%rdi,1)   #  21    0xfad72  5      OPC=1136  
  leal 0xc(%rsi), %eax          #  22    0xfad77  3      OPC=1066  
  addl $0x4, %esi               #  23    0xfad7a  3      OPC=65    
  nop                           #  24    0xfad7d  1      OPC=1343  
  nop                           #  25    0xfad7e  1      OPC=1343  
  nop                           #  26    0xfad7f  1      OPC=1343  
  movl %eax, %eax               #  27    0xfad80  2      OPC=1157  
  movl (%r15,%rax,1), %ecx      #  28    0xfad82  4      OPC=1156  
  movl %eax, %eax               #  29    0xfad86  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax   #  30    0xfad88  5      OPC=1156  
  movl %edx, %edx               #  31    0xfad8d  2      OPC=1157  
  movl %ecx, (%r15,%rdx,1)      #  32    0xfad8f  4      OPC=1136  
  subl $0xc, %ecx               #  33    0xfad93  3      OPC=2384  
  movl %ecx, %ecx               #  34    0xfad96  2      OPC=1157  
  addl (%r15,%rcx,1), %edx      #  35    0xfad98  4      OPC=66    
  nop                           #  36    0xfad9c  1      OPC=1343  
  nop                           #  37    0xfad9d  1      OPC=1343  
  nop                           #  38    0xfad9e  1      OPC=1343  
  nop                           #  39    0xfad9f  1      OPC=1343  
  movl %edx, %edx               #  40    0xfada0  2      OPC=1157  
  movl %eax, (%r15,%rdx,1)      #  41    0xfada2  4      OPC=1136  
  movl %esi, %esi               #  42    0xfada6  2      OPC=1157  
  movl (%r15,%rsi,1), %eax      #  43    0xfada8  4      OPC=1156  
  movl %esi, %esi               #  44    0xfadac  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %edx   #  45    0xfadae  5      OPC=1156  
  movl %edi, %edi               #  46    0xfadb3  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)      #  47    0xfadb5  4      OPC=1136  
  subl $0xc, %eax               #  48    0xfadb9  3      OPC=2384  
  nop                           #  49    0xfadbc  1      OPC=1343  
  nop                           #  50    0xfadbd  1      OPC=1343  
  nop                           #  51    0xfadbe  1      OPC=1343  
  nop                           #  52    0xfadbf  1      OPC=1343  
  movl %eax, %eax               #  53    0xfadc0  2      OPC=1157  
  movl (%r15,%rax,1), %eax      #  54    0xfadc2  4      OPC=1156  
  movl %edi, %edi               #  55    0xfadc6  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rdi,1)   #  56    0xfadc8  9      OPC=1135  
  addl %edi, %eax               #  57    0xfadd1  2      OPC=67    
  movl %eax, %eax               #  58    0xfadd3  2      OPC=1157  
  movl %edx, (%r15,%rax,1)      #  59    0xfadd5  4      OPC=1136  
  popq %r11                     #  60    0xfadd9  2      OPC=1694  
  nop                           #  61    0xfaddb  1      OPC=1343  
  nop                           #  62    0xfaddc  1      OPC=1343  
  nop                           #  63    0xfaddd  1      OPC=1343  
  nop                           #  64    0xfadde  1      OPC=1343  
  nop                           #  65    0xfaddf  1      OPC=1343  
  andl $0xffffffe0, %r11d       #  66    0xfade0  7      OPC=131   
  nop                           #  67    0xfade7  1      OPC=1343  
  nop                           #  68    0xfade8  1      OPC=1343  
  nop                           #  69    0xfade9  1      OPC=1343  
  nop                           #  70    0xfadea  1      OPC=1343  
  addq %r15, %r11               #  71    0xfadeb  3      OPC=72    
  jmpq %r11                     #  72    0xfadee  3      OPC=928   
  nop                           #  73    0xfadf1  1      OPC=1343  
  nop                           #  74    0xfadf2  1      OPC=1343  
  nop                           #  75    0xfadf3  1      OPC=1343  
  nop                           #  76    0xfadf4  1      OPC=1343  
  nop                           #  77    0xfadf5  1      OPC=1343  
  nop                           #  78    0xfadf6  1      OPC=1343  
  nop                           #  79    0xfadf7  1      OPC=1343  
  nop                           #  80    0xfadf8  1      OPC=1343  
  nop                           #  81    0xfadf9  1      OPC=1343  
  nop                           #  82    0xfadfa  1      OPC=1343  
  nop                           #  83    0xfadfb  1      OPC=1343  
  nop                           #  84    0xfadfc  1      OPC=1343  
  nop                           #  85    0xfadfd  1      OPC=1343  
  nop                           #  86    0xfadfe  1      OPC=1343  
  nop                           #  87    0xfadff  1      OPC=1343  
  nop                           #  88    0xfae00  1      OPC=1343  
  nop                           #  89    0xfae01  1      OPC=1343  
  nop                           #  90    0xfae02  1      OPC=1343  
  nop                           #  91    0xfae03  1      OPC=1343  
  nop                           #  92    0xfae04  1      OPC=1343  
  nop                           #  93    0xfae05  1      OPC=1343  
  nop                           #  94    0xfae06  1      OPC=1343  
                                                                   
.size _ZNSdD2Ev, .-_ZNSdD2Ev

