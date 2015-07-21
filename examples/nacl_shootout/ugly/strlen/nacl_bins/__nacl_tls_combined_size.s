  .text
  .globl __nacl_tls_combined_size
  .type __nacl_tls_combined_size, @function

#! file-offset 0x1586e0
#! rip-offset  0x1186e0
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.__nacl_tls_combined_size:     #        0x1186e0  0      OPC=0     
  pushq %rbx                   #  1     0x1186e0  1      OPC=1861  
  movl %edi, %ebx              #  2     0x1186e1  2      OPC=1157  
  nop                          #  3     0x1186e3  1      OPC=1343  
  nop                          #  4     0x1186e4  1      OPC=1343  
  nop                          #  5     0x1186e5  1      OPC=1343  
  nop                          #  6     0x1186e6  1      OPC=1343  
  nop                          #  7     0x1186e7  1      OPC=1343  
  nop                          #  8     0x1186e8  1      OPC=1343  
  nop                          #  9     0x1186e9  1      OPC=1343  
  nop                          #  10    0x1186ea  1      OPC=1343  
  nop                          #  11    0x1186eb  1      OPC=1343  
  nop                          #  12    0x1186ec  1      OPC=1343  
  nop                          #  13    0x1186ed  1      OPC=1343  
  nop                          #  14    0x1186ee  1      OPC=1343  
  nop                          #  15    0x1186ef  1      OPC=1343  
  nop                          #  16    0x1186f0  1      OPC=1343  
  nop                          #  17    0x1186f1  1      OPC=1343  
  nop                          #  18    0x1186f2  1      OPC=1343  
  nop                          #  19    0x1186f3  1      OPC=1343  
  nop                          #  20    0x1186f4  1      OPC=1343  
  nop                          #  21    0x1186f5  1      OPC=1343  
  nop                          #  22    0x1186f6  1      OPC=1343  
  nop                          #  23    0x1186f7  1      OPC=1343  
  nop                          #  24    0x1186f8  1      OPC=1343  
  nop                          #  25    0x1186f9  1      OPC=1343  
  nop                          #  26    0x1186fa  1      OPC=1343  
  callq .get_tls_info          #  27    0x1186fb  5      OPC=260   
  movl %eax, %eax              #  28    0x118700  2      OPC=1157  
  movl %eax, %eax              #  29    0x118702  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %edx  #  30    0x118704  5      OPC=1156  
  movl %eax, %eax              #  31    0x118709  2      OPC=1157  
  movl 0xc(%r15,%rax,1), %ecx  #  32    0x11870b  5      OPC=1156  
  movl %eax, %eax              #  33    0x118710  2      OPC=1157  
  addl 0x4(%r15,%rax,1), %edx  #  34    0x118712  5      OPC=66    
  leal -0x1(%rcx), %esi        #  35    0x118717  3      OPC=1066  
  movl %edx, %edi              #  36    0x11871a  2      OPC=1157  
  leal (%rsi,%rdx,1), %edx     #  37    0x11871c  3      OPC=1066  
  nop                          #  38    0x11871f  1      OPC=1343  
  negl %edi                    #  39    0x118720  2      OPC=1339  
  testl %edi, %edi             #  40    0x118722  2      OPC=2436  
  leal (%rdx,%rbx,1), %eax     #  41    0x118724  3      OPC=1066  
  jle .L_118740                #  42    0x118727  6      OPC=919   
  nop                          #  43    0x11872d  1      OPC=1343  
  nop                          #  44    0x11872e  1      OPC=1343  
  leal (%rdi,%rsi,1), %edx     #  45    0x11872f  3      OPC=1066  
  negl %ecx                    #  46    0x118732  2      OPC=1339  
  andl %ecx, %edx              #  47    0x118734  2      OPC=134   
  addl %edx, %eax              #  48    0x118736  2      OPC=67    
  nop                          #  49    0x118738  1      OPC=1343  
  nop                          #  50    0x118739  1      OPC=1343  
  nop                          #  51    0x11873a  1      OPC=1343  
  nop                          #  52    0x11873b  1      OPC=1343  
  nop                          #  53    0x11873c  1      OPC=1343  
  nop                          #  54    0x11873d  1      OPC=1343  
  nop                          #  55    0x11873e  1      OPC=1343  
  nop                          #  56    0x11873f  1      OPC=1343  
  nop                          #  57    0x118740  1      OPC=1343  
  nop                          #  58    0x118741  1      OPC=1343  
  nop                          #  59    0x118742  1      OPC=1343  
  nop                          #  60    0x118743  1      OPC=1343  
  nop                          #  61    0x118744  1      OPC=1343  
  nop                          #  62    0x118745  1      OPC=1343  
.L_118740:                     #        0x118746  0      OPC=0     
  popq %rbx                    #  63    0x118746  1      OPC=1694  
  popq %r11                    #  64    0x118747  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  65    0x118749  7      OPC=131   
  nop                          #  66    0x118750  1      OPC=1343  
  nop                          #  67    0x118751  1      OPC=1343  
  nop                          #  68    0x118752  1      OPC=1343  
  nop                          #  69    0x118753  1      OPC=1343  
  addq %r15, %r11              #  70    0x118754  3      OPC=72    
  jmpq %r11                    #  71    0x118757  3      OPC=928   
  nop                          #  72    0x11875a  1      OPC=1343  
  nop                          #  73    0x11875b  1      OPC=1343  
  nop                          #  74    0x11875c  1      OPC=1343  
  nop                          #  75    0x11875d  1      OPC=1343  
  nop                          #  76    0x11875e  1      OPC=1343  
  nop                          #  77    0x11875f  1      OPC=1343  
  nop                          #  78    0x118760  1      OPC=1343  
  nop                          #  79    0x118761  1      OPC=1343  
  nop                          #  80    0x118762  1      OPC=1343  
  nop                          #  81    0x118763  1      OPC=1343  
  nop                          #  82    0x118764  1      OPC=1343  
  nop                          #  83    0x118765  1      OPC=1343  
  nop                          #  84    0x118766  1      OPC=1343  
  nop                          #  85    0x118767  1      OPC=1343  
  nop                          #  86    0x118768  1      OPC=1343  
  nop                          #  87    0x118769  1      OPC=1343  
  nop                          #  88    0x11876a  1      OPC=1343  
  nop                          #  89    0x11876b  1      OPC=1343  
  nop                          #  90    0x11876c  1      OPC=1343  
                                                                   
.size __nacl_tls_combined_size, .-__nacl_tls_combined_size

