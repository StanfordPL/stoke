  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x131540
#! rip-offset  0xf1540
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv:                 #        0xf1540  0      OPC=0     
  pushq %rbx                                                         #  1     0xf1540  1      OPC=1861  
  movl %edi, %ebx                                                    #  2     0xf1541  2      OPC=1157  
  leal 0x4(%rbx), %edi                                               #  3     0xf1543  3      OPC=1066  
  nop                                                                #  4     0xf1546  1      OPC=1343  
  nop                                                                #  5     0xf1547  1      OPC=1343  
  nop                                                                #  6     0xf1548  1      OPC=1343  
  nop                                                                #  7     0xf1549  1      OPC=1343  
  nop                                                                #  8     0xf154a  1      OPC=1343  
  nop                                                                #  9     0xf154b  1      OPC=1343  
  nop                                                                #  10    0xf154c  1      OPC=1343  
  nop                                                                #  11    0xf154d  1      OPC=1343  
  nop                                                                #  12    0xf154e  1      OPC=1343  
  nop                                                                #  13    0xf154f  1      OPC=1343  
  nop                                                                #  14    0xf1550  1      OPC=1343  
  nop                                                                #  15    0xf1551  1      OPC=1343  
  nop                                                                #  16    0xf1552  1      OPC=1343  
  nop                                                                #  17    0xf1553  1      OPC=1343  
  nop                                                                #  18    0xf1554  1      OPC=1343  
  nop                                                                #  19    0xf1555  1      OPC=1343  
  nop                                                                #  20    0xf1556  1      OPC=1343  
  nop                                                                #  21    0xf1557  1      OPC=1343  
  nop                                                                #  22    0xf1558  1      OPC=1343  
  nop                                                                #  23    0xf1559  1      OPC=1343  
  nop                                                                #  24    0xf155a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf155b  5      OPC=260   
  testl %eax, %eax                                                   #  26    0xf1560  2      OPC=2436  
  je .L_f1580                                                        #  27    0xf1562  6      OPC=893   
  nop                                                                #  28    0xf1568  1      OPC=1343  
  nop                                                                #  29    0xf1569  1      OPC=1343  
  popq %rbx                                                          #  30    0xf156a  1      OPC=1694  
  popq %r11                                                          #  31    0xf156b  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  32    0xf156d  7      OPC=131   
  nop                                                                #  33    0xf1574  1      OPC=1343  
  nop                                                                #  34    0xf1575  1      OPC=1343  
  nop                                                                #  35    0xf1576  1      OPC=1343  
  nop                                                                #  36    0xf1577  1      OPC=1343  
  addq %r15, %r11                                                    #  37    0xf1578  3      OPC=72    
  jmpq %r11                                                          #  38    0xf157b  3      OPC=928   
  nop                                                                #  39    0xf157e  1      OPC=1343  
  nop                                                                #  40    0xf157f  1      OPC=1343  
  nop                                                                #  41    0xf1580  1      OPC=1343  
  nop                                                                #  42    0xf1581  1      OPC=1343  
  nop                                                                #  43    0xf1582  1      OPC=1343  
  nop                                                                #  44    0xf1583  1      OPC=1343  
  nop                                                                #  45    0xf1584  1      OPC=1343  
  nop                                                                #  46    0xf1585  1      OPC=1343  
  nop                                                                #  47    0xf1586  1      OPC=1343  
  nop                                                                #  48    0xf1587  1      OPC=1343  
  nop                                                                #  49    0xf1588  1      OPC=1343  
  nop                                                                #  50    0xf1589  1      OPC=1343  
  nop                                                                #  51    0xf158a  1      OPC=1343  
  nop                                                                #  52    0xf158b  1      OPC=1343  
  nop                                                                #  53    0xf158c  1      OPC=1343  
.L_f1580:                                                            #        0xf158d  0      OPC=0     
  movl %ebx, %ebx                                                    #  54    0xf158d  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  55    0xf158f  4      OPC=1156  
  subl $0xc, %eax                                                    #  56    0xf1593  3      OPC=2384  
  movl %eax, %eax                                                    #  57    0xf1596  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  58    0xf1598  4      OPC=1156  
  addl %ebx, %edi                                                    #  59    0xf159c  2      OPC=67    
  movl %edi, %edi                                                    #  60    0xf159e  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  61    0xf15a0  5      OPC=1156  
  popq %rbx                                                          #  62    0xf15a5  1      OPC=1694  
  orl $0x4, %esi                                                     #  63    0xf15a6  3      OPC=1378  
  nop                                                                #  64    0xf15a9  1      OPC=1343  
  nop                                                                #  65    0xf15aa  1      OPC=1343  
  nop                                                                #  66    0xf15ab  1      OPC=1343  
  nop                                                                #  67    0xf15ac  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  68    0xf15ad  5      OPC=930   
  nop                                                                #  69    0xf15b2  1      OPC=1343  
  nop                                                                #  70    0xf15b3  1      OPC=1343  
  nop                                                                #  71    0xf15b4  1      OPC=1343  
  nop                                                                #  72    0xf15b5  1      OPC=1343  
  nop                                                                #  73    0xf15b6  1      OPC=1343  
  nop                                                                #  74    0xf15b7  1      OPC=1343  
  nop                                                                #  75    0xf15b8  1      OPC=1343  
  nop                                                                #  76    0xf15b9  1      OPC=1343  
  nop                                                                #  77    0xf15ba  1      OPC=1343  
  nop                                                                #  78    0xf15bb  1      OPC=1343  
  nop                                                                #  79    0xf15bc  1      OPC=1343  
  nop                                                                #  80    0xf15bd  1      OPC=1343  
  nop                                                                #  81    0xf15be  1      OPC=1343  
  nop                                                                #  82    0xf15bf  1      OPC=1343  
  nop                                                                #  83    0xf15c0  1      OPC=1343  
  nop                                                                #  84    0xf15c1  1      OPC=1343  
  nop                                                                #  85    0xf15c2  1      OPC=1343  
  nop                                                                #  86    0xf15c3  1      OPC=1343  
  nop                                                                #  87    0xf15c4  1      OPC=1343  
  nop                                                                #  88    0xf15c5  1      OPC=1343  
  nop                                                                #  89    0xf15c6  1      OPC=1343  
  nop                                                                #  90    0xf15c7  1      OPC=1343  
  nop                                                                #  91    0xf15c8  1      OPC=1343  
  nop                                                                #  92    0xf15c9  1      OPC=1343  
  nop                                                                #  93    0xf15ca  1      OPC=1343  
  nop                                                                #  94    0xf15cb  1      OPC=1343  
  nop                                                                #  95    0xf15cc  1      OPC=1343  
                                                                                                        
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv

