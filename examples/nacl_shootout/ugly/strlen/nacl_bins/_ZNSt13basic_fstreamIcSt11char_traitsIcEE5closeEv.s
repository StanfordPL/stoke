  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x1314c0
#! rip-offset  0xf14c0
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv:                  #        0xf14c0  0      OPC=0     
  pushq %rbx                                                         #  1     0xf14c0  1      OPC=1861  
  movl %edi, %ebx                                                    #  2     0xf14c1  2      OPC=1157  
  leal 0xc(%rbx), %edi                                               #  3     0xf14c3  3      OPC=1066  
  nop                                                                #  4     0xf14c6  1      OPC=1343  
  nop                                                                #  5     0xf14c7  1      OPC=1343  
  nop                                                                #  6     0xf14c8  1      OPC=1343  
  nop                                                                #  7     0xf14c9  1      OPC=1343  
  nop                                                                #  8     0xf14ca  1      OPC=1343  
  nop                                                                #  9     0xf14cb  1      OPC=1343  
  nop                                                                #  10    0xf14cc  1      OPC=1343  
  nop                                                                #  11    0xf14cd  1      OPC=1343  
  nop                                                                #  12    0xf14ce  1      OPC=1343  
  nop                                                                #  13    0xf14cf  1      OPC=1343  
  nop                                                                #  14    0xf14d0  1      OPC=1343  
  nop                                                                #  15    0xf14d1  1      OPC=1343  
  nop                                                                #  16    0xf14d2  1      OPC=1343  
  nop                                                                #  17    0xf14d3  1      OPC=1343  
  nop                                                                #  18    0xf14d4  1      OPC=1343  
  nop                                                                #  19    0xf14d5  1      OPC=1343  
  nop                                                                #  20    0xf14d6  1      OPC=1343  
  nop                                                                #  21    0xf14d7  1      OPC=1343  
  nop                                                                #  22    0xf14d8  1      OPC=1343  
  nop                                                                #  23    0xf14d9  1      OPC=1343  
  nop                                                                #  24    0xf14da  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf14db  5      OPC=260   
  testl %eax, %eax                                                   #  26    0xf14e0  2      OPC=2436  
  je .L_f1500                                                        #  27    0xf14e2  6      OPC=893   
  nop                                                                #  28    0xf14e8  1      OPC=1343  
  nop                                                                #  29    0xf14e9  1      OPC=1343  
  popq %rbx                                                          #  30    0xf14ea  1      OPC=1694  
  popq %r11                                                          #  31    0xf14eb  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  32    0xf14ed  7      OPC=131   
  nop                                                                #  33    0xf14f4  1      OPC=1343  
  nop                                                                #  34    0xf14f5  1      OPC=1343  
  nop                                                                #  35    0xf14f6  1      OPC=1343  
  nop                                                                #  36    0xf14f7  1      OPC=1343  
  addq %r15, %r11                                                    #  37    0xf14f8  3      OPC=72    
  jmpq %r11                                                          #  38    0xf14fb  3      OPC=928   
  nop                                                                #  39    0xf14fe  1      OPC=1343  
  nop                                                                #  40    0xf14ff  1      OPC=1343  
  nop                                                                #  41    0xf1500  1      OPC=1343  
  nop                                                                #  42    0xf1501  1      OPC=1343  
  nop                                                                #  43    0xf1502  1      OPC=1343  
  nop                                                                #  44    0xf1503  1      OPC=1343  
  nop                                                                #  45    0xf1504  1      OPC=1343  
  nop                                                                #  46    0xf1505  1      OPC=1343  
  nop                                                                #  47    0xf1506  1      OPC=1343  
  nop                                                                #  48    0xf1507  1      OPC=1343  
  nop                                                                #  49    0xf1508  1      OPC=1343  
  nop                                                                #  50    0xf1509  1      OPC=1343  
  nop                                                                #  51    0xf150a  1      OPC=1343  
  nop                                                                #  52    0xf150b  1      OPC=1343  
  nop                                                                #  53    0xf150c  1      OPC=1343  
.L_f1500:                                                            #        0xf150d  0      OPC=0     
  movl %ebx, %ebx                                                    #  54    0xf150d  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  55    0xf150f  4      OPC=1156  
  subl $0xc, %eax                                                    #  56    0xf1513  3      OPC=2384  
  movl %eax, %eax                                                    #  57    0xf1516  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  58    0xf1518  4      OPC=1156  
  addl %ebx, %edi                                                    #  59    0xf151c  2      OPC=67    
  movl %edi, %edi                                                    #  60    0xf151e  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  61    0xf1520  5      OPC=1156  
  popq %rbx                                                          #  62    0xf1525  1      OPC=1694  
  orl $0x4, %esi                                                     #  63    0xf1526  3      OPC=1378  
  nop                                                                #  64    0xf1529  1      OPC=1343  
  nop                                                                #  65    0xf152a  1      OPC=1343  
  nop                                                                #  66    0xf152b  1      OPC=1343  
  nop                                                                #  67    0xf152c  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  68    0xf152d  5      OPC=930   
  nop                                                                #  69    0xf1532  1      OPC=1343  
  nop                                                                #  70    0xf1533  1      OPC=1343  
  nop                                                                #  71    0xf1534  1      OPC=1343  
  nop                                                                #  72    0xf1535  1      OPC=1343  
  nop                                                                #  73    0xf1536  1      OPC=1343  
  nop                                                                #  74    0xf1537  1      OPC=1343  
  nop                                                                #  75    0xf1538  1      OPC=1343  
  nop                                                                #  76    0xf1539  1      OPC=1343  
  nop                                                                #  77    0xf153a  1      OPC=1343  
  nop                                                                #  78    0xf153b  1      OPC=1343  
  nop                                                                #  79    0xf153c  1      OPC=1343  
  nop                                                                #  80    0xf153d  1      OPC=1343  
  nop                                                                #  81    0xf153e  1      OPC=1343  
  nop                                                                #  82    0xf153f  1      OPC=1343  
  nop                                                                #  83    0xf1540  1      OPC=1343  
  nop                                                                #  84    0xf1541  1      OPC=1343  
  nop                                                                #  85    0xf1542  1      OPC=1343  
  nop                                                                #  86    0xf1543  1      OPC=1343  
  nop                                                                #  87    0xf1544  1      OPC=1343  
  nop                                                                #  88    0xf1545  1      OPC=1343  
  nop                                                                #  89    0xf1546  1      OPC=1343  
  nop                                                                #  90    0xf1547  1      OPC=1343  
  nop                                                                #  91    0xf1548  1      OPC=1343  
  nop                                                                #  92    0xf1549  1      OPC=1343  
  nop                                                                #  93    0xf154a  1      OPC=1343  
  nop                                                                #  94    0xf154b  1      OPC=1343  
  nop                                                                #  95    0xf154c  1      OPC=1343  
                                                                                                        
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv

