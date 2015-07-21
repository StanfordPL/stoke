  .text
  .globl _ZNSs6rbeginEv
  .type _ZNSs6rbeginEv, @function

#! file-offset 0xee800
#! rip-offset  0xae800
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNSs6rbeginEv:                #        0xae800  0      OPC=0     
  movq %rbx, -0x10(%rsp)        #  1     0xae800  5      OPC=1138  
  movl %esi, %ebx               #  2     0xae805  2      OPC=1157  
  movq %r12, -0x8(%rsp)         #  3     0xae807  5      OPC=1138  
  subl $0x18, %esp              #  4     0xae80c  3      OPC=2384  
  addq %r15, %rsp               #  5     0xae80f  3      OPC=72    
  movl %ebx, %ebx               #  6     0xae812  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  7     0xae814  4      OPC=1156  
  movl %edi, %r12d              #  8     0xae818  3      OPC=1157  
  leal -0xc(%rax), %edx         #  9     0xae81b  3      OPC=1066  
  xchgw %ax, %ax                #  10    0xae81e  2      OPC=3700  
  movl %edx, %edx               #  11    0xae820  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %esi   #  12    0xae822  5      OPC=1156  
  testl %esi, %esi              #  13    0xae827  2      OPC=2436  
  js .L_ae860                   #  14    0xae829  6      OPC=1043  
  nop                           #  15    0xae82f  1      OPC=1343  
  nop                           #  16    0xae830  1      OPC=1343  
  movl %ebx, %edi               #  17    0xae831  2      OPC=1157  
  nop                           #  18    0xae833  1      OPC=1343  
  nop                           #  19    0xae834  1      OPC=1343  
  nop                           #  20    0xae835  1      OPC=1343  
  nop                           #  21    0xae836  1      OPC=1343  
  nop                           #  22    0xae837  1      OPC=1343  
  nop                           #  23    0xae838  1      OPC=1343  
  nop                           #  24    0xae839  1      OPC=1343  
  nop                           #  25    0xae83a  1      OPC=1343  
  nop                           #  26    0xae83b  1      OPC=1343  
  nop                           #  27    0xae83c  1      OPC=1343  
  nop                           #  28    0xae83d  1      OPC=1343  
  nop                           #  29    0xae83e  1      OPC=1343  
  nop                           #  30    0xae83f  1      OPC=1343  
  nop                           #  31    0xae840  1      OPC=1343  
  callq ._ZNSs12_M_leak_hardEv  #  32    0xae841  5      OPC=260   
  movl %ebx, %ebx               #  33    0xae846  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  34    0xae848  4      OPC=1156  
  leal -0xc(%rax), %edx         #  35    0xae84c  3      OPC=1066  
  nop                           #  36    0xae84f  1      OPC=1343  
  nop                           #  37    0xae850  1      OPC=1343  
  nop                           #  38    0xae851  1      OPC=1343  
  nop                           #  39    0xae852  1      OPC=1343  
  nop                           #  40    0xae853  1      OPC=1343  
  nop                           #  41    0xae854  1      OPC=1343  
  nop                           #  42    0xae855  1      OPC=1343  
  nop                           #  43    0xae856  1      OPC=1343  
  nop                           #  44    0xae857  1      OPC=1343  
  nop                           #  45    0xae858  1      OPC=1343  
  nop                           #  46    0xae859  1      OPC=1343  
  nop                           #  47    0xae85a  1      OPC=1343  
  nop                           #  48    0xae85b  1      OPC=1343  
  nop                           #  49    0xae85c  1      OPC=1343  
  nop                           #  50    0xae85d  1      OPC=1343  
  nop                           #  51    0xae85e  1      OPC=1343  
  nop                           #  52    0xae85f  1      OPC=1343  
  nop                           #  53    0xae860  1      OPC=1343  
  nop                           #  54    0xae861  1      OPC=1343  
  nop                           #  55    0xae862  1      OPC=1343  
  nop                           #  56    0xae863  1      OPC=1343  
  nop                           #  57    0xae864  1      OPC=1343  
  nop                           #  58    0xae865  1      OPC=1343  
.L_ae860:                       #        0xae866  0      OPC=0     
  movl %edx, %edx               #  59    0xae866  2      OPC=1157  
  addl (%r15,%rdx,1), %eax      #  60    0xae868  4      OPC=66    
  movq 0x8(%rsp), %rbx          #  61    0xae86c  5      OPC=1161  
  movl %r12d, %r12d             #  62    0xae871  3      OPC=1157  
  movl %eax, (%r15,%r12,1)      #  63    0xae874  4      OPC=1136  
  movl %r12d, %eax              #  64    0xae878  3      OPC=1157  
  movq 0x10(%rsp), %r12         #  65    0xae87b  5      OPC=1161  
  addl $0x18, %esp              #  66    0xae880  3      OPC=65    
  addq %r15, %rsp               #  67    0xae883  3      OPC=72    
  popq %r11                     #  68    0xae886  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  69    0xae888  7      OPC=131   
  nop                           #  70    0xae88f  1      OPC=1343  
  nop                           #  71    0xae890  1      OPC=1343  
  nop                           #  72    0xae891  1      OPC=1343  
  nop                           #  73    0xae892  1      OPC=1343  
  addq %r15, %r11               #  74    0xae893  3      OPC=72    
  jmpq %r11                     #  75    0xae896  3      OPC=928   
  nop                           #  76    0xae899  1      OPC=1343  
  nop                           #  77    0xae89a  1      OPC=1343  
  nop                           #  78    0xae89b  1      OPC=1343  
  nop                           #  79    0xae89c  1      OPC=1343  
  nop                           #  80    0xae89d  1      OPC=1343  
  nop                           #  81    0xae89e  1      OPC=1343  
  nop                           #  82    0xae89f  1      OPC=1343  
  nop                           #  83    0xae8a0  1      OPC=1343  
  nop                           #  84    0xae8a1  1      OPC=1343  
  nop                           #  85    0xae8a2  1      OPC=1343  
  nop                           #  86    0xae8a3  1      OPC=1343  
  nop                           #  87    0xae8a4  1      OPC=1343  
  nop                           #  88    0xae8a5  1      OPC=1343  
  nop                           #  89    0xae8a6  1      OPC=1343  
  nop                           #  90    0xae8a7  1      OPC=1343  
  nop                           #  91    0xae8a8  1      OPC=1343  
  nop                           #  92    0xae8a9  1      OPC=1343  
  nop                           #  93    0xae8aa  1      OPC=1343  
  nop                           #  94    0xae8ab  1      OPC=1343  
  nop                           #  95    0xae8ac  1      OPC=1343  
                                                                   
.size _ZNSs6rbeginEv, .-_ZNSs6rbeginEv

