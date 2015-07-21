  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x1315c0
#! rip-offset  0xf15c0
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv:                 #        0xf15c0  0      OPC=0     
  pushq %rbx                                                         #  1     0xf15c0  1      OPC=1861  
  movl %edi, %ebx                                                    #  2     0xf15c1  2      OPC=1157  
  leal 0x8(%rbx), %edi                                               #  3     0xf15c3  3      OPC=1066  
  nop                                                                #  4     0xf15c6  1      OPC=1343  
  nop                                                                #  5     0xf15c7  1      OPC=1343  
  nop                                                                #  6     0xf15c8  1      OPC=1343  
  nop                                                                #  7     0xf15c9  1      OPC=1343  
  nop                                                                #  8     0xf15ca  1      OPC=1343  
  nop                                                                #  9     0xf15cb  1      OPC=1343  
  nop                                                                #  10    0xf15cc  1      OPC=1343  
  nop                                                                #  11    0xf15cd  1      OPC=1343  
  nop                                                                #  12    0xf15ce  1      OPC=1343  
  nop                                                                #  13    0xf15cf  1      OPC=1343  
  nop                                                                #  14    0xf15d0  1      OPC=1343  
  nop                                                                #  15    0xf15d1  1      OPC=1343  
  nop                                                                #  16    0xf15d2  1      OPC=1343  
  nop                                                                #  17    0xf15d3  1      OPC=1343  
  nop                                                                #  18    0xf15d4  1      OPC=1343  
  nop                                                                #  19    0xf15d5  1      OPC=1343  
  nop                                                                #  20    0xf15d6  1      OPC=1343  
  nop                                                                #  21    0xf15d7  1      OPC=1343  
  nop                                                                #  22    0xf15d8  1      OPC=1343  
  nop                                                                #  23    0xf15d9  1      OPC=1343  
  nop                                                                #  24    0xf15da  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf15db  5      OPC=260   
  testl %eax, %eax                                                   #  26    0xf15e0  2      OPC=2436  
  je .L_f1600                                                        #  27    0xf15e2  6      OPC=893   
  nop                                                                #  28    0xf15e8  1      OPC=1343  
  nop                                                                #  29    0xf15e9  1      OPC=1343  
  popq %rbx                                                          #  30    0xf15ea  1      OPC=1694  
  popq %r11                                                          #  31    0xf15eb  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  32    0xf15ed  7      OPC=131   
  nop                                                                #  33    0xf15f4  1      OPC=1343  
  nop                                                                #  34    0xf15f5  1      OPC=1343  
  nop                                                                #  35    0xf15f6  1      OPC=1343  
  nop                                                                #  36    0xf15f7  1      OPC=1343  
  addq %r15, %r11                                                    #  37    0xf15f8  3      OPC=72    
  jmpq %r11                                                          #  38    0xf15fb  3      OPC=928   
  nop                                                                #  39    0xf15fe  1      OPC=1343  
  nop                                                                #  40    0xf15ff  1      OPC=1343  
  nop                                                                #  41    0xf1600  1      OPC=1343  
  nop                                                                #  42    0xf1601  1      OPC=1343  
  nop                                                                #  43    0xf1602  1      OPC=1343  
  nop                                                                #  44    0xf1603  1      OPC=1343  
  nop                                                                #  45    0xf1604  1      OPC=1343  
  nop                                                                #  46    0xf1605  1      OPC=1343  
  nop                                                                #  47    0xf1606  1      OPC=1343  
  nop                                                                #  48    0xf1607  1      OPC=1343  
  nop                                                                #  49    0xf1608  1      OPC=1343  
  nop                                                                #  50    0xf1609  1      OPC=1343  
  nop                                                                #  51    0xf160a  1      OPC=1343  
  nop                                                                #  52    0xf160b  1      OPC=1343  
  nop                                                                #  53    0xf160c  1      OPC=1343  
.L_f1600:                                                            #        0xf160d  0      OPC=0     
  movl %ebx, %ebx                                                    #  54    0xf160d  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  55    0xf160f  4      OPC=1156  
  subl $0xc, %eax                                                    #  56    0xf1613  3      OPC=2384  
  movl %eax, %eax                                                    #  57    0xf1616  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  58    0xf1618  4      OPC=1156  
  addl %ebx, %edi                                                    #  59    0xf161c  2      OPC=67    
  movl %edi, %edi                                                    #  60    0xf161e  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  61    0xf1620  5      OPC=1156  
  popq %rbx                                                          #  62    0xf1625  1      OPC=1694  
  orl $0x4, %esi                                                     #  63    0xf1626  3      OPC=1378  
  nop                                                                #  64    0xf1629  1      OPC=1343  
  nop                                                                #  65    0xf162a  1      OPC=1343  
  nop                                                                #  66    0xf162b  1      OPC=1343  
  nop                                                                #  67    0xf162c  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  68    0xf162d  5      OPC=930   
  nop                                                                #  69    0xf1632  1      OPC=1343  
  nop                                                                #  70    0xf1633  1      OPC=1343  
  nop                                                                #  71    0xf1634  1      OPC=1343  
  nop                                                                #  72    0xf1635  1      OPC=1343  
  nop                                                                #  73    0xf1636  1      OPC=1343  
  nop                                                                #  74    0xf1637  1      OPC=1343  
  nop                                                                #  75    0xf1638  1      OPC=1343  
  nop                                                                #  76    0xf1639  1      OPC=1343  
  nop                                                                #  77    0xf163a  1      OPC=1343  
  nop                                                                #  78    0xf163b  1      OPC=1343  
  nop                                                                #  79    0xf163c  1      OPC=1343  
  nop                                                                #  80    0xf163d  1      OPC=1343  
  nop                                                                #  81    0xf163e  1      OPC=1343  
  nop                                                                #  82    0xf163f  1      OPC=1343  
  nop                                                                #  83    0xf1640  1      OPC=1343  
  nop                                                                #  84    0xf1641  1      OPC=1343  
  nop                                                                #  85    0xf1642  1      OPC=1343  
  nop                                                                #  86    0xf1643  1      OPC=1343  
  nop                                                                #  87    0xf1644  1      OPC=1343  
  nop                                                                #  88    0xf1645  1      OPC=1343  
  nop                                                                #  89    0xf1646  1      OPC=1343  
  nop                                                                #  90    0xf1647  1      OPC=1343  
  nop                                                                #  91    0xf1648  1      OPC=1343  
  nop                                                                #  92    0xf1649  1      OPC=1343  
  nop                                                                #  93    0xf164a  1      OPC=1343  
  nop                                                                #  94    0xf164b  1      OPC=1343  
  nop                                                                #  95    0xf164c  1      OPC=1343  
                                                                                                        
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv

